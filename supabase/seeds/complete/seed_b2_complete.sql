-- ============================================================================
-- COMPLETE CURRICULUM SEED — Level B2 (Upper Intermediate)
-- Generated for 6 modules, 28 lessons
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Level: B2 — Upper Intermediate
  insert into public.course_levels (id, title, description, image_url, color, order_index)
  values ('B2', 'Upper Intermediate', 'Speak fluently and spontaneously. Discuss complex topics, argue positions, and understand detailed texts.', NULL, 'from-purple-500 to-violet-600', 4)
  on conflict (id) do nothing;

  -- Module 1: Berufliche Kommunikation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f3e', 'B2', 'Berufliche Kommunikation', 'Professional communication: meetings, emails, negotiations, and presentations.', '["Lead and participate in meetings","Write professional emails and reports","Use Passiv with modal verbs","Use Konjunktiv II für höfliche Bitten","Handle negotiations in German"]', 1, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Büro und Arbeitsplatz (L-B2-01-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd1', '00000000-0000-4000-a000-000039c35f3e', 'Büro und Arbeitsplatz', 'Advanced office and workplace vocabulary.', 'Office & Workplace', 'vocabulary', '["Understand and use 71 key vocabulary words about Office & Workplace","Apply present_tense correctly in sentences","Read and comprehend a text about Office & Workplace","Listen and understand a natural dialogue about Office & Workplace","Speak about Office & Workplace with confidence","Write a short text about Office & Workplace using new vocabulary"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd1', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd1', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd1', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd1', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd1', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd1', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd1', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'Welches deutsche Wort bedeutet "economy"?', '["die Aktie","das Unternehmen","die Bilanz","der Umsatz"]', 'die Wirtschaft', '"economy" = "die Wirtschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'Welches deutsche Wort bedeutet "enterprise"?', '["der Umsatz","die Aktie","die Bilanz","die Wirtschaft"]', 'das Unternehmen', '"enterprise" = "das Unternehmen" in German. Article: das Plural: die Unternehmen', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'Welches deutsche Wort bedeutet "share"?', '["die Aktie","das Unternehmen","die Wirtschaft","der Umsatz"]', 'die Aktie', '"share" = "die Aktie" in German. Article: die Plural: die Aktien', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'Welches deutsche Wort bedeutet "revenue"?', '["der Umsatz","die Wirtschaft","die Aktie","die Bilanz"]', 'der Umsatz', '"revenue" = "der Umsatz" in German. Article: der Plural: die Umsätze', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'Welches deutsche Wort bedeutet "balance sheet"?', '["die Bilanz","die Wirtschaft","das Unternehmen","die Aktie"]', 'die Bilanz', '"balance sheet" = "die Bilanz" in German. Article: die Plural: die Bilanzen', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd1', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Office & Workplace. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd1', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Office & Workplace."', '["Ich lerne über Office & Workplace.","Ich lerne Office & Workplace.","Lerne ich Office & Workplace."]', 'Ich lerne über Office & Workplace.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000025fadd1', 'matching', 'Match: Which word pairs are correct?', '["die Wirtschaft - economy, das Unternehmen - enterprise"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'Was bedeutet "die Wirtschaft" auf Deutsch?', '["economy","to run","beautiful","yesterday"]', 'economy', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'Welcher Artikel gehört zu "das Unternehmen"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd1', 'true_false', 'Das Wort "die Aktie" gehört zum Thema Office & Workplace.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd1', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd1', 'fill_blank', 'Complete: Ich ___ (revenue) Deutsch.', '["der Umsatz","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'Wie lautet das deutsche Wort für "balance sheet"?', '["die Bilanz","investieren","der Markt","die Messe"]', 'die Bilanz', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd1', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd1', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd1', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd1', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000025fadd1', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000025fadd1', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000025fadd1', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000025fadd1', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000025fadd1', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000025fadd1', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000025fadd1', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000025fadd1', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000025fadd1', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000025fadd1', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000025fadd1', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000025fadd1', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000025fadd1', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000025fadd1', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000025fadd1', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000025fadd1', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000025fadd1', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Büro und Arbeitsplatz — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Büro und Arbeitsplatz — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', '🔊 Sprechen: Büro und Arbeitsplatz', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Office & Workplace with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Office & Workplace', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', '✏️ Schreiben: Büro und Arbeitsplatz', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Office & Workplace". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Büro und Arbeitsplatz — Roleplay', 'Office & Workplace', 'Student', 'Teacher', 'Practice conversation about Office & Workplace', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Büro und Arbeitsplatz — Advanced Roleplay', 'Office & Workplace', 'Customer', 'Assistant', 'Extended conversation about Office & Workplace', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Büro und Arbeitsplatz — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Büro und Arbeitsplatz".', 'Creative practice for Office & Workplace', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', '📚 Hausaufgabe: Büro und Arbeitsplatz', 'Complete these tasks to reinforce "Büro und Arbeitsplatz".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Office & Workplace: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Office & Workplace. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd1', '🎯 Excellent progress! This lesson covered Office & Workplace (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of business. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Office & Workplace","present_tense — grammar explanation and practice","Reading comprehension: text about Office & Workplace","Listening comprehension: dialogue about Office & Workplace","Speaking practice: roleplay/discussion about Office & Workplace","Writing task: text about Office & Workplace"]', '[{"title":"Büro und Arbeitsplatz Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wirtschaft (economy)','das Unternehmen (enterprise)','die Aktie (share)','der Umsatz (revenue)','die Bilanz (balance sheet)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Office & Workplace for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'translation', 'Translate to German: "I use the word "economy" in a sentence about Office & Workplace."', '[]', 'Die deutsche Wirtschaft ist stark.', 'Use die  "die Wirtschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'translation', 'Translate to German: "I use the word "enterprise" in a sentence about Office & Workplace."', '[]', 'Das Unternehmen wächst schnell.', 'Use das  "das Unternehmen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'translation', 'Translate to German: "I use the word "share" in a sentence about Office & Workplace."', '[]', 'Die Aktie steigt.', 'Use die  "die Aktie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Culture: 🇩🇪 Deutsche Kultur: Office & Workplace', 'Office & Workplace in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Office & Workplace in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Office & Workplace في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Geschäftskorrespondenz (L-B2-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd2', '00000000-0000-4000-a000-000039c35f3e', 'Geschäftskorrespondenz', 'Write professional emails and letters.', 'Business Correspondence', 'writing', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd2', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd2', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd2', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd2', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd2', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd2', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd2', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'Welches deutsche Wort bedeutet "economy"?', '["der Umsatz","die Aktie","das Unternehmen","die Wirtschaft"]', 'die Wirtschaft', '"economy" = "die Wirtschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'Welches deutsche Wort bedeutet "enterprise"?', '["das Unternehmen","die Bilanz","der Umsatz","die Aktie"]', 'das Unternehmen', '"enterprise" = "das Unternehmen" in German. Article: das Plural: die Unternehmen', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'Welches deutsche Wort bedeutet "share"?', '["die Wirtschaft","der Umsatz","das Unternehmen","die Bilanz"]', 'die Aktie', '"share" = "die Aktie" in German. Article: die Plural: die Aktien', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'Welches deutsche Wort bedeutet "revenue"?', '["der Umsatz","die Wirtschaft","das Unternehmen","die Bilanz"]', 'der Umsatz', '"revenue" = "der Umsatz" in German. Article: der Plural: die Umsätze', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'Welches deutsche Wort bedeutet "balance sheet"?', '["der Umsatz","die Aktie","das Unternehmen","die Wirtschaft"]', 'die Bilanz', '"balance sheet" = "die Bilanz" in German. Article: die Plural: die Bilanzen', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd2', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern Business Correspondence. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd2', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Business Correspondence."', '["Ich lerne über Business Correspondence.","Ich lerne Business Correspondence.","Lerne ich Business Correspondence."]', 'Ich lerne über Business Correspondence.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000025fadd2', 'matching', 'Match: Which word pairs are correct?', '["die Wirtschaft - economy, das Unternehmen - enterprise"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'Was bedeutet "die Wirtschaft" auf Deutsch?', '["economy","to run","beautiful","yesterday"]', 'economy', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'Welcher Artikel gehört zu "das Unternehmen"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd2', 'true_false', 'Das Wort "die Aktie" gehört zum Thema Business Correspondence.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd2', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd2', 'fill_blank', 'Complete: Ich ___ (revenue) Deutsch.', '["der Umsatz","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'Wie lautet das deutsche Wort für "balance sheet"?', '["die Bilanz","investieren","der Markt","die Messe"]', 'die Bilanz', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd2', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd2', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd2', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd2', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000025fadd2', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000025fadd2', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000025fadd2', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000025fadd2', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000025fadd2', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000025fadd2', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000025fadd2', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000025fadd2', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000025fadd2', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000025fadd2', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000025fadd2', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000025fadd2', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000025fadd2', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000025fadd2', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000025fadd2', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000025fadd2', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000025fadd2', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000025fadd2', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Geschäftskorrespondenz — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Geschäftskorrespondenz — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', '🔊 Sprechen: Geschäftskorrespondenz', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Business Correspondence with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Business Correspondence', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', '✏️ Schreiben: Geschäftskorrespondenz', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Business Correspondence". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Geschäftskorrespondenz — Roleplay', 'Business Correspondence', 'Student', 'Teacher', 'Practice conversation about Business Correspondence', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Geschäftskorrespondenz — Advanced Roleplay', 'Business Correspondence', 'Customer', 'Assistant', 'Extended conversation about Business Correspondence', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Geschäftskorrespondenz — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Geschäftskorrespondenz".', 'Creative practice for Business Correspondence', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', '📚 Hausaufgabe: Geschäftskorrespondenz', 'Complete these tasks to reinforce "Geschäftskorrespondenz".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Business Correspondence: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Business Correspondence. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd2', '🎯 Excellent progress! This lesson covered Business Correspondence (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of business. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Business Correspondence","present_tense — grammar explanation and practice","Reading comprehension: text about Business Correspondence","Listening comprehension: dialogue about Business Correspondence","Speaking practice: roleplay/discussion about Business Correspondence","Writing task: text about Business Correspondence"]', '[{"title":"Geschäftskorrespondenz Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wirtschaft (economy)','das Unternehmen (enterprise)','die Aktie (share)','der Umsatz (revenue)','die Bilanz (balance sheet)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Business Correspondence for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'translation', 'Translate to German: "I use the word "economy" in a sentence about Business Correspondence."', '[]', 'Die deutsche Wirtschaft ist stark.', 'Use die  "die Wirtschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'translation', 'Translate to German: "I use the word "enterprise" in a sentence about Business Correspondence."', '[]', 'Das Unternehmen wächst schnell.', 'Use das  "das Unternehmen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'translation', 'Translate to German: "I use the word "share" in a sentence about Business Correspondence."', '[]', 'Die Aktie steigt.', 'Use die  "die Aktie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Culture: 🇩🇪 Deutsche Kultur: Business Correspondence', 'Business Correspondence in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Business Correspondence in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Business Correspondence في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Passiv mit Modalverben (L-B2-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd3', '00000000-0000-4000-a000-000039c35f3e', 'Passiv mit Modalverben', 'Learn passive voice combined with modal verbs.', 'Passive with Modals', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd3', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd3', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd3', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd3', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd3', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd3', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd3', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'Welches deutsche Wort bedeutet "economy"?', '["die Wirtschaft","das Unternehmen","die Bilanz","der Umsatz"]', 'die Wirtschaft', '"economy" = "die Wirtschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'Welches deutsche Wort bedeutet "enterprise"?', '["die Bilanz","das Unternehmen","die Wirtschaft","die Aktie"]', 'das Unternehmen', '"enterprise" = "das Unternehmen" in German. Article: das Plural: die Unternehmen', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'Welches deutsche Wort bedeutet "share"?', '["das Unternehmen","die Wirtschaft","der Umsatz","die Bilanz"]', 'die Aktie', '"share" = "die Aktie" in German. Article: die Plural: die Aktien', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'Welches deutsche Wort bedeutet "revenue"?', '["die Aktie","der Umsatz","die Wirtschaft","das Unternehmen"]', 'der Umsatz', '"revenue" = "der Umsatz" in German. Article: der Plural: die Umsätze', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'Welches deutsche Wort bedeutet "balance sheet"?', '["der Umsatz","die Wirtschaft","die Aktie","die Bilanz"]', 'die Bilanz', '"balance sheet" = "die Bilanz" in German. Article: die Plural: die Bilanzen', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd3', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Passive with Modals. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd3', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Passive with Modals."', '["Ich lerne über Passive with Modals.","Ich lerne Passive with Modals.","Lerne ich Passive with Modals."]', 'Ich lerne über Passive with Modals.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000025fadd3', 'matching', 'Match: Which word pairs are correct?', '["die Wirtschaft - economy, das Unternehmen - enterprise"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'Was bedeutet "die Wirtschaft" auf Deutsch?', '["economy","to run","beautiful","yesterday"]', 'economy', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'Welcher Artikel gehört zu "das Unternehmen"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd3', 'true_false', 'Das Wort "die Aktie" gehört zum Thema Passive with Modals.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd3', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd3', 'fill_blank', 'Complete: Ich ___ (revenue) Deutsch.', '["der Umsatz","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'Wie lautet das deutsche Wort für "balance sheet"?', '["die Bilanz","investieren","der Markt","die Messe"]', 'die Bilanz', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd3', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd3', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd3', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd3', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000025fadd3', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000025fadd3', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000025fadd3', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000025fadd3', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000025fadd3', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000025fadd3', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000025fadd3', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000025fadd3', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000025fadd3', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000025fadd3', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000025fadd3', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000025fadd3', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000025fadd3', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000025fadd3', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000025fadd3', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000025fadd3', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000025fadd3', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Passiv mit Modalverben — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Passiv mit Modalverben — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', '🔊 Sprechen: Passiv mit Modalverben', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Passive with Modals with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Passive with Modals', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', '✏️ Schreiben: Passiv mit Modalverben', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Passive with Modals". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Passiv mit Modalverben — Roleplay', 'Passive with Modals', 'Student', 'Teacher', 'Practice conversation about Passive with Modals', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Passiv mit Modalverben — Advanced Roleplay', 'Passive with Modals', 'Customer', 'Assistant', 'Extended conversation about Passive with Modals', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Passiv mit Modalverben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Passiv mit Modalverben".', 'Creative practice for Passive with Modals', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', '📚 Hausaufgabe: Passiv mit Modalverben', 'Complete these tasks to reinforce "Passiv mit Modalverben".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Passive with Modals: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Passive with Modals. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd3', '🎯 Excellent progress! This lesson covered Passive with Modals (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of business. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Passive with Modals","present_tense — grammar explanation and practice","Reading comprehension: text about Passive with Modals","Listening comprehension: dialogue about Passive with Modals","Speaking practice: roleplay/discussion about Passive with Modals","Writing task: text about Passive with Modals"]', '[{"title":"Passiv mit Modalverben Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wirtschaft (economy)','das Unternehmen (enterprise)','die Aktie (share)','der Umsatz (revenue)','die Bilanz (balance sheet)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Passive with Modals for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'translation', 'Translate to German: "I use the word "economy" in a sentence about Passive with Modals."', '[]', 'Die deutsche Wirtschaft ist stark.', 'Use die  "die Wirtschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'translation', 'Translate to German: "I use the word "enterprise" in a sentence about Passive with Modals."', '[]', 'Das Unternehmen wächst schnell.', 'Use das  "das Unternehmen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'translation', 'Translate to German: "I use the word "share" in a sentence about Passive with Modals."', '[]', 'Die Aktie steigt.', 'Use die  "die Aktie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Culture: 🇩🇪 Deutsche Kultur: Passive with Modals', 'Passive with Modals in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Passive with Modals in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Passive with Modals في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Besprechungen und Meetings (L-B2-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd4', '00000000-0000-4000-a000-000039c35f3e', 'Besprechungen und Meetings', 'Participate in meetings and discussions.', 'Meetings', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd4', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd4', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd4', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd4', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd4', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd4', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd4', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'Welches deutsche Wort bedeutet "economy"?', '["die Wirtschaft","das Unternehmen","die Bilanz","die Aktie"]', 'die Wirtschaft', '"economy" = "die Wirtschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'Welches deutsche Wort bedeutet "enterprise"?', '["die Wirtschaft","die Aktie","der Umsatz","das Unternehmen"]', 'das Unternehmen', '"enterprise" = "das Unternehmen" in German. Article: das Plural: die Unternehmen', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'Welches deutsche Wort bedeutet "share"?', '["die Aktie","die Wirtschaft","die Bilanz","das Unternehmen"]', 'die Aktie', '"share" = "die Aktie" in German. Article: die Plural: die Aktien', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'Welches deutsche Wort bedeutet "revenue"?', '["der Umsatz","die Wirtschaft","das Unternehmen","die Bilanz"]', 'der Umsatz', '"revenue" = "der Umsatz" in German. Article: der Plural: die Umsätze', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'Welches deutsche Wort bedeutet "balance sheet"?', '["die Aktie","der Umsatz","die Wirtschaft","die Bilanz"]', 'die Bilanz', '"balance sheet" = "die Bilanz" in German. Article: die Plural: die Bilanzen', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd4', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Meetings. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd4', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Meetings."', '["Ich lerne über Meetings.","Ich lerne Meetings.","Lerne ich Meetings."]', 'Ich lerne über Meetings.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000025fadd4', 'matching', 'Match: Which word pairs are correct?', '["die Wirtschaft - economy, das Unternehmen - enterprise"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'Was bedeutet "die Wirtschaft" auf Deutsch?', '["economy","to run","beautiful","yesterday"]', 'economy', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'Welcher Artikel gehört zu "das Unternehmen"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd4', 'true_false', 'Das Wort "die Aktie" gehört zum Thema Meetings.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd4', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd4', 'fill_blank', 'Complete: Ich ___ (revenue) Deutsch.', '["der Umsatz","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'Wie lautet das deutsche Wort für "balance sheet"?', '["die Bilanz","investieren","der Markt","die Messe"]', 'die Bilanz', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd4', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd4', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd4', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd4', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000025fadd4', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000025fadd4', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000025fadd4', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000025fadd4', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000025fadd4', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000025fadd4', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000025fadd4', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000025fadd4', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000025fadd4', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000025fadd4', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000025fadd4', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000025fadd4', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000025fadd4', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000025fadd4', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000025fadd4', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000025fadd4', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000025fadd4', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000025fadd4', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Besprechungen und Meetings — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Besprechungen und Meetings — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', '🔊 Sprechen: Besprechungen und Meetings', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Meetings with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Meetings', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', '✏️ Schreiben: Besprechungen und Meetings', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Meetings". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Besprechungen und Meetings — Roleplay', 'Meetings', 'Student', 'Teacher', 'Practice conversation about Meetings', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Besprechungen und Meetings — Advanced Roleplay', 'Meetings', 'Customer', 'Assistant', 'Extended conversation about Meetings', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Besprechungen und Meetings — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Besprechungen und Meetings".', 'Creative practice for Meetings', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', '📚 Hausaufgabe: Besprechungen und Meetings', 'Complete these tasks to reinforce "Besprechungen und Meetings".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Meetings: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Meetings. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd4', '🎯 Excellent progress! This lesson covered Meetings (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of business. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Meetings","present_tense — grammar explanation and practice","Reading comprehension: text about Meetings","Listening comprehension: dialogue about Meetings","Speaking practice: roleplay/discussion about Meetings","Writing task: text about Meetings"]', '[{"title":"Besprechungen und Meetings Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wirtschaft (economy)','das Unternehmen (enterprise)','die Aktie (share)','der Umsatz (revenue)','die Bilanz (balance sheet)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Meetings for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'translation', 'Translate to German: "I use the word "economy" in a sentence about Meetings."', '[]', 'Die deutsche Wirtschaft ist stark.', 'Use die  "die Wirtschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'translation', 'Translate to German: "I use the word "enterprise" in a sentence about Meetings."', '[]', 'Das Unternehmen wächst schnell.', 'Use das  "das Unternehmen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'translation', 'Translate to German: "I use the word "share" in a sentence about Meetings."', '[]', 'Die Aktie steigt.', 'Use die  "die Aktie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Culture: 🇩🇪 Deutsche Kultur: Meetings', 'Meetings in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Meetings in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Meetings في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 5: Kausalsätze: wegen, aufgrund, dank (L-B2-01-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd5', '00000000-0000-4000-a000-000039c35f3e', 'Kausalsätze: wegen, aufgrund, dank', 'Express reasons using prepositions with Genitiv.', 'Causal Clauses', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd5', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd5', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd5', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd5', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd5', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd5', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd5', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'Welches deutsche Wort bedeutet "economy"?', '["der Umsatz","die Aktie","das Unternehmen","die Bilanz"]', 'die Wirtschaft', '"economy" = "die Wirtschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'Welches deutsche Wort bedeutet "enterprise"?', '["das Unternehmen","die Aktie","die Wirtschaft","die Bilanz"]', 'das Unternehmen', '"enterprise" = "das Unternehmen" in German. Article: das Plural: die Unternehmen', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'Welches deutsche Wort bedeutet "share"?', '["die Aktie","der Umsatz","die Wirtschaft","die Bilanz"]', 'die Aktie', '"share" = "die Aktie" in German. Article: die Plural: die Aktien', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'Welches deutsche Wort bedeutet "revenue"?', '["die Aktie","die Wirtschaft","die Bilanz","das Unternehmen"]', 'der Umsatz', '"revenue" = "der Umsatz" in German. Article: der Plural: die Umsätze', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'Welches deutsche Wort bedeutet "balance sheet"?', '["der Umsatz","die Wirtschaft","die Bilanz","das Unternehmen"]', 'die Bilanz', '"balance sheet" = "die Bilanz" in German. Article: die Plural: die Bilanzen', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd5', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Causal Clauses. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd5', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Causal Clauses."', '["Ich lerne über Causal Clauses.","Ich lerne Causal Clauses.","Lerne ich Causal Clauses."]', 'Ich lerne über Causal Clauses.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000025fadd5', 'matching', 'Match: Which word pairs are correct?', '["die Wirtschaft - economy, das Unternehmen - enterprise"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'Was bedeutet "die Wirtschaft" auf Deutsch?', '["economy","to run","beautiful","yesterday"]', 'economy', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'Welcher Artikel gehört zu "das Unternehmen"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd5', 'true_false', 'Das Wort "die Aktie" gehört zum Thema Causal Clauses.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd5', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd5', 'fill_blank', 'Complete: Ich ___ (revenue) Deutsch.', '["der Umsatz","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'Wie lautet das deutsche Wort für "balance sheet"?', '["die Bilanz","investieren","der Markt","die Messe"]', 'die Bilanz', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd5', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd5', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd5', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd5', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000025fadd5', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000025fadd5', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000025fadd5', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000025fadd5', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000025fadd5', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000025fadd5', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000025fadd5', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000025fadd5', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000025fadd5', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000025fadd5', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000025fadd5', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000025fadd5', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000025fadd5', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000025fadd5', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000025fadd5', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000025fadd5', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000025fadd5', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Kausalsätze: wegen, aufgrund, dank — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Kausalsätze: wegen, aufgrund, dank — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', '🔊 Sprechen: Kausalsätze: wegen, aufgrund, dank', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Causal Clauses with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Causal Clauses', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', '✏️ Schreiben: Kausalsätze: wegen, aufgrund, dank', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Causal Clauses". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Kausalsätze: wegen, aufgrund, dank — Roleplay', 'Causal Clauses', 'Student', 'Teacher', 'Practice conversation about Causal Clauses', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Kausalsätze: wegen, aufgrund, dank — Advanced Roleplay', 'Causal Clauses', 'Customer', 'Assistant', 'Extended conversation about Causal Clauses', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Kausalsätze: wegen, aufgrund, dank — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kausalsätze: wegen, aufgrund, dank".', 'Creative practice for Causal Clauses', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', '📚 Hausaufgabe: Kausalsätze: wegen, aufgrund, dank', 'Complete these tasks to reinforce "Kausalsätze: wegen, aufgrund, dank".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Causal Clauses: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Causal Clauses. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd5', '🎯 Excellent progress! This lesson covered Causal Clauses (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of business. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Causal Clauses","present_tense — grammar explanation and practice","Reading comprehension: text about Causal Clauses","Listening comprehension: dialogue about Causal Clauses","Speaking practice: roleplay/discussion about Causal Clauses","Writing task: text about Causal Clauses"]', '[{"title":"Kausalsätze: wegen, aufgrund, dank Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wirtschaft (economy)','das Unternehmen (enterprise)','die Aktie (share)','der Umsatz (revenue)','die Bilanz (balance sheet)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Causal Clauses for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'translation', 'Translate to German: "I use the word "economy" in a sentence about Causal Clauses."', '[]', 'Die deutsche Wirtschaft ist stark.', 'Use die  "die Wirtschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'translation', 'Translate to German: "I use the word "enterprise" in a sentence about Causal Clauses."', '[]', 'Das Unternehmen wächst schnell.', 'Use das  "das Unternehmen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'translation', 'Translate to German: "I use the word "share" in a sentence about Causal Clauses."', '[]', 'Die Aktie steigt.', 'Use die  "die Aktie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Culture: 🇩🇪 Deutsche Kultur: Causal Clauses', 'Causal Clauses in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Causal Clauses in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Causal Clauses في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 6: Test: Berufliche Kommunikation (L-B2-01-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd6', '00000000-0000-4000-a000-000039c35f3e', 'Test: Berufliche Kommunikation', 'Module test on professional communication.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd6', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd6', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd6', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd6', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd6', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd6', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd6', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'Welches deutsche Wort bedeutet "economy"?', '["die Bilanz","die Wirtschaft","das Unternehmen","der Umsatz"]', 'die Wirtschaft', '"economy" = "die Wirtschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'Welches deutsche Wort bedeutet "enterprise"?', '["die Bilanz","der Umsatz","die Wirtschaft","die Aktie"]', 'das Unternehmen', '"enterprise" = "das Unternehmen" in German. Article: das Plural: die Unternehmen', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'Welches deutsche Wort bedeutet "share"?', '["die Bilanz","das Unternehmen","die Wirtschaft","der Umsatz"]', 'die Aktie', '"share" = "die Aktie" in German. Article: die Plural: die Aktien', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'Welches deutsche Wort bedeutet "revenue"?', '["der Umsatz","die Bilanz","die Wirtschaft","das Unternehmen"]', 'der Umsatz', '"revenue" = "der Umsatz" in German. Article: der Plural: die Umsätze', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'Welches deutsche Wort bedeutet "balance sheet"?', '["die Bilanz","das Unternehmen","die Aktie","die Wirtschaft"]', 'die Bilanz', '"balance sheet" = "die Bilanz" in German. Article: die Plural: die Bilanzen', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd6', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd6', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000025fadd6', 'matching', 'Match: Which word pairs are correct?', '["die Wirtschaft - economy, das Unternehmen - enterprise"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'Was bedeutet "die Wirtschaft" auf Deutsch?', '["economy","to run","beautiful","yesterday"]', 'economy', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'Welcher Artikel gehört zu "das Unternehmen"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd6', 'true_false', 'Das Wort "die Aktie" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd6', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd6', 'fill_blank', 'Complete: Ich ___ (revenue) Deutsch.', '["der Umsatz","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'Wie lautet das deutsche Wort für "balance sheet"?', '["die Bilanz","investieren","der Markt","die Messe"]', 'die Bilanz', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd6', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd6', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd6', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd6', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000025fadd6', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Berufliche Kommunikation', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000025fadd6', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000025fadd6', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000025fadd6', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000025fadd6', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000025fadd6', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000025fadd6', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000025fadd6', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000025fadd6', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000025fadd6', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000025fadd6', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000025fadd6', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000025fadd6', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000025fadd6', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000025fadd6', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000025fadd6', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000025fadd6', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000025fadd6', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Test: Berufliche Kommunikation — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Test: Berufliche Kommunikation — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', '🔊 Sprechen: Test: Berufliche Kommunikation', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Module Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', '✏️ Schreiben: Test: Berufliche Kommunikation', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Module Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Test: Berufliche Kommunikation — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Test: Berufliche Kommunikation — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Test: Berufliche Kommunikation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Berufliche Kommunikation".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', '📚 Hausaufgabe: Test: Berufliche Kommunikation', 'Complete these tasks to reinforce "Test: Berufliche Kommunikation".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd6', '🎯 Excellent progress! This lesson covered Module Test (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of business. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Berufliche Kommunikation Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wirtschaft (economy)','das Unternehmen (enterprise)','die Aktie (share)','der Umsatz (revenue)','die Bilanz (balance sheet)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'translation', 'Translate to German: "I use the word "economy" in a sentence about Module Test."', '[]', 'Die deutsche Wirtschaft ist stark.', 'Use die  "die Wirtschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'translation', 'Translate to German: "I use the word "enterprise" in a sentence about Module Test."', '[]', 'Das Unternehmen wächst schnell.', 'Use das  "das Unternehmen" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'translation', 'Translate to German: "I use the word "share" in a sentence about Module Test."', '[]', 'Die Aktie steigt.', 'Use die  "die Aktie" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'Module Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Module Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Module 2: Gesellschaft und Politik
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f3f', 'B2', 'Gesellschaft und Politik', 'Discuss political systems, social issues, and current events.', '["Discuss political systems and elections","Analyze social issues","Use Konjunktiv II for hypothetical situations","Write opinion pieces","Use indefinite pronouns"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Politisches System Deutschlands (L-B2-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002602230', '00000000-0000-4000-a000-000039c35f3f', 'Politisches System Deutschlands', 'Learn about German political system and vocabulary.', 'German Politics', 'vocabulary', '["Understand and use 71 key vocabulary words about German Politics","Apply present_tense correctly in sentences","Read and comprehend a text about German Politics","Listen and understand a natural dialogue about German Politics","Speak about German Politics with confidence","Write a short text about German Politics using new vocabulary"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 1),
  ('00000000-0000-4000-a000-000002602230', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 2),
  ('00000000-0000-4000-a000-000002602230', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 3),
  ('00000000-0000-4000-a000-000002602230', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 4),
  ('00000000-0000-4000-a000-000002602230', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 5),
  ('00000000-0000-4000-a000-000002602230', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 6),
  ('00000000-0000-4000-a000-000002602230', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 7),
  ('00000000-0000-4000-a000-000002602230', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002602230', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002602230', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002602230', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002602230', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002602230', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002602230', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002602230', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002602230', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-000002602230', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-000002602230', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-000002602230', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-000002602230', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-000002602230', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-000002602230', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-000002602230', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-000002602230', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002602230', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002602230', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002602230', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002602230', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002602230', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002602230', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'Welches deutsche Wort bedeutet "government"?', '["die Partei","der Kanzler","die Regierung","der Bundestag"]', 'die Regierung', '"government" = "die Regierung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'Welches deutsche Wort bedeutet "Federal Parliament"?', '["die Regierung","der Kanzler","der Bundestag","die Wahl"]', 'der Bundestag', '"Federal Parliament" = "der Bundestag" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'Welches deutsche Wort bedeutet "election"?', '["die Wahl","die Regierung","der Bundestag","der Kanzler"]', 'die Wahl', '"election" = "die Wahl" in German. Article: die Plural: die Wahlen', 1, 3),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'Welches deutsche Wort bedeutet "party"?', '["der Bundestag","die Regierung","der Kanzler","die Wahl"]', 'die Partei', '"party" = "die Partei" in German. Article: die Plural: die Parteien', 1, 4),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'Welches deutsche Wort bedeutet "chancellor"?', '["der Kanzler","die Partei","die Regierung","die Wahl"]', 'der Kanzler', '"chancellor" = "der Kanzler" in German. Article: der ', 1, 5),
  ('00000000-0000-4000-a000-000002602230', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über German Politics. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002602230', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about German Politics."', '["Ich lerne über German Politics.","Ich lerne German Politics.","Lerne ich German Politics."]', 'Ich lerne über German Politics.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002602230', 'matching', 'Match: Which word pairs are correct?', '["die Regierung - government, der Bundestag - Federal Parliament"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'Was bedeutet "die Regierung" auf Deutsch?', '["government","to run","beautiful","yesterday"]', 'government', 1, 1),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'Welcher Artikel gehört zu "der Bundestag"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002602230', 'true_false', 'Das Wort "die Wahl" gehört zum Thema German Politics.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-000002602230', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002602230', 'fill_blank', 'Complete: Ich ___ (party) Deutsch.', '["die Partei","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'Wie lautet das deutsche Wort für "chancellor"?', '["der Kanzler","die Demokratie","das Gesetz","die Wirtschaft"]', 'der Kanzler', 1, 7),
  ('00000000-0000-4000-a000-000002602230', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002602230', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002602230', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002602230', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002602230', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002602230', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002602230', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002602230', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002602230', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002602230', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002602230', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002602230', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002602230', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002602230', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002602230', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002602230', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002602230', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002602230', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002602230', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002602230', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002602230', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002602230', 'Politisches System Deutschlands — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002602230', 'Politisches System Deutschlands — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Gesellschaft und Politik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002602230', '🔊 Sprechen: Politisches System Deutschlands', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss German Politics with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'German Politics', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002602230', '✏️ Schreiben: Politisches System Deutschlands', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "German Politics". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602230', 'Politisches System Deutschlands — Roleplay', 'German Politics', 'Student', 'Teacher', 'Practice conversation about German Politics', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602230', 'Politisches System Deutschlands — Advanced Roleplay', 'German Politics', 'Customer', 'Assistant', 'Extended conversation about German Politics', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002602230', 'Politisches System Deutschlands — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politisches System Deutschlands".', 'Creative practice for German Politics', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002602230', '📚 Hausaufgabe: Politisches System Deutschlands', 'Complete these tasks to reinforce "Politisches System Deutschlands".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about German Politics: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about German Politics. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002602230', '🎯 Excellent progress! This lesson covered German Politics (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of politics. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about German Politics","present_tense — grammar explanation and practice","Reading comprehension: text about German Politics","Listening comprehension: dialogue about German Politics","Speaking practice: roleplay/discussion about German Politics","Writing task: text about German Politics"]', '[{"title":"Politisches System Deutschlands Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Regierung (government)','der Bundestag (Federal Parliament)','die Wahl (election)','die Partei (party)','der Kanzler (chancellor)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about German Politics for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'translation', 'Translate to German: "I use the word "government" in a sentence about German Politics."', '[]', 'Die Regierung beschließt neue Gesetze.', 'Use die  "die Regierung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'translation', 'Translate to German: "I use the word "Federal Parliament" in a sentence about German Politics."', '[]', 'Der Bundestag tagt in Berlin.', 'Use der  "der Bundestag" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'translation', 'Translate to German: "I use the word "election" in a sentence about German Politics."', '[]', 'Die Wahlen sind im September.', 'Use die  "die Wahl" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Culture: 🇩🇪 Deutsche Kultur: German Politics', 'German Politics in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with German Politics in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى German Politics في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Soziale Themen und Diskussionen (L-B2-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002602231', '00000000-0000-4000-a000-000039c35f3f', 'Soziale Themen und Diskussionen', 'Discuss social issues like migration, education, healthcare.', 'Social Issues', 'vocabulary', '["Understand and use 71 key vocabulary words about Social Issues","Apply present_tense correctly in sentences","Read and comprehend a text about Social Issues","Listen and understand a natural dialogue about Social Issues","Speak about Social Issues with confidence","Write a short text about Social Issues using new vocabulary"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 1),
  ('00000000-0000-4000-a000-000002602231', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 2),
  ('00000000-0000-4000-a000-000002602231', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 3),
  ('00000000-0000-4000-a000-000002602231', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 4),
  ('00000000-0000-4000-a000-000002602231', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 5),
  ('00000000-0000-4000-a000-000002602231', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 6),
  ('00000000-0000-4000-a000-000002602231', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 7),
  ('00000000-0000-4000-a000-000002602231', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002602231', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002602231', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002602231', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002602231', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002602231', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002602231', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002602231', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002602231', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-000002602231', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-000002602231', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-000002602231', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-000002602231', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-000002602231', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-000002602231', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-000002602231', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-000002602231', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002602231', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002602231', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002602231', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002602231', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002602231', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002602231', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'Welches deutsche Wort bedeutet "government"?', '["die Partei","der Kanzler","die Regierung","der Bundestag"]', 'die Regierung', '"government" = "die Regierung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'Welches deutsche Wort bedeutet "Federal Parliament"?', '["die Partei","der Bundestag","der Kanzler","die Regierung"]', 'der Bundestag', '"Federal Parliament" = "der Bundestag" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'Welches deutsche Wort bedeutet "election"?', '["die Regierung","die Wahl","die Partei","der Kanzler"]', 'die Wahl', '"election" = "die Wahl" in German. Article: die Plural: die Wahlen', 1, 3),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'Welches deutsche Wort bedeutet "party"?', '["die Partei","die Regierung","die Wahl","der Bundestag"]', 'die Partei', '"party" = "die Partei" in German. Article: die Plural: die Parteien', 1, 4),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'Welches deutsche Wort bedeutet "chancellor"?', '["der Bundestag","die Regierung","die Wahl","der Kanzler"]', 'der Kanzler', '"chancellor" = "der Kanzler" in German. Article: der ', 1, 5),
  ('00000000-0000-4000-a000-000002602231', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Social Issues. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002602231', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Social Issues."', '["Ich lerne über Social Issues.","Ich lerne Social Issues.","Lerne ich Social Issues."]', 'Ich lerne über Social Issues.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002602231', 'matching', 'Match: Which word pairs are correct?', '["die Regierung - government, der Bundestag - Federal Parliament"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'Was bedeutet "die Regierung" auf Deutsch?', '["government","to run","beautiful","yesterday"]', 'government', 1, 1),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'Welcher Artikel gehört zu "der Bundestag"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002602231', 'true_false', 'Das Wort "die Wahl" gehört zum Thema Social Issues.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-000002602231', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002602231', 'fill_blank', 'Complete: Ich ___ (party) Deutsch.', '["die Partei","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'Wie lautet das deutsche Wort für "chancellor"?', '["der Kanzler","die Demokratie","das Gesetz","die Wirtschaft"]', 'der Kanzler', 1, 7),
  ('00000000-0000-4000-a000-000002602231', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002602231', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002602231', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002602231', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002602231', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002602231', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002602231', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002602231', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002602231', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002602231', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002602231', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002602231', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002602231', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002602231', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002602231', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002602231', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002602231', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002602231', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002602231', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002602231', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002602231', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-000002602231', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002602231', 'Soziale Themen und Diskussionen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002602231', 'Soziale Themen und Diskussionen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Gesellschaft und Politik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002602231', '🔊 Sprechen: Soziale Themen und Diskussionen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Social Issues with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Social Issues', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002602231', '✏️ Schreiben: Soziale Themen und Diskussionen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Social Issues". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602231', 'Soziale Themen und Diskussionen — Roleplay', 'Social Issues', 'Student', 'Teacher', 'Practice conversation about Social Issues', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602231', 'Soziale Themen und Diskussionen — Advanced Roleplay', 'Social Issues', 'Customer', 'Assistant', 'Extended conversation about Social Issues', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002602231', 'Soziale Themen und Diskussionen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Soziale Themen und Diskussionen".', 'Creative practice for Social Issues', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002602231', '📚 Hausaufgabe: Soziale Themen und Diskussionen', 'Complete these tasks to reinforce "Soziale Themen und Diskussionen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Social Issues: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Social Issues. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002602231', '🎯 Excellent progress! This lesson covered Social Issues (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of politics. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Social Issues","present_tense — grammar explanation and practice","Reading comprehension: text about Social Issues","Listening comprehension: dialogue about Social Issues","Speaking practice: roleplay/discussion about Social Issues","Writing task: text about Social Issues"]', '[{"title":"Soziale Themen und Diskussionen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Regierung (government)','der Bundestag (Federal Parliament)','die Wahl (election)','die Partei (party)','der Kanzler (chancellor)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Social Issues for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'translation', 'Translate to German: "I use the word "government" in a sentence about Social Issues."', '[]', 'Die Regierung beschließt neue Gesetze.', 'Use die  "die Regierung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'translation', 'Translate to German: "I use the word "Federal Parliament" in a sentence about Social Issues."', '[]', 'Der Bundestag tagt in Berlin.', 'Use der  "der Bundestag" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'translation', 'Translate to German: "I use the word "election" in a sentence about Social Issues."', '[]', 'Die Wahlen sind im September.', 'Use die  "die Wahl" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Culture: 🇩🇪 Deutsche Kultur: Social Issues', 'Social Issues in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Social Issues in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Social Issues في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Konjunktiv II: hätte, wäre, würde (L-B2-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002602232', '00000000-0000-4000-a000-000039c35f3f', 'Konjunktiv II: hätte, wäre, würde', 'Learn subjunctive forms for hypothetical situations.', 'Konjunktiv II Forms', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 1),
  ('00000000-0000-4000-a000-000002602232', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 2),
  ('00000000-0000-4000-a000-000002602232', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 3),
  ('00000000-0000-4000-a000-000002602232', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 4),
  ('00000000-0000-4000-a000-000002602232', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 5),
  ('00000000-0000-4000-a000-000002602232', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 6),
  ('00000000-0000-4000-a000-000002602232', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 7),
  ('00000000-0000-4000-a000-000002602232', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002602232', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002602232', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002602232', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002602232', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002602232', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002602232', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002602232', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002602232', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-000002602232', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-000002602232', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-000002602232', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-000002602232', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-000002602232', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-000002602232', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-000002602232', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-000002602232', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002602232', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002602232', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002602232', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002602232', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002602232', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002602232', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'Welches deutsche Wort bedeutet "government"?', '["die Wahl","der Bundestag","die Partei","der Kanzler"]', 'die Regierung', '"government" = "die Regierung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'Welches deutsche Wort bedeutet "Federal Parliament"?', '["der Kanzler","die Wahl","die Regierung","der Bundestag"]', 'der Bundestag', '"Federal Parliament" = "der Bundestag" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'Welches deutsche Wort bedeutet "election"?', '["die Wahl","die Regierung","der Bundestag","die Partei"]', 'die Wahl', '"election" = "die Wahl" in German. Article: die Plural: die Wahlen', 1, 3),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'Welches deutsche Wort bedeutet "party"?', '["die Regierung","der Bundestag","die Wahl","der Kanzler"]', 'die Partei', '"party" = "die Partei" in German. Article: die Plural: die Parteien', 1, 4),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'Welches deutsche Wort bedeutet "chancellor"?', '["die Wahl","der Bundestag","die Regierung","die Partei"]', 'der Kanzler', '"chancellor" = "der Kanzler" in German. Article: der ', 1, 5),
  ('00000000-0000-4000-a000-000002602232', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Konjunktiv II Forms. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002602232', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Konjunktiv II Forms."', '["Ich lerne über Konjunktiv II Forms.","Ich lerne Konjunktiv II Forms.","Lerne ich Konjunktiv II Forms."]', 'Ich lerne über Konjunktiv II Forms.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002602232', 'matching', 'Match: Which word pairs are correct?', '["die Regierung - government, der Bundestag - Federal Parliament"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'Was bedeutet "die Regierung" auf Deutsch?', '["government","to run","beautiful","yesterday"]', 'government', 1, 1),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'Welcher Artikel gehört zu "der Bundestag"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002602232', 'true_false', 'Das Wort "die Wahl" gehört zum Thema Konjunktiv II Forms.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-000002602232', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002602232', 'fill_blank', 'Complete: Ich ___ (party) Deutsch.', '["die Partei","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'Wie lautet das deutsche Wort für "chancellor"?', '["der Kanzler","die Demokratie","das Gesetz","die Wirtschaft"]', 'der Kanzler', 1, 7),
  ('00000000-0000-4000-a000-000002602232', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002602232', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002602232', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002602232', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002602232', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002602232', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002602232', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002602232', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002602232', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002602232', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002602232', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002602232', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002602232', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002602232', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002602232', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002602232', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002602232', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002602232', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002602232', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002602232', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002602232', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002602232', 'Konjunktiv II: hätte, wäre, würde — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002602232', 'Konjunktiv II: hätte, wäre, würde — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Gesellschaft und Politik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002602232', '🔊 Sprechen: Konjunktiv II: hätte, wäre, würde', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Konjunktiv II Forms with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Konjunktiv II Forms', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002602232', '✏️ Schreiben: Konjunktiv II: hätte, wäre, würde', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Konjunktiv II Forms". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602232', 'Konjunktiv II: hätte, wäre, würde — Roleplay', 'Konjunktiv II Forms', 'Student', 'Teacher', 'Practice conversation about Konjunktiv II Forms', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602232', 'Konjunktiv II: hätte, wäre, würde — Advanced Roleplay', 'Konjunktiv II Forms', 'Customer', 'Assistant', 'Extended conversation about Konjunktiv II Forms', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002602232', 'Konjunktiv II: hätte, wäre, würde — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv II: hätte, wäre, würde".', 'Creative practice for Konjunktiv II Forms', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002602232', '📚 Hausaufgabe: Konjunktiv II: hätte, wäre, würde', 'Complete these tasks to reinforce "Konjunktiv II: hätte, wäre, würde".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Konjunktiv II Forms: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Konjunktiv II Forms. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002602232', '🎯 Excellent progress! This lesson covered Konjunktiv II Forms (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of politics. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Konjunktiv II Forms","present_tense — grammar explanation and practice","Reading comprehension: text about Konjunktiv II Forms","Listening comprehension: dialogue about Konjunktiv II Forms","Speaking practice: roleplay/discussion about Konjunktiv II Forms","Writing task: text about Konjunktiv II Forms"]', '[{"title":"Konjunktiv II: hätte, wäre, würde Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Regierung (government)','der Bundestag (Federal Parliament)','die Wahl (election)','die Partei (party)','der Kanzler (chancellor)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Konjunktiv II Forms for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'translation', 'Translate to German: "I use the word "government" in a sentence about Konjunktiv II Forms."', '[]', 'Die Regierung beschließt neue Gesetze.', 'Use die  "die Regierung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'translation', 'Translate to German: "I use the word "Federal Parliament" in a sentence about Konjunktiv II Forms."', '[]', 'Der Bundestag tagt in Berlin.', 'Use der  "der Bundestag" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'translation', 'Translate to German: "I use the word "election" in a sentence about Konjunktiv II Forms."', '[]', 'Die Wahlen sind im September.', 'Use die  "die Wahl" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Culture: 🇩🇪 Deutsche Kultur: Konjunktiv II Forms', 'Konjunktiv II Forms in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Konjunktiv II Forms in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Konjunktiv II Forms في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Eine Debatte führen (L-B2-02-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002602233', '00000000-0000-4000-a000-000039c35f3f', 'Eine Debatte führen', 'Practice formal debating and argumentation.', 'Debating', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 1),
  ('00000000-0000-4000-a000-000002602233', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 2),
  ('00000000-0000-4000-a000-000002602233', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 3),
  ('00000000-0000-4000-a000-000002602233', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 4),
  ('00000000-0000-4000-a000-000002602233', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 5),
  ('00000000-0000-4000-a000-000002602233', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 6),
  ('00000000-0000-4000-a000-000002602233', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 7),
  ('00000000-0000-4000-a000-000002602233', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002602233', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002602233', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002602233', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002602233', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002602233', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002602233', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002602233', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002602233', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-000002602233', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-000002602233', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-000002602233', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-000002602233', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-000002602233', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-000002602233', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-000002602233', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-000002602233', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002602233', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002602233', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002602233', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002602233', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002602233', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002602233', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'Welches deutsche Wort bedeutet "government"?', '["der Kanzler","die Regierung","der Bundestag","die Wahl"]', 'die Regierung', '"government" = "die Regierung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'Welches deutsche Wort bedeutet "Federal Parliament"?', '["der Kanzler","die Regierung","der Bundestag","die Wahl"]', 'der Bundestag', '"Federal Parliament" = "der Bundestag" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'Welches deutsche Wort bedeutet "election"?', '["der Kanzler","die Partei","der Bundestag","die Regierung"]', 'die Wahl', '"election" = "die Wahl" in German. Article: die Plural: die Wahlen', 1, 3),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'Welches deutsche Wort bedeutet "party"?', '["die Wahl","die Partei","die Regierung","der Bundestag"]', 'die Partei', '"party" = "die Partei" in German. Article: die Plural: die Parteien', 1, 4),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'Welches deutsche Wort bedeutet "chancellor"?', '["die Regierung","der Kanzler","die Partei","der Bundestag"]', 'der Kanzler', '"chancellor" = "der Kanzler" in German. Article: der ', 1, 5),
  ('00000000-0000-4000-a000-000002602233', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Debating. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002602233', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Debating."', '["Ich lerne über Debating.","Ich lerne Debating.","Lerne ich Debating."]', 'Ich lerne über Debating.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002602233', 'matching', 'Match: Which word pairs are correct?', '["die Regierung - government, der Bundestag - Federal Parliament"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'Was bedeutet "die Regierung" auf Deutsch?', '["government","to run","beautiful","yesterday"]', 'government', 1, 1),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'Welcher Artikel gehört zu "der Bundestag"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002602233', 'true_false', 'Das Wort "die Wahl" gehört zum Thema Debating.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-000002602233', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002602233', 'fill_blank', 'Complete: Ich ___ (party) Deutsch.', '["die Partei","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'Wie lautet das deutsche Wort für "chancellor"?', '["der Kanzler","die Demokratie","das Gesetz","die Wirtschaft"]', 'der Kanzler', 1, 7),
  ('00000000-0000-4000-a000-000002602233', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002602233', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002602233', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002602233', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002602233', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002602233', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002602233', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002602233', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002602233', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002602233', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002602233', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002602233', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002602233', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002602233', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002602233', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002602233', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002602233', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002602233', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002602233', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002602233', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002602233', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-000002602233', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002602233', 'Eine Debatte führen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002602233', 'Eine Debatte führen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Gesellschaft und Politik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002602233', '🔊 Sprechen: Eine Debatte führen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Debating with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Debating', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002602233', '✏️ Schreiben: Eine Debatte führen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Debating". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602233', 'Eine Debatte führen — Roleplay', 'Debating', 'Student', 'Teacher', 'Practice conversation about Debating', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602233', 'Eine Debatte führen — Advanced Roleplay', 'Debating', 'Customer', 'Assistant', 'Extended conversation about Debating', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002602233', 'Eine Debatte führen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Eine Debatte führen".', 'Creative practice for Debating', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002602233', '📚 Hausaufgabe: Eine Debatte führen', 'Complete these tasks to reinforce "Eine Debatte führen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Debating: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Debating. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002602233', '🎯 Excellent progress! This lesson covered Debating (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of politics. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Debating","present_tense — grammar explanation and practice","Reading comprehension: text about Debating","Listening comprehension: dialogue about Debating","Speaking practice: roleplay/discussion about Debating","Writing task: text about Debating"]', '[{"title":"Eine Debatte führen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Regierung (government)','der Bundestag (Federal Parliament)','die Wahl (election)','die Partei (party)','der Kanzler (chancellor)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Debating for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'translation', 'Translate to German: "I use the word "government" in a sentence about Debating."', '[]', 'Die Regierung beschließt neue Gesetze.', 'Use die  "die Regierung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'translation', 'Translate to German: "I use the word "Federal Parliament" in a sentence about Debating."', '[]', 'Der Bundestag tagt in Berlin.', 'Use der  "der Bundestag" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'translation', 'Translate to German: "I use the word "election" in a sentence about Debating."', '[]', 'Die Wahlen sind im September.', 'Use die  "die Wahl" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Culture: 🇩🇪 Deutsche Kultur: Debating', 'Debating in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Debating in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Debating في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 5: Test: Gesellschaft und Politik (L-B2-02-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002602234', '00000000-0000-4000-a000-000039c35f3f', 'Test: Gesellschaft und Politik', 'Module test on society and politics.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 1),
  ('00000000-0000-4000-a000-000002602234', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 2),
  ('00000000-0000-4000-a000-000002602234', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 3),
  ('00000000-0000-4000-a000-000002602234', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 4),
  ('00000000-0000-4000-a000-000002602234', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 5),
  ('00000000-0000-4000-a000-000002602234', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 6),
  ('00000000-0000-4000-a000-000002602234', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 7),
  ('00000000-0000-4000-a000-000002602234', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002602234', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002602234', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002602234', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002602234', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002602234', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002602234', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002602234', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002602234', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-000002602234', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-000002602234', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-000002602234', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-000002602234', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-000002602234', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-000002602234', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-000002602234', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-000002602234', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002602234', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002602234', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002602234', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002602234', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002602234', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002602234', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'Welches deutsche Wort bedeutet "government"?', '["die Regierung","die Partei","der Kanzler","der Bundestag"]', 'die Regierung', '"government" = "die Regierung" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'Welches deutsche Wort bedeutet "Federal Parliament"?', '["die Partei","die Wahl","die Regierung","der Bundestag"]', 'der Bundestag', '"Federal Parliament" = "der Bundestag" in German. Article: der ', 1, 2),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'Welches deutsche Wort bedeutet "election"?', '["die Wahl","die Regierung","der Bundestag","die Partei"]', 'die Wahl', '"election" = "die Wahl" in German. Article: die Plural: die Wahlen', 1, 3),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'Welches deutsche Wort bedeutet "party"?', '["die Regierung","die Wahl","der Bundestag","die Partei"]', 'die Partei', '"party" = "die Partei" in German. Article: die Plural: die Parteien', 1, 4),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'Welches deutsche Wort bedeutet "chancellor"?', '["der Kanzler","der Bundestag","die Partei","die Wahl"]', 'der Kanzler', '"chancellor" = "der Kanzler" in German. Article: der ', 1, 5),
  ('00000000-0000-4000-a000-000002602234', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002602234', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002602234', 'matching', 'Match: Which word pairs are correct?', '["die Regierung - government, der Bundestag - Federal Parliament"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'Was bedeutet "die Regierung" auf Deutsch?', '["government","to run","beautiful","yesterday"]', 'government', 1, 1),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'Welcher Artikel gehört zu "der Bundestag"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002602234', 'true_false', 'Das Wort "die Wahl" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-000002602234', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002602234', 'fill_blank', 'Complete: Ich ___ (party) Deutsch.', '["die Partei","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'Wie lautet das deutsche Wort für "chancellor"?', '["der Kanzler","die Demokratie","das Gesetz","die Wirtschaft"]', 'der Kanzler', 1, 7),
  ('00000000-0000-4000-a000-000002602234', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002602234', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002602234', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002602234', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002602234', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesellschaft und Politik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'die die Regierung', 'government — الحكومة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002602234', 'der der Bundestag', 'Federal Parliament — مجلس النواب الألماني', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002602234', 'die die Wahl (die Wahlen)', 'election — الانتخاب', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002602234', 'die die Partei (die Parteien)', 'party — الحزب', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002602234', 'der der Kanzler', 'chancellor — المستشار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002602234', 'die die Demokratie', 'democracy — الديمقراطية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002602234', 'das das Gesetz (die Gesetze)', 'law — القانون', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002602234', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002602234', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002602234', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002602234', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002602234', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002602234', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002602234', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002602234', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002602234', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002602234', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002602234', 'Test: Gesellschaft und Politik — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002602234', 'Test: Gesellschaft und Politik — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Gesellschaft und Politik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002602234', '🔊 Sprechen: Test: Gesellschaft und Politik', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Module Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002602234', '✏️ Schreiben: Test: Gesellschaft und Politik', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Module Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602234', 'Test: Gesellschaft und Politik — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602234', 'Test: Gesellschaft und Politik — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002602234', 'Test: Gesellschaft und Politik — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Gesellschaft und Politik".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002602234', '📚 Hausaufgabe: Test: Gesellschaft und Politik', 'Complete these tasks to reinforce "Test: Gesellschaft und Politik".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002602234', '🎯 Excellent progress! This lesson covered Module Test (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of politics. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Gesellschaft und Politik Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Regierung (government)','der Bundestag (Federal Parliament)','die Wahl (election)','die Partei (party)','der Kanzler (chancellor)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'translation', 'Translate to German: "I use the word "government" in a sentence about Module Test."', '[]', 'Die Regierung beschließt neue Gesetze.', 'Use die  "die Regierung" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'translation', 'Translate to German: "I use the word "Federal Parliament" in a sentence about Module Test."', '[]', 'Der Bundestag tagt in Berlin.', 'Use der  "der Bundestag" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'translation', 'Translate to German: "I use the word "election" in a sentence about Module Test."', '[]', 'Die Wahlen sind im September.', 'Use die  "die Wahl" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'Module Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Module Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Module 3: Wissenschaft und Technik
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f40', 'B2', 'Wissenschaft und Technik', 'Discuss scientific topics, technology, and innovation.', '["Understand scientific vocabulary","Discuss technological developments","Use Nomen-Verb-Verbindungen","Understand and explain processes","Use Futur I and II"]', 3, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Wissenschaftliche Themen (L-B2-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00000260968f', '00000000-0000-4000-a000-000039c35f40', 'Wissenschaftliche Themen', 'Learn scientific vocabulary and concepts.', 'Science', 'vocabulary', '["Understand and use 71 key vocabulary words about Science","Apply present_tense correctly in sentences","Read and comprehend a text about Science","Listen and understand a natural dialogue about Science","Speak about Science with confidence","Write a short text about Science using new vocabulary"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 1),
  ('00000000-0000-4000-a000-00000260968f', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 2),
  ('00000000-0000-4000-a000-00000260968f', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 3),
  ('00000000-0000-4000-a000-00000260968f', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 4),
  ('00000000-0000-4000-a000-00000260968f', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 5),
  ('00000000-0000-4000-a000-00000260968f', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 6),
  ('00000000-0000-4000-a000-00000260968f', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 7),
  ('00000000-0000-4000-a000-00000260968f', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 8),
  ('00000000-0000-4000-a000-00000260968f', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-00000260968f', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-00000260968f', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-00000260968f', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-00000260968f', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-00000260968f', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-00000260968f', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-00000260968f', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-00000260968f', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-00000260968f', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-00000260968f', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-00000260968f', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-00000260968f', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-00000260968f', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-00000260968f', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-00000260968f', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-00000260968f', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-00000260968f', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-00000260968f', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-00000260968f', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-00000260968f', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-00000260968f', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'Welches deutsche Wort bedeutet "science"?', '["das Experiment","das Labor","die Forschung","die Theorie"]', 'die Wissenschaft', '"science" = "die Wissenschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["das Experiment","die Forschung","die Wissenschaft","das Labor"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'Welches deutsche Wort bedeutet "laboratory"?', '["die Forschung","das Labor","die Wissenschaft","das Experiment"]', 'das Labor', '"laboratory" = "das Labor" in German. Article: das Plural: die Labore', 1, 3),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'Welches deutsche Wort bedeutet "experiment"?', '["das Experiment","die Wissenschaft","die Forschung","das Labor"]', 'das Experiment', '"experiment" = "das Experiment" in German. Article: das Plural: die Experimente', 1, 4),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'Welches deutsche Wort bedeutet "theory"?', '["die Forschung","die Wissenschaft","die Theorie","das Labor"]', 'die Theorie', '"theory" = "die Theorie" in German. Article: die Plural: die Theorien', 1, 5),
  ('00000000-0000-4000-a000-00000260968f', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern Science. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00000260968f', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Science."', '["Ich lerne über Science.","Ich lerne Science.","Lerne ich Science."]', 'Ich lerne über Science.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00000260968f', 'matching', 'Match: Which word pairs are correct?', '["die Wissenschaft - science, die Forschung - research"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'Was bedeutet "die Wissenschaft" auf Deutsch?', '["science","to run","beautiful","yesterday"]', 'science', 1, 1),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'Welcher Artikel gehört zu "die Forschung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00000260968f', 'true_false', 'Das Wort "das Labor" gehört zum Thema Science.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-00000260968f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00000260968f', 'fill_blank', 'Complete: Ich ___ (experiment) Deutsch.', '["das Experiment","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'Wie lautet das deutsche Wort für "theory"?', '["die Theorie","die Biologie","die Chemie","die Physik"]', 'die Theorie', 1, 7),
  ('00000000-0000-4000-a000-00000260968f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00000260968f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 1),
  ('00000000-0000-4000-a000-00000260968f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 2),
  ('00000000-0000-4000-a000-00000260968f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 3),
  ('00000000-0000-4000-a000-00000260968f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'die die Wissenschaft', 'science — العلم', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00000260968f', 'die die Forschung', 'research — البحث العلمي', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00000260968f', 'das das Labor (die Labore)', 'laboratory — المختبر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00000260968f', 'das das Experiment (die Experimente)', 'experiment — التجربة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00000260968f', 'die die Theorie (die Theorien)', 'theory — النظرية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00000260968f', 'die die Biologie', 'biology — علم الأحياء', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00000260968f', 'die die Chemie', 'chemistry — الكيمياء', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00000260968f', 'die die Physik', 'physics — الفيزياء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00000260968f', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00000260968f', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00000260968f', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00000260968f', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00000260968f', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00000260968f', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00000260968f', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00000260968f', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-00000260968f', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00000260968f', 'Wissenschaftliche Themen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00000260968f', 'Wissenschaftliche Themen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Wissenschaft und Technik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00000260968f', '🔊 Sprechen: Wissenschaftliche Themen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Science with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Science', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00000260968f', '✏️ Schreiben: Wissenschaftliche Themen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Science". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000260968f', 'Wissenschaftliche Themen — Roleplay', 'Science', 'Student', 'Teacher', 'Practice conversation about Science', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000260968f', 'Wissenschaftliche Themen — Advanced Roleplay', 'Science', 'Customer', 'Assistant', 'Extended conversation about Science', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00000260968f', 'Wissenschaftliche Themen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Themen".', 'Creative practice for Science', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00000260968f', '📚 Hausaufgabe: Wissenschaftliche Themen', 'Complete these tasks to reinforce "Wissenschaftliche Themen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Science: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Science. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00000260968f', '🎯 Excellent progress! This lesson covered Science (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of science. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Science","present_tense — grammar explanation and practice","Reading comprehension: text about Science","Listening comprehension: dialogue about Science","Speaking practice: roleplay/discussion about Science","Writing task: text about Science"]', '[{"title":"Wissenschaftliche Themen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wissenschaft (science)','die Forschung (research)','das Labor (laboratory)','das Experiment (experiment)','die Theorie (theory)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Science for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'translation', 'Translate to German: "I use the word "science" in a sentence about Science."', '[]', 'Die Wissenschaft macht Fortschritte.', 'Use die  "die Wissenschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'translation', 'Translate to German: "I use the word "research" in a sentence about Science."', '[]', 'Die Forschung an Krebs läuft.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'translation', 'Translate to German: "I use the word "laboratory" in a sentence about Science."', '[]', 'Das Labor ist modern ausgestattet.', 'Use das  "das Labor" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Culture: 🇩🇪 Deutsche Kultur: Science', 'Science in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Science in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Science في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Technologie und Innovation (L-B2-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002609690', '00000000-0000-4000-a000-000039c35f40', 'Technologie und Innovation', 'Discuss technology, AI, and digitalization.', 'Technology & Innovation', 'vocabulary', '["Understand and use 71 key vocabulary words about Technology & Innovation","Apply present_tense correctly in sentences","Read and comprehend a text about Technology & Innovation","Listen and understand a natural dialogue about Technology & Innovation","Speak about Technology & Innovation with confidence","Write a short text about Technology & Innovation using new vocabulary"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 1),
  ('00000000-0000-4000-a000-000002609690', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 2),
  ('00000000-0000-4000-a000-000002609690', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 3),
  ('00000000-0000-4000-a000-000002609690', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 4),
  ('00000000-0000-4000-a000-000002609690', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 5),
  ('00000000-0000-4000-a000-000002609690', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 6),
  ('00000000-0000-4000-a000-000002609690', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 7),
  ('00000000-0000-4000-a000-000002609690', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 8),
  ('00000000-0000-4000-a000-000002609690', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002609690', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002609690', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002609690', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002609690', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002609690', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002609690', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002609690', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002609690', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002609690', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002609690', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002609690', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002609690', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002609690', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002609690', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002609690', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002609690', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002609690', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002609690', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002609690', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002609690', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002609690', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'Welches deutsche Wort bedeutet "science"?', '["die Wissenschaft","die Forschung","die Theorie","das Labor"]', 'die Wissenschaft', '"science" = "die Wissenschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Forschung","das Experiment","die Wissenschaft","die Theorie"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'Welches deutsche Wort bedeutet "laboratory"?', '["das Labor","die Wissenschaft","das Experiment","die Theorie"]', 'das Labor', '"laboratory" = "das Labor" in German. Article: das Plural: die Labore', 1, 3),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'Welches deutsche Wort bedeutet "experiment"?', '["die Forschung","das Labor","die Wissenschaft","die Theorie"]', 'das Experiment', '"experiment" = "das Experiment" in German. Article: das Plural: die Experimente', 1, 4),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'Welches deutsche Wort bedeutet "theory"?', '["das Labor","die Wissenschaft","die Theorie","das Experiment"]', 'die Theorie', '"theory" = "die Theorie" in German. Article: die Plural: die Theorien', 1, 5),
  ('00000000-0000-4000-a000-000002609690', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Technology & Innovation. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002609690', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Technology & Innovation."', '["Ich lerne über Technology & Innovation.","Ich lerne Technology & Innovation.","Lerne ich Technology & Innovation."]', 'Ich lerne über Technology & Innovation.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002609690', 'matching', 'Match: Which word pairs are correct?', '["die Wissenschaft - science, die Forschung - research"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'Was bedeutet "die Wissenschaft" auf Deutsch?', '["science","to run","beautiful","yesterday"]', 'science', 1, 1),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'Welcher Artikel gehört zu "die Forschung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000002609690', 'true_false', 'Das Wort "das Labor" gehört zum Thema Technology & Innovation.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-000002609690', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002609690', 'fill_blank', 'Complete: Ich ___ (experiment) Deutsch.', '["das Experiment","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'Wie lautet das deutsche Wort für "theory"?', '["die Theorie","die Biologie","die Chemie","die Physik"]', 'die Theorie', 1, 7),
  ('00000000-0000-4000-a000-000002609690', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002609690', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002609690', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002609690', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002609690', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'die die Wissenschaft', 'science — العلم', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002609690', 'die die Forschung', 'research — البحث العلمي', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002609690', 'das das Labor (die Labore)', 'laboratory — المختبر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002609690', 'das das Experiment (die Experimente)', 'experiment — التجربة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002609690', 'die die Theorie (die Theorien)', 'theory — النظرية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002609690', 'die die Biologie', 'biology — علم الأحياء', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002609690', 'die die Chemie', 'chemistry — الكيمياء', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002609690', 'die die Physik', 'physics — الفيزياء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002609690', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002609690', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002609690', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002609690', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002609690', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002609690', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002609690', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002609690', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002609690', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-000002609690', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002609690', 'Technologie und Innovation — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002609690', 'Technologie und Innovation — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Wissenschaft und Technik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002609690', '🔊 Sprechen: Technologie und Innovation', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Technology & Innovation with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Technology & Innovation', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002609690', '✏️ Schreiben: Technologie und Innovation', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Technology & Innovation". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609690', 'Technologie und Innovation — Roleplay', 'Technology & Innovation', 'Student', 'Teacher', 'Practice conversation about Technology & Innovation', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609690', 'Technologie und Innovation — Advanced Roleplay', 'Technology & Innovation', 'Customer', 'Assistant', 'Extended conversation about Technology & Innovation', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002609690', 'Technologie und Innovation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Technologie und Innovation".', 'Creative practice for Technology & Innovation', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002609690', '📚 Hausaufgabe: Technologie und Innovation', 'Complete these tasks to reinforce "Technologie und Innovation".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Technology & Innovation: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Technology & Innovation. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002609690', '🎯 Excellent progress! This lesson covered Technology & Innovation (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of science. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Technology & Innovation","present_tense — grammar explanation and practice","Reading comprehension: text about Technology & Innovation","Listening comprehension: dialogue about Technology & Innovation","Speaking practice: roleplay/discussion about Technology & Innovation","Writing task: text about Technology & Innovation"]', '[{"title":"Technologie und Innovation Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wissenschaft (science)','die Forschung (research)','das Labor (laboratory)','das Experiment (experiment)','die Theorie (theory)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Technology & Innovation for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'translation', 'Translate to German: "I use the word "science" in a sentence about Technology & Innovation."', '[]', 'Die Wissenschaft macht Fortschritte.', 'Use die  "die Wissenschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'translation', 'Translate to German: "I use the word "research" in a sentence about Technology & Innovation."', '[]', 'Die Forschung an Krebs läuft.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'translation', 'Translate to German: "I use the word "laboratory" in a sentence about Technology & Innovation."', '[]', 'Das Labor ist modern ausgestattet.', 'Use das  "das Labor" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Culture: 🇩🇪 Deutsche Kultur: Technology & Innovation', 'Technology & Innovation in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Technology & Innovation in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Technology & Innovation في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Nomen-Verb-Verbindungen (L-B2-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002609691', '00000000-0000-4000-a000-000039c35f40', 'Nomen-Verb-Verbindungen', 'Learn noun-verb collocations common in academic German.', 'Noun-Verb Combinations', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 1),
  ('00000000-0000-4000-a000-000002609691', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 2),
  ('00000000-0000-4000-a000-000002609691', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 3),
  ('00000000-0000-4000-a000-000002609691', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 4),
  ('00000000-0000-4000-a000-000002609691', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 5),
  ('00000000-0000-4000-a000-000002609691', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 6),
  ('00000000-0000-4000-a000-000002609691', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 7),
  ('00000000-0000-4000-a000-000002609691', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 8),
  ('00000000-0000-4000-a000-000002609691', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002609691', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002609691', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002609691', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002609691', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002609691', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002609691', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002609691', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002609691', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002609691', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002609691', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002609691', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002609691', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002609691', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002609691', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002609691', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002609691', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002609691', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002609691', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002609691', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002609691', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002609691', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'Welches deutsche Wort bedeutet "science"?', '["die Theorie","das Experiment","die Forschung","die Wissenschaft"]', 'die Wissenschaft', '"science" = "die Wissenschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["das Experiment","das Labor","die Wissenschaft","die Forschung"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'Welches deutsche Wort bedeutet "laboratory"?', '["das Labor","die Wissenschaft","die Forschung","die Theorie"]', 'das Labor', '"laboratory" = "das Labor" in German. Article: das Plural: die Labore', 1, 3),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'Welches deutsche Wort bedeutet "experiment"?', '["die Forschung","das Experiment","die Theorie","die Wissenschaft"]', 'das Experiment', '"experiment" = "das Experiment" in German. Article: das Plural: die Experimente', 1, 4),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'Welches deutsche Wort bedeutet "theory"?', '["die Theorie","die Wissenschaft","die Forschung","das Labor"]', 'die Theorie', '"theory" = "die Theorie" in German. Article: die Plural: die Theorien', 1, 5),
  ('00000000-0000-4000-a000-000002609691', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Noun-Verb Combinations. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002609691', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Noun-Verb Combinations."', '["Ich lerne über Noun-Verb Combinations.","Ich lerne Noun-Verb Combinations.","Lerne ich Noun-Verb Combinations."]', 'Ich lerne über Noun-Verb Combinations.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002609691', 'matching', 'Match: Which word pairs are correct?', '["die Wissenschaft - science, die Forschung - research"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'Was bedeutet "die Wissenschaft" auf Deutsch?', '["science","to run","beautiful","yesterday"]', 'science', 1, 1),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'Welcher Artikel gehört zu "die Forschung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000002609691', 'true_false', 'Das Wort "das Labor" gehört zum Thema Noun-Verb Combinations.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-000002609691', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002609691', 'fill_blank', 'Complete: Ich ___ (experiment) Deutsch.', '["das Experiment","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'Wie lautet das deutsche Wort für "theory"?', '["die Theorie","die Biologie","die Chemie","die Physik"]', 'die Theorie', 1, 7),
  ('00000000-0000-4000-a000-000002609691', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002609691', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002609691', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002609691', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002609691', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'die die Wissenschaft', 'science — العلم', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002609691', 'die die Forschung', 'research — البحث العلمي', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002609691', 'das das Labor (die Labore)', 'laboratory — المختبر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002609691', 'das das Experiment (die Experimente)', 'experiment — التجربة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002609691', 'die die Theorie (die Theorien)', 'theory — النظرية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002609691', 'die die Biologie', 'biology — علم الأحياء', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002609691', 'die die Chemie', 'chemistry — الكيمياء', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002609691', 'die die Physik', 'physics — الفيزياء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002609691', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002609691', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002609691', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002609691', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002609691', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002609691', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002609691', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002609691', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002609691', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002609691', 'Nomen-Verb-Verbindungen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002609691', 'Nomen-Verb-Verbindungen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Wissenschaft und Technik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002609691', '🔊 Sprechen: Nomen-Verb-Verbindungen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Noun-Verb Combinations with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Noun-Verb Combinations', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002609691', '✏️ Schreiben: Nomen-Verb-Verbindungen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Noun-Verb Combinations". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609691', 'Nomen-Verb-Verbindungen — Roleplay', 'Noun-Verb Combinations', 'Student', 'Teacher', 'Practice conversation about Noun-Verb Combinations', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609691', 'Nomen-Verb-Verbindungen — Advanced Roleplay', 'Noun-Verb Combinations', 'Customer', 'Assistant', 'Extended conversation about Noun-Verb Combinations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002609691', 'Nomen-Verb-Verbindungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nomen-Verb-Verbindungen".', 'Creative practice for Noun-Verb Combinations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002609691', '📚 Hausaufgabe: Nomen-Verb-Verbindungen', 'Complete these tasks to reinforce "Nomen-Verb-Verbindungen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Noun-Verb Combinations: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Noun-Verb Combinations. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002609691', '🎯 Excellent progress! This lesson covered Noun-Verb Combinations (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of science. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Noun-Verb Combinations","present_tense — grammar explanation and practice","Reading comprehension: text about Noun-Verb Combinations","Listening comprehension: dialogue about Noun-Verb Combinations","Speaking practice: roleplay/discussion about Noun-Verb Combinations","Writing task: text about Noun-Verb Combinations"]', '[{"title":"Nomen-Verb-Verbindungen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wissenschaft (science)','die Forschung (research)','das Labor (laboratory)','das Experiment (experiment)','die Theorie (theory)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Noun-Verb Combinations for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'translation', 'Translate to German: "I use the word "science" in a sentence about Noun-Verb Combinations."', '[]', 'Die Wissenschaft macht Fortschritte.', 'Use die  "die Wissenschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'translation', 'Translate to German: "I use the word "research" in a sentence about Noun-Verb Combinations."', '[]', 'Die Forschung an Krebs läuft.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'translation', 'Translate to German: "I use the word "laboratory" in a sentence about Noun-Verb Combinations."', '[]', 'Das Labor ist modern ausgestattet.', 'Use das  "das Labor" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Culture: 🇩🇪 Deutsche Kultur: Noun-Verb Combinations', 'Noun-Verb Combinations in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Noun-Verb Combinations in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Noun-Verb Combinations في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Futur I und II (L-B2-03-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002609692', '00000000-0000-4000-a000-000039c35f40', 'Futur I und II', 'Learn future tenses for predictions and assumptions.', 'Future Tenses', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 1),
  ('00000000-0000-4000-a000-000002609692', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 2),
  ('00000000-0000-4000-a000-000002609692', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 3),
  ('00000000-0000-4000-a000-000002609692', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 4),
  ('00000000-0000-4000-a000-000002609692', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 5),
  ('00000000-0000-4000-a000-000002609692', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 6),
  ('00000000-0000-4000-a000-000002609692', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 7),
  ('00000000-0000-4000-a000-000002609692', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 8),
  ('00000000-0000-4000-a000-000002609692', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002609692', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002609692', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002609692', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002609692', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002609692', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002609692', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002609692', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002609692', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002609692', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002609692', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002609692', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002609692', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002609692', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002609692', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002609692', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002609692', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002609692', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002609692', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002609692', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002609692', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002609692', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'Welches deutsche Wort bedeutet "science"?', '["das Experiment","die Forschung","die Wissenschaft","die Theorie"]', 'die Wissenschaft', '"science" = "die Wissenschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["die Theorie","das Labor","die Wissenschaft","die Forschung"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'Welches deutsche Wort bedeutet "laboratory"?', '["die Wissenschaft","das Experiment","das Labor","die Forschung"]', 'das Labor', '"laboratory" = "das Labor" in German. Article: das Plural: die Labore', 1, 3),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'Welches deutsche Wort bedeutet "experiment"?', '["die Theorie","das Labor","die Forschung","die Wissenschaft"]', 'das Experiment', '"experiment" = "das Experiment" in German. Article: das Plural: die Experimente', 1, 4),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'Welches deutsche Wort bedeutet "theory"?', '["die Theorie","die Wissenschaft","die Forschung","das Experiment"]', 'die Theorie', '"theory" = "die Theorie" in German. Article: die Plural: die Theorien', 1, 5),
  ('00000000-0000-4000-a000-000002609692', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern Future Tenses. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002609692', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Future Tenses."', '["Ich lerne über Future Tenses.","Ich lerne Future Tenses.","Lerne ich Future Tenses."]', 'Ich lerne über Future Tenses.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002609692', 'matching', 'Match: Which word pairs are correct?', '["die Wissenschaft - science, die Forschung - research"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'Was bedeutet "die Wissenschaft" auf Deutsch?', '["science","to run","beautiful","yesterday"]', 'science', 1, 1),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'Welcher Artikel gehört zu "die Forschung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000002609692', 'true_false', 'Das Wort "das Labor" gehört zum Thema Future Tenses.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-000002609692', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002609692', 'fill_blank', 'Complete: Ich ___ (experiment) Deutsch.', '["das Experiment","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'Wie lautet das deutsche Wort für "theory"?', '["die Theorie","die Biologie","die Chemie","die Physik"]', 'die Theorie', 1, 7),
  ('00000000-0000-4000-a000-000002609692', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002609692', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002609692', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002609692', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002609692', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'die die Wissenschaft', 'science — العلم', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002609692', 'die die Forschung', 'research — البحث العلمي', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002609692', 'das das Labor (die Labore)', 'laboratory — المختبر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002609692', 'das das Experiment (die Experimente)', 'experiment — التجربة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002609692', 'die die Theorie (die Theorien)', 'theory — النظرية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002609692', 'die die Biologie', 'biology — علم الأحياء', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002609692', 'die die Chemie', 'chemistry — الكيمياء', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002609692', 'die die Physik', 'physics — الفيزياء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002609692', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002609692', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002609692', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002609692', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002609692', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002609692', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002609692', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002609692', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002609692', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-000002609692', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002609692', 'Futur I und II — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002609692', 'Futur I und II — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Wissenschaft und Technik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002609692', '🔊 Sprechen: Futur I und II', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Future Tenses with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Future Tenses', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002609692', '✏️ Schreiben: Futur I und II', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Future Tenses". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609692', 'Futur I und II — Roleplay', 'Future Tenses', 'Student', 'Teacher', 'Practice conversation about Future Tenses', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609692', 'Futur I und II — Advanced Roleplay', 'Future Tenses', 'Customer', 'Assistant', 'Extended conversation about Future Tenses', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002609692', 'Futur I und II — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Futur I und II".', 'Creative practice for Future Tenses', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002609692', '📚 Hausaufgabe: Futur I und II', 'Complete these tasks to reinforce "Futur I und II".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Future Tenses: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Future Tenses. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002609692', '🎯 Excellent progress! This lesson covered Future Tenses (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of science. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Future Tenses","present_tense — grammar explanation and practice","Reading comprehension: text about Future Tenses","Listening comprehension: dialogue about Future Tenses","Speaking practice: roleplay/discussion about Future Tenses","Writing task: text about Future Tenses"]', '[{"title":"Futur I und II Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wissenschaft (science)','die Forschung (research)','das Labor (laboratory)','das Experiment (experiment)','die Theorie (theory)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Future Tenses for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'translation', 'Translate to German: "I use the word "science" in a sentence about Future Tenses."', '[]', 'Die Wissenschaft macht Fortschritte.', 'Use die  "die Wissenschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'translation', 'Translate to German: "I use the word "research" in a sentence about Future Tenses."', '[]', 'Die Forschung an Krebs läuft.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'translation', 'Translate to German: "I use the word "laboratory" in a sentence about Future Tenses."', '[]', 'Das Labor ist modern ausgestattet.', 'Use das  "das Labor" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Culture: 🇩🇪 Deutsche Kultur: Future Tenses', 'Future Tenses in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Future Tenses in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Future Tenses في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 5: Test: Wissenschaft und Technik (L-B2-03-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002609693', '00000000-0000-4000-a000-000039c35f40', 'Test: Wissenschaft und Technik', 'Module test on science and technology.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 1),
  ('00000000-0000-4000-a000-000002609693', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 2),
  ('00000000-0000-4000-a000-000002609693', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 3),
  ('00000000-0000-4000-a000-000002609693', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 4),
  ('00000000-0000-4000-a000-000002609693', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 5),
  ('00000000-0000-4000-a000-000002609693', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 6),
  ('00000000-0000-4000-a000-000002609693', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 7),
  ('00000000-0000-4000-a000-000002609693', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 8),
  ('00000000-0000-4000-a000-000002609693', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002609693', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002609693', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002609693', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002609693', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002609693', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002609693', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002609693', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002609693', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002609693', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002609693', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002609693', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002609693', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002609693', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002609693', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002609693', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002609693', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002609693', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002609693', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002609693', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002609693', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002609693', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'Welches deutsche Wort bedeutet "science"?', '["das Experiment","das Labor","die Forschung","die Wissenschaft"]', 'die Wissenschaft', '"science" = "die Wissenschaft" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'Welches deutsche Wort bedeutet "research"?', '["das Experiment","das Labor","die Theorie","die Wissenschaft"]', 'die Forschung', '"research" = "die Forschung" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'Welches deutsche Wort bedeutet "laboratory"?', '["die Forschung","das Experiment","die Wissenschaft","das Labor"]', 'das Labor', '"laboratory" = "das Labor" in German. Article: das Plural: die Labore', 1, 3),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'Welches deutsche Wort bedeutet "experiment"?', '["das Labor","die Forschung","die Wissenschaft","das Experiment"]', 'das Experiment', '"experiment" = "das Experiment" in German. Article: das Plural: die Experimente', 1, 4),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'Welches deutsche Wort bedeutet "theory"?', '["das Experiment","die Theorie","die Wissenschaft","die Forschung"]', 'die Theorie', '"theory" = "die Theorie" in German. Article: die Plural: die Theorien', 1, 5),
  ('00000000-0000-4000-a000-000002609693', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002609693', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002609693', 'matching', 'Match: Which word pairs are correct?', '["die Wissenschaft - science, die Forschung - research"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'Was bedeutet "die Wissenschaft" auf Deutsch?', '["science","to run","beautiful","yesterday"]', 'science', 1, 1),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'Welcher Artikel gehört zu "die Forschung"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000002609693', 'true_false', 'Das Wort "das Labor" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-000002609693', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002609693', 'fill_blank', 'Complete: Ich ___ (experiment) Deutsch.', '["das Experiment","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'Wie lautet das deutsche Wort für "theory"?', '["die Theorie","die Biologie","die Chemie","die Physik"]', 'die Theorie', 1, 7),
  ('00000000-0000-4000-a000-000002609693', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002609693', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002609693', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002609693', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002609693', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wissenschaft und Technik', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'die die Wissenschaft', 'science — العلم', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002609693', 'die die Forschung', 'research — البحث العلمي', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002609693', 'das das Labor (die Labore)', 'laboratory — المختبر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002609693', 'das das Experiment (die Experimente)', 'experiment — التجربة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002609693', 'die die Theorie (die Theorien)', 'theory — النظرية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002609693', 'die die Biologie', 'biology — علم الأحياء', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002609693', 'die die Chemie', 'chemistry — الكيمياء', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002609693', 'die die Physik', 'physics — الفيزياء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002609693', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002609693', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002609693', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002609693', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002609693', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002609693', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002609693', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002609693', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002609693', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002609693', 'Test: Wissenschaft und Technik — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002609693', 'Test: Wissenschaft und Technik — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Wissenschaft und Technik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002609693', '🔊 Sprechen: Test: Wissenschaft und Technik', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Module Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002609693', '✏️ Schreiben: Test: Wissenschaft und Technik', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Module Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609693', 'Test: Wissenschaft und Technik — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609693', 'Test: Wissenschaft und Technik — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002609693', 'Test: Wissenschaft und Technik — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Wissenschaft und Technik".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002609693', '📚 Hausaufgabe: Test: Wissenschaft und Technik', 'Complete these tasks to reinforce "Test: Wissenschaft und Technik".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002609693', '🎯 Excellent progress! This lesson covered Module Test (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of science. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Wissenschaft und Technik Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Wissenschaft (science)','die Forschung (research)','das Labor (laboratory)','das Experiment (experiment)','die Theorie (theory)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'translation', 'Translate to German: "I use the word "science" in a sentence about Module Test."', '[]', 'Die Wissenschaft macht Fortschritte.', 'Use die  "die Wissenschaft" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'translation', 'Translate to German: "I use the word "research" in a sentence about Module Test."', '[]', 'Die Forschung an Krebs läuft.', 'Use die  "die Forschung" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'translation', 'Translate to German: "I use the word "laboratory" in a sentence about Module Test."', '[]', 'Das Labor ist modern ausgestattet.', 'Use das  "das Labor" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'Module Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Module Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Module 4: Wirtschaft und Finanzen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f41', 'B2', 'Wirtschaft und Finanzen', 'Understand business and financial vocabulary and concepts.', '["Understand business vocabulary","Discuss economic topics","Use Genitiv and Genitivpräpositionen","Read financial reports","Discuss money and investments"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Wirtschaftliche Grundbegriffe (L-B2-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002610aee', '00000000-0000-4000-a000-000039c35f41', 'Wirtschaftliche Grundbegriffe', 'Learn basic economic and business vocabulary.', 'Economics Basics', 'vocabulary', '["Understand and use 71 key vocabulary words about Economics Basics","Apply present_tense correctly in sentences","Read and comprehend a text about Economics Basics","Listen and understand a natural dialogue about Economics Basics","Speak about Economics Basics with confidence","Write a short text about Economics Basics using new vocabulary"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 1),
  ('00000000-0000-4000-a000-000002610aee', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 2),
  ('00000000-0000-4000-a000-000002610aee', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 3),
  ('00000000-0000-4000-a000-000002610aee', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 4),
  ('00000000-0000-4000-a000-000002610aee', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 5),
  ('00000000-0000-4000-a000-000002610aee', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 6),
  ('00000000-0000-4000-a000-000002610aee', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 7),
  ('00000000-0000-4000-a000-000002610aee', 'die Schulden', 'الديون', 'debt', NULL, 'die', NULL, 'noun', 'Die Schulden des Landes wachsen.', 'The country''s debt is growing.', 'B2', 8),
  ('00000000-0000-4000-a000-000002610aee', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002610aee', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002610aee', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002610aee', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002610aee', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002610aee', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002610aee', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002610aee', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002610aee', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002610aee', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002610aee', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002610aee', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002610aee', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002610aee', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002610aee', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002610aee', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 24),
  ('00000000-0000-4000-a000-000002610aee', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 25),
  ('00000000-0000-4000-a000-000002610aee', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 26),
  ('00000000-0000-4000-a000-000002610aee', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 27),
  ('00000000-0000-4000-a000-000002610aee', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 28),
  ('00000000-0000-4000-a000-000002610aee', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002610aee', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'Welches deutsche Wort bedeutet "inflation"?', '["die Inflation","der Zins","das BIP","die Steuer"]', 'die Inflation', '"inflation" = "die Inflation" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'Welches deutsche Wort bedeutet "interest"?', '["das Budget","die Steuer","das BIP","die Inflation"]', 'der Zins', '"interest" = "der Zins" in German. Article: der Plural: die Zinsen', 1, 2),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'Welches deutsche Wort bedeutet "GDP"?', '["die Steuer","das Budget","das BIP","die Inflation"]', 'das BIP', '"GDP" = "das BIP" in German. Article: das ', 1, 3),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'Welches deutsche Wort bedeutet "tax"?', '["der Zins","das BIP","das Budget","die Inflation"]', 'die Steuer', '"tax" = "die Steuer" in German. Article: die Plural: die Steuern', 1, 4),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'Welches deutsche Wort bedeutet "budget"?', '["das Budget","das BIP","die Inflation","die Steuer"]', 'das Budget', '"budget" = "das Budget" in German. Article: das Plural: die Budgets', 1, 5),
  ('00000000-0000-4000-a000-000002610aee', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Economics Basics. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002610aee', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Economics Basics."', '["Ich lerne über Economics Basics.","Ich lerne Economics Basics.","Lerne ich Economics Basics."]', 'Ich lerne über Economics Basics.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002610aee', 'matching', 'Match: Which word pairs are correct?', '["die Inflation - inflation, der Zins - interest"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'Was bedeutet "die Inflation" auf Deutsch?', '["inflation","to run","beautiful","yesterday"]', 'inflation', 1, 1),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'Welcher Artikel gehört zu "der Zins"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002610aee', 'true_false', 'Das Wort "das BIP" gehört zum Thema Economics Basics.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-000002610aee', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002610aee', 'fill_blank', 'Complete: Ich ___ (tax) Deutsch.', '["die Steuer","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'Wie lautet das deutsche Wort für "budget"?', '["das Budget","die Anlage","der Gewinn","die Schulden"]', 'das Budget', 1, 7),
  ('00000000-0000-4000-a000-000002610aee', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002610aee', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002610aee', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002610aee', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002610aee', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'die die Inflation', 'inflation — التضخم', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002610aee', 'der der Zins (die Zinsen)', 'interest — الفائدة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002610aee', 'das das BIP', 'GDP — الناتج المحلي الإجمالي', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002610aee', 'die die Steuer (die Steuern)', 'tax — الضريبة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002610aee', 'das das Budget (die Budgets)', 'budget — الميزانية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002610aee', 'die die Anlage (die Anlagen)', 'investment — الاستثمار', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002610aee', 'der der Gewinn (die Gewinne)', 'profit — الربح', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002610aee', 'die die Schulden', 'debt — الديون', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002610aee', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002610aee', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002610aee', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002610aee', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002610aee', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002610aee', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002610aee', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002610aee', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002610aee', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002610aee', 'Wirtschaftliche Grundbegriffe — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002610aee', 'Wirtschaftliche Grundbegriffe — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Wirtschaft und Finanzen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002610aee', '🔊 Sprechen: Wirtschaftliche Grundbegriffe', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Economics Basics with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Economics Basics', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002610aee', '✏️ Schreiben: Wirtschaftliche Grundbegriffe', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Economics Basics". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610aee', 'Wirtschaftliche Grundbegriffe — Roleplay', 'Economics Basics', 'Student', 'Teacher', 'Practice conversation about Economics Basics', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610aee', 'Wirtschaftliche Grundbegriffe — Advanced Roleplay', 'Economics Basics', 'Customer', 'Assistant', 'Extended conversation about Economics Basics', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002610aee', 'Wirtschaftliche Grundbegriffe — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftliche Grundbegriffe".', 'Creative practice for Economics Basics', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002610aee', '📚 Hausaufgabe: Wirtschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Wirtschaftliche Grundbegriffe".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Economics Basics: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Economics Basics. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002610aee', '🎯 Excellent progress! This lesson covered Economics Basics (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of economy. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Economics Basics","present_tense — grammar explanation and practice","Reading comprehension: text about Economics Basics","Listening comprehension: dialogue about Economics Basics","Speaking practice: roleplay/discussion about Economics Basics","Writing task: text about Economics Basics"]', '[{"title":"Wirtschaftliche Grundbegriffe Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Inflation (inflation)','der Zins (interest)','das BIP (GDP)','die Steuer (tax)','das Budget (budget)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Economics Basics for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'translation', 'Translate to German: "I use the word "inflation" in a sentence about Economics Basics."', '[]', 'Die Inflation steigt.', 'Use die  "die Inflation" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'translation', 'Translate to German: "I use the word "interest" in a sentence about Economics Basics."', '[]', 'Die Zinsen sind niedrig.', 'Use der  "der Zins" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'translation', 'Translate to German: "I use the word "GDP" in a sentence about Economics Basics."', '[]', 'Das BIP wächst um 2 Prozent.', 'Use das  "das BIP" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Culture: 🇩🇪 Deutsche Kultur: Economics Basics', 'Economics Basics in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Economics Basics in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Economics Basics في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Bankwesen und Finanzen (L-B2-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002610aef', '00000000-0000-4000-a000-000039c35f41', 'Bankwesen und Finanzen', 'Learn banking and financial vocabulary.', 'Banking & Finance', 'vocabulary', '["Understand and use 71 key vocabulary words about Banking & Finance","Apply present_tense correctly in sentences","Read and comprehend a text about Banking & Finance","Listen and understand a natural dialogue about Banking & Finance","Speak about Banking & Finance with confidence","Write a short text about Banking & Finance using new vocabulary"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 1),
  ('00000000-0000-4000-a000-000002610aef', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 2),
  ('00000000-0000-4000-a000-000002610aef', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 3),
  ('00000000-0000-4000-a000-000002610aef', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 4),
  ('00000000-0000-4000-a000-000002610aef', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 5),
  ('00000000-0000-4000-a000-000002610aef', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 6),
  ('00000000-0000-4000-a000-000002610aef', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 7),
  ('00000000-0000-4000-a000-000002610aef', 'die Schulden', 'الديون', 'debt', NULL, 'die', NULL, 'noun', 'Die Schulden des Landes wachsen.', 'The country''s debt is growing.', 'B2', 8),
  ('00000000-0000-4000-a000-000002610aef', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002610aef', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002610aef', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002610aef', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002610aef', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002610aef', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002610aef', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002610aef', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002610aef', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002610aef', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002610aef', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002610aef', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002610aef', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002610aef', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002610aef', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002610aef', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 24),
  ('00000000-0000-4000-a000-000002610aef', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 25),
  ('00000000-0000-4000-a000-000002610aef', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 26),
  ('00000000-0000-4000-a000-000002610aef', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 27),
  ('00000000-0000-4000-a000-000002610aef', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 28),
  ('00000000-0000-4000-a000-000002610aef', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002610aef', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'Welches deutsche Wort bedeutet "inflation"?', '["das BIP","die Inflation","das Budget","die Steuer"]', 'die Inflation', '"inflation" = "die Inflation" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'Welches deutsche Wort bedeutet "interest"?', '["die Inflation","der Zins","das BIP","die Steuer"]', 'der Zins', '"interest" = "der Zins" in German. Article: der Plural: die Zinsen', 1, 2),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'Welches deutsche Wort bedeutet "GDP"?', '["der Zins","die Inflation","die Steuer","das Budget"]', 'das BIP', '"GDP" = "das BIP" in German. Article: das ', 1, 3),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'Welches deutsche Wort bedeutet "tax"?', '["die Inflation","die Steuer","das BIP","der Zins"]', 'die Steuer', '"tax" = "die Steuer" in German. Article: die Plural: die Steuern', 1, 4),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'Welches deutsche Wort bedeutet "budget"?', '["das Budget","die Inflation","der Zins","das BIP"]', 'das Budget', '"budget" = "das Budget" in German. Article: das Plural: die Budgets', 1, 5),
  ('00000000-0000-4000-a000-000002610aef', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Banking & Finance. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002610aef', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Banking & Finance."', '["Ich lerne über Banking & Finance.","Ich lerne Banking & Finance.","Lerne ich Banking & Finance."]', 'Ich lerne über Banking & Finance.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002610aef', 'matching', 'Match: Which word pairs are correct?', '["die Inflation - inflation, der Zins - interest"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'Was bedeutet "die Inflation" auf Deutsch?', '["inflation","to run","beautiful","yesterday"]', 'inflation', 1, 1),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'Welcher Artikel gehört zu "der Zins"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002610aef', 'true_false', 'Das Wort "das BIP" gehört zum Thema Banking & Finance.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-000002610aef', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002610aef', 'fill_blank', 'Complete: Ich ___ (tax) Deutsch.', '["die Steuer","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'Wie lautet das deutsche Wort für "budget"?', '["das Budget","die Anlage","der Gewinn","die Schulden"]', 'das Budget', 1, 7),
  ('00000000-0000-4000-a000-000002610aef', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002610aef', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002610aef', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002610aef', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002610aef', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'die die Inflation', 'inflation — التضخم', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002610aef', 'der der Zins (die Zinsen)', 'interest — الفائدة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002610aef', 'das das BIP', 'GDP — الناتج المحلي الإجمالي', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002610aef', 'die die Steuer (die Steuern)', 'tax — الضريبة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002610aef', 'das das Budget (die Budgets)', 'budget — الميزانية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002610aef', 'die die Anlage (die Anlagen)', 'investment — الاستثمار', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002610aef', 'der der Gewinn (die Gewinne)', 'profit — الربح', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002610aef', 'die die Schulden', 'debt — الديون', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002610aef', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002610aef', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002610aef', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002610aef', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002610aef', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002610aef', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002610aef', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002610aef', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002610aef', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-000002610aef', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002610aef', 'Bankwesen und Finanzen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002610aef', 'Bankwesen und Finanzen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Wirtschaft und Finanzen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002610aef', '🔊 Sprechen: Bankwesen und Finanzen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Banking & Finance with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Banking & Finance', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002610aef', '✏️ Schreiben: Bankwesen und Finanzen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Banking & Finance". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610aef', 'Bankwesen und Finanzen — Roleplay', 'Banking & Finance', 'Student', 'Teacher', 'Practice conversation about Banking & Finance', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610aef', 'Bankwesen und Finanzen — Advanced Roleplay', 'Banking & Finance', 'Customer', 'Assistant', 'Extended conversation about Banking & Finance', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002610aef', 'Bankwesen und Finanzen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Bankwesen und Finanzen".', 'Creative practice for Banking & Finance', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002610aef', '📚 Hausaufgabe: Bankwesen und Finanzen', 'Complete these tasks to reinforce "Bankwesen und Finanzen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Banking & Finance: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Banking & Finance. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002610aef', '🎯 Excellent progress! This lesson covered Banking & Finance (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of economy. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Banking & Finance","present_tense — grammar explanation and practice","Reading comprehension: text about Banking & Finance","Listening comprehension: dialogue about Banking & Finance","Speaking practice: roleplay/discussion about Banking & Finance","Writing task: text about Banking & Finance"]', '[{"title":"Bankwesen und Finanzen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Inflation (inflation)','der Zins (interest)','das BIP (GDP)','die Steuer (tax)','das Budget (budget)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Banking & Finance for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'translation', 'Translate to German: "I use the word "inflation" in a sentence about Banking & Finance."', '[]', 'Die Inflation steigt.', 'Use die  "die Inflation" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'translation', 'Translate to German: "I use the word "interest" in a sentence about Banking & Finance."', '[]', 'Die Zinsen sind niedrig.', 'Use der  "der Zins" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'translation', 'Translate to German: "I use the word "GDP" in a sentence about Banking & Finance."', '[]', 'Das BIP wächst um 2 Prozent.', 'Use das  "das BIP" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Culture: 🇩🇪 Deutsche Kultur: Banking & Finance', 'Banking & Finance in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Banking & Finance in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Banking & Finance في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Der Genitiv und Genitivpräpositionen (L-B2-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002610af0', '00000000-0000-4000-a000-000039c35f41', 'Der Genitiv und Genitivpräpositionen', 'Learn Genitiv case and prepositions requiring Genitiv.', 'Genitive Case', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 1),
  ('00000000-0000-4000-a000-000002610af0', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 2),
  ('00000000-0000-4000-a000-000002610af0', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 3),
  ('00000000-0000-4000-a000-000002610af0', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 4),
  ('00000000-0000-4000-a000-000002610af0', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 5),
  ('00000000-0000-4000-a000-000002610af0', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 6),
  ('00000000-0000-4000-a000-000002610af0', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 7),
  ('00000000-0000-4000-a000-000002610af0', 'die Schulden', 'الديون', 'debt', NULL, 'die', NULL, 'noun', 'Die Schulden des Landes wachsen.', 'The country''s debt is growing.', 'B2', 8),
  ('00000000-0000-4000-a000-000002610af0', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002610af0', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002610af0', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002610af0', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002610af0', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002610af0', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002610af0', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002610af0', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002610af0', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002610af0', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002610af0', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002610af0', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002610af0', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002610af0', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002610af0', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002610af0', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 24),
  ('00000000-0000-4000-a000-000002610af0', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 25),
  ('00000000-0000-4000-a000-000002610af0', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 26),
  ('00000000-0000-4000-a000-000002610af0', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 27),
  ('00000000-0000-4000-a000-000002610af0', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 28),
  ('00000000-0000-4000-a000-000002610af0', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002610af0', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'Welches deutsche Wort bedeutet "inflation"?', '["die Steuer","die Inflation","das Budget","das BIP"]', 'die Inflation', '"inflation" = "die Inflation" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'Welches deutsche Wort bedeutet "interest"?', '["das Budget","die Steuer","das BIP","die Inflation"]', 'der Zins', '"interest" = "der Zins" in German. Article: der Plural: die Zinsen', 1, 2),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'Welches deutsche Wort bedeutet "GDP"?', '["das BIP","die Steuer","die Inflation","der Zins"]', 'das BIP', '"GDP" = "das BIP" in German. Article: das ', 1, 3),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'Welches deutsche Wort bedeutet "tax"?', '["der Zins","das BIP","das Budget","die Steuer"]', 'die Steuer', '"tax" = "die Steuer" in German. Article: die Plural: die Steuern', 1, 4),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'Welches deutsche Wort bedeutet "budget"?', '["das Budget","die Inflation","das BIP","die Steuer"]', 'das Budget', '"budget" = "das Budget" in German. Article: das Plural: die Budgets', 1, 5),
  ('00000000-0000-4000-a000-000002610af0', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern Genitive Case. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002610af0', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Genitive Case."', '["Ich lerne über Genitive Case.","Ich lerne Genitive Case.","Lerne ich Genitive Case."]', 'Ich lerne über Genitive Case.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002610af0', 'matching', 'Match: Which word pairs are correct?', '["die Inflation - inflation, der Zins - interest"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'Was bedeutet "die Inflation" auf Deutsch?', '["inflation","to run","beautiful","yesterday"]', 'inflation', 1, 1),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'Welcher Artikel gehört zu "der Zins"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002610af0', 'true_false', 'Das Wort "das BIP" gehört zum Thema Genitive Case.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-000002610af0', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002610af0', 'fill_blank', 'Complete: Ich ___ (tax) Deutsch.', '["die Steuer","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'Wie lautet das deutsche Wort für "budget"?', '["das Budget","die Anlage","der Gewinn","die Schulden"]', 'das Budget', 1, 7),
  ('00000000-0000-4000-a000-000002610af0', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002610af0', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002610af0', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002610af0', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002610af0', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'die die Inflation', 'inflation — التضخم', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002610af0', 'der der Zins (die Zinsen)', 'interest — الفائدة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002610af0', 'das das BIP', 'GDP — الناتج المحلي الإجمالي', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002610af0', 'die die Steuer (die Steuern)', 'tax — الضريبة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002610af0', 'das das Budget (die Budgets)', 'budget — الميزانية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002610af0', 'die die Anlage (die Anlagen)', 'investment — الاستثمار', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002610af0', 'der der Gewinn (die Gewinne)', 'profit — الربح', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002610af0', 'die die Schulden', 'debt — الديون', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002610af0', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002610af0', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002610af0', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002610af0', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002610af0', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002610af0', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002610af0', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002610af0', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002610af0', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002610af0', 'Der Genitiv und Genitivpräpositionen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002610af0', 'Der Genitiv und Genitivpräpositionen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Wirtschaft und Finanzen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002610af0', '🔊 Sprechen: Der Genitiv und Genitivpräpositionen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Genitive Case with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Genitive Case', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002610af0', '✏️ Schreiben: Der Genitiv und Genitivpräpositionen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Genitive Case". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610af0', 'Der Genitiv und Genitivpräpositionen — Roleplay', 'Genitive Case', 'Student', 'Teacher', 'Practice conversation about Genitive Case', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610af0', 'Der Genitiv und Genitivpräpositionen — Advanced Roleplay', 'Genitive Case', 'Customer', 'Assistant', 'Extended conversation about Genitive Case', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002610af0', 'Der Genitiv und Genitivpräpositionen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Der Genitiv und Genitivpräpositionen".', 'Creative practice for Genitive Case', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002610af0', '📚 Hausaufgabe: Der Genitiv und Genitivpräpositionen', 'Complete these tasks to reinforce "Der Genitiv und Genitivpräpositionen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Genitive Case: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Genitive Case. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002610af0', '🎯 Excellent progress! This lesson covered Genitive Case (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of economy. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Genitive Case","present_tense — grammar explanation and practice","Reading comprehension: text about Genitive Case","Listening comprehension: dialogue about Genitive Case","Speaking practice: roleplay/discussion about Genitive Case","Writing task: text about Genitive Case"]', '[{"title":"Der Genitiv und Genitivpräpositionen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Inflation (inflation)','der Zins (interest)','das BIP (GDP)','die Steuer (tax)','das Budget (budget)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Genitive Case for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'translation', 'Translate to German: "I use the word "inflation" in a sentence about Genitive Case."', '[]', 'Die Inflation steigt.', 'Use die  "die Inflation" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'translation', 'Translate to German: "I use the word "interest" in a sentence about Genitive Case."', '[]', 'Die Zinsen sind niedrig.', 'Use der  "der Zins" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'translation', 'Translate to German: "I use the word "GDP" in a sentence about Genitive Case."', '[]', 'Das BIP wächst um 2 Prozent.', 'Use das  "das BIP" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Culture: 🇩🇪 Deutsche Kultur: Genitive Case', 'Genitive Case in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Genitive Case in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Genitive Case في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Test: Wirtschaft und Finanzen (L-B2-04-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002610af1', '00000000-0000-4000-a000-000039c35f41', 'Test: Wirtschaft und Finanzen', 'Module test on economy and finance.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'die Inflation', 'التضخم', 'inflation', NULL, 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 1),
  ('00000000-0000-4000-a000-000002610af1', 'der Zins', 'الفائدة', 'interest', NULL, 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 2),
  ('00000000-0000-4000-a000-000002610af1', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', NULL, 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 3),
  ('00000000-0000-4000-a000-000002610af1', 'die Steuer', 'الضريبة', 'tax', NULL, 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 4),
  ('00000000-0000-4000-a000-000002610af1', 'das Budget', 'الميزانية', 'budget', NULL, 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 5),
  ('00000000-0000-4000-a000-000002610af1', 'die Anlage', 'الاستثمار', 'investment', NULL, 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 6),
  ('00000000-0000-4000-a000-000002610af1', 'der Gewinn', 'الربح', 'profit', NULL, 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 7),
  ('00000000-0000-4000-a000-000002610af1', 'die Schulden', 'الديون', 'debt', NULL, 'die', NULL, 'noun', 'Die Schulden des Landes wachsen.', 'The country''s debt is growing.', 'B2', 8),
  ('00000000-0000-4000-a000-000002610af1', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002610af1', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002610af1', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002610af1', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002610af1', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002610af1', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002610af1', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002610af1', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002610af1', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002610af1', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002610af1', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002610af1', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002610af1', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002610af1', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002610af1', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002610af1', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 24),
  ('00000000-0000-4000-a000-000002610af1', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 25),
  ('00000000-0000-4000-a000-000002610af1', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 26),
  ('00000000-0000-4000-a000-000002610af1', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 27),
  ('00000000-0000-4000-a000-000002610af1', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 28),
  ('00000000-0000-4000-a000-000002610af1', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002610af1', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'Welches deutsche Wort bedeutet "inflation"?', '["die Steuer","das BIP","das Budget","der Zins"]', 'die Inflation', '"inflation" = "die Inflation" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'Welches deutsche Wort bedeutet "interest"?', '["die Steuer","das BIP","die Inflation","das Budget"]', 'der Zins', '"interest" = "der Zins" in German. Article: der Plural: die Zinsen', 1, 2),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'Welches deutsche Wort bedeutet "GDP"?', '["das BIP","die Inflation","das Budget","der Zins"]', 'das BIP', '"GDP" = "das BIP" in German. Article: das ', 1, 3),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'Welches deutsche Wort bedeutet "tax"?', '["der Zins","die Inflation","das Budget","das BIP"]', 'die Steuer', '"tax" = "die Steuer" in German. Article: die Plural: die Steuern', 1, 4),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'Welches deutsche Wort bedeutet "budget"?', '["das BIP","das Budget","die Inflation","die Steuer"]', 'das Budget', '"budget" = "das Budget" in German. Article: das Plural: die Budgets', 1, 5),
  ('00000000-0000-4000-a000-000002610af1', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002610af1', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002610af1', 'matching', 'Match: Which word pairs are correct?', '["die Inflation - inflation, der Zins - interest"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'Was bedeutet "die Inflation" auf Deutsch?', '["inflation","to run","beautiful","yesterday"]', 'inflation', 1, 1),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'Welcher Artikel gehört zu "der Zins"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002610af1', 'true_false', 'Das Wort "das BIP" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-000002610af1', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002610af1', 'fill_blank', 'Complete: Ich ___ (tax) Deutsch.', '["die Steuer","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'Wie lautet das deutsche Wort für "budget"?', '["das Budget","die Anlage","der Gewinn","die Schulden"]', 'das Budget', 1, 7),
  ('00000000-0000-4000-a000-000002610af1', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002610af1', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002610af1', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002610af1', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002610af1', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wirtschaft und Finanzen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'die die Inflation', 'inflation — التضخم', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002610af1', 'der der Zins (die Zinsen)', 'interest — الفائدة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002610af1', 'das das BIP', 'GDP — الناتج المحلي الإجمالي', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002610af1', 'die die Steuer (die Steuern)', 'tax — الضريبة', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002610af1', 'das das Budget (die Budgets)', 'budget — الميزانية', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002610af1', 'die die Anlage (die Anlagen)', 'investment — الاستثمار', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002610af1', 'der der Gewinn (die Gewinne)', 'profit — الربح', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002610af1', 'die die Schulden', 'debt — الديون', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002610af1', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002610af1', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002610af1', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002610af1', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002610af1', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002610af1', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002610af1', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002610af1', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002610af1', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-000002610af1', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002610af1', 'Test: Wirtschaft und Finanzen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002610af1', 'Test: Wirtschaft und Finanzen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Wirtschaft und Finanzen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002610af1', '🔊 Sprechen: Test: Wirtschaft und Finanzen', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Module Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002610af1', '✏️ Schreiben: Test: Wirtschaft und Finanzen', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Module Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610af1', 'Test: Wirtschaft und Finanzen — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610af1', 'Test: Wirtschaft und Finanzen — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002610af1', 'Test: Wirtschaft und Finanzen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Wirtschaft und Finanzen".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002610af1', '📚 Hausaufgabe: Test: Wirtschaft und Finanzen', 'Complete these tasks to reinforce "Test: Wirtschaft und Finanzen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002610af1', '🎯 Excellent progress! This lesson covered Module Test (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of economy. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Wirtschaft und Finanzen Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Inflation (inflation)','der Zins (interest)','das BIP (GDP)','die Steuer (tax)','das Budget (budget)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'translation', 'Translate to German: "I use the word "inflation" in a sentence about Module Test."', '[]', 'Die Inflation steigt.', 'Use die  "die Inflation" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'translation', 'Translate to German: "I use the word "interest" in a sentence about Module Test."', '[]', 'Die Zinsen sind niedrig.', 'Use der  "der Zins" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'translation', 'Translate to German: "I use the word "GDP" in a sentence about Module Test."', '[]', 'Das BIP wächst um 2 Prozent.', 'Use das  "das BIP" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'Module Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Module Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Module 5: Kunst und Literatur
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f42', 'B2', 'Kunst und Literatur', 'Discuss art, literature, and cultural topics.', '["Describe artworks and exhibitions","Discuss literature and authors","Use Partizipialattribute","Write reviews","Express aesthetic judgments"]', 5, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Kunst und Kultur (L-B2-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002617f4d', '00000000-0000-4000-a000-000039c35f42', 'Kunst und Kultur', 'Learn art and cultural vocabulary.', 'Art & Culture', 'vocabulary', '["Understand and use 71 key vocabulary words about Art & Culture","Apply present_tense correctly in sentences","Read and comprehend a text about Art & Culture","Listen and understand a natural dialogue about Art & Culture","Speak about Art & Culture with confidence","Write a short text about Art & Culture using new vocabulary"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'das Gemälde', 'اللوحة', 'painting', NULL, 'das', 'die Gemälde', 'noun', 'Das Gemälde hängt im Museum.', 'The painting hangs in the museum.', 'B1', 1),
  ('00000000-0000-4000-a000-000002617f4d', 'der Künstler', 'الفنان', 'artist', NULL, 'der', 'die Künstler', 'noun', 'Der Künstler malt moderne Bilder.', 'The artist paints modern pictures.', 'B1', 2),
  ('00000000-0000-4000-a000-000002617f4d', 'die Skulptur', 'المنحوتة', 'sculpture', NULL, 'die', 'die Skulpturen', 'noun', 'Die Skulptur ist aus Marmor.', 'The sculpture is made of marble.', 'B1', 3),
  ('00000000-0000-4000-a000-000002617f4d', 'die Galerie', 'المعرض الفني', 'gallery', NULL, 'die', 'die Galerien', 'noun', 'Die Galerie zeigt zeitgenössische Kunst.', 'The gallery shows contemporary art.', 'B1', 4),
  ('00000000-0000-4000-a000-000002617f4d', 'die Ausstellung', 'المعرض', 'exhibition', NULL, 'die', 'die Ausstellungen', 'noun', 'Die Ausstellung war sehr besucht.', 'The exhibition was very popular.', 'B1', 5),
  ('00000000-0000-4000-a000-000002617f4d', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Künstlers ist einzigartig.', 'The artist''s style is unique.', 'B2', 6),
  ('00000000-0000-4000-a000-000002617f4d', 'die Malerei', 'الرسم', 'painting (art form)', NULL, 'die', NULL, 'noun', 'Die abstrakte Malerei fasziniert mich.', 'Abstract painting fascinates me.', 'B2', 7),
  ('00000000-0000-4000-a000-000002617f4d', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002617f4d', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002617f4d', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002617f4d', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002617f4d', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002617f4d', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002617f4d', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002617f4d', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002617f4d', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-000002617f4d', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-000002617f4d', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-000002617f4d', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-000002617f4d', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-000002617f4d', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-000002617f4d', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-000002617f4d', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-000002617f4d', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-000002617f4d', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-000002617f4d', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-000002617f4d', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-000002617f4d', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-000002617f4d', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002617f4d', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'Welches deutsche Wort bedeutet "painting"?', '["die Ausstellung","die Galerie","das Gemälde","der Künstler"]', 'das Gemälde', '"painting" = "das Gemälde" in German. Article: das Plural: die Gemälde', 1, 1),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'Welches deutsche Wort bedeutet "artist"?', '["die Ausstellung","die Galerie","die Skulptur","das Gemälde"]', 'der Künstler', '"artist" = "der Künstler" in German. Article: der Plural: die Künstler', 1, 2),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'Welches deutsche Wort bedeutet "sculpture"?', '["die Skulptur","das Gemälde","der Künstler","die Galerie"]', 'die Skulptur', '"sculpture" = "die Skulptur" in German. Article: die Plural: die Skulpturen', 1, 3),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'Welches deutsche Wort bedeutet "gallery"?', '["die Ausstellung","das Gemälde","der Künstler","die Skulptur"]', 'die Galerie', '"gallery" = "die Galerie" in German. Article: die Plural: die Galerien', 1, 4),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'Welches deutsche Wort bedeutet "exhibition"?', '["die Ausstellung","das Gemälde","der Künstler","die Skulptur"]', 'die Ausstellung', '"exhibition" = "die Ausstellung" in German. Article: die Plural: die Ausstellungen', 1, 5),
  ('00000000-0000-4000-a000-000002617f4d', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Art & Culture. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002617f4d', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Art & Culture."', '["Ich lerne über Art & Culture.","Ich lerne Art & Culture.","Lerne ich Art & Culture."]', 'Ich lerne über Art & Culture.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002617f4d', 'matching', 'Match: Which word pairs are correct?', '["das Gemälde - painting, der Künstler - artist"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'Was bedeutet "das Gemälde" auf Deutsch?', '["painting","to run","beautiful","yesterday"]', 'painting', 1, 1),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'Welcher Artikel gehört zu "der Künstler"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002617f4d', 'true_false', 'Das Wort "die Skulptur" gehört zum Thema Art & Culture.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-000002617f4d', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002617f4d', 'fill_blank', 'Complete: Ich ___ (gallery) Deutsch.', '["die Galerie","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'Wie lautet das deutsche Wort für "exhibition"?', '["die Ausstellung","der Stil","die Malerei","die Wirtschaft"]', 'die Ausstellung', 1, 7),
  ('00000000-0000-4000-a000-000002617f4d', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002617f4d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kunst und Literatur', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002617f4d', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kunst und Literatur', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002617f4d', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kunst und Literatur', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002617f4d', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kunst und Literatur', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'das das Gemälde (die Gemälde)', 'painting — اللوحة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002617f4d', 'der der Künstler (die Künstler)', 'artist — الفنان', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002617f4d', 'die die Skulptur (die Skulpturen)', 'sculpture — المنحوتة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002617f4d', 'die die Galerie (die Galerien)', 'gallery — المعرض الفني', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002617f4d', 'die die Ausstellung (die Ausstellungen)', 'exhibition — المعرض', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002617f4d', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002617f4d', 'die die Malerei', 'painting (art form) — الرسم', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002617f4d', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002617f4d', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002617f4d', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002617f4d', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002617f4d', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002617f4d', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002617f4d', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002617f4d', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002617f4d', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002617f4d', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002617f4d', 'Kunst und Kultur — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002617f4d', 'Kunst und Kultur — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Kunst und Literatur');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', '🔊 Sprechen: Kunst und Kultur', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Art & Culture with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Art & Culture', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', '✏️ Schreiben: Kunst und Kultur', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Art & Culture". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4d', 'Kunst und Kultur — Roleplay', 'Art & Culture', 'Student', 'Teacher', 'Practice conversation about Art & Culture', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4d', 'Kunst und Kultur — Advanced Roleplay', 'Art & Culture', 'Customer', 'Assistant', 'Extended conversation about Art & Culture', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002617f4d', 'Kunst und Kultur — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kunst und Kultur".', 'Creative practice for Art & Culture', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', '📚 Hausaufgabe: Kunst und Kultur', 'Complete these tasks to reinforce "Kunst und Kultur".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Art & Culture: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Art & Culture. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002617f4d', '🎯 Excellent progress! This lesson covered Art & Culture (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of art. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Art & Culture","present_tense — grammar explanation and practice","Reading comprehension: text about Art & Culture","Listening comprehension: dialogue about Art & Culture","Speaking practice: roleplay/discussion about Art & Culture","Writing task: text about Art & Culture"]', '[{"title":"Kunst und Kultur Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['das Gemälde (painting)','der Künstler (artist)','die Skulptur (sculpture)','die Galerie (gallery)','die Ausstellung (exhibition)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Art & Culture for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'translation', 'Translate to German: "I use the word "painting" in a sentence about Art & Culture."', '[]', 'Das Gemälde hängt im Museum.', 'Use das  "das Gemälde" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'translation', 'Translate to German: "I use the word "artist" in a sentence about Art & Culture."', '[]', 'Der Künstler malt moderne Bilder.', 'Use der  "der Künstler" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'translation', 'Translate to German: "I use the word "sculpture" in a sentence about Art & Culture."', '[]', 'Die Skulptur ist aus Marmor.', 'Use die  "die Skulptur" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Culture: 🇩🇪 Deutsche Kultur: Art & Culture', 'Art & Culture in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Art & Culture in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Art & Culture في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Deutschsprachige Literatur (L-B2-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002617f4e', '00000000-0000-4000-a000-000039c35f42', 'Deutschsprachige Literatur', 'Explore German-language literature and authors.', 'German Literature', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'der Roman', 'الرواية', 'novel', NULL, 'der', 'die Romane', 'noun', 'Der Roman ist ein Bestseller.', 'The novel is a bestseller.', 'B1', 1),
  ('00000000-0000-4000-a000-000002617f4e', 'der Dichter', 'الشاعر', 'poet', NULL, 'der', 'die Dichter', 'noun', 'Goethe war ein großer Dichter.', 'Goethe was a great poet.', 'B2', 2),
  ('00000000-0000-4000-a000-000002617f4e', 'das Gedicht', 'القصيدة', 'poem', NULL, 'das', 'die Gedichte', 'noun', 'Das Gedicht handelt von der Liebe.', 'The poem is about love.', 'B1', 3),
  ('00000000-0000-4000-a000-000002617f4e', 'der Autor', 'المؤلف', 'author', NULL, 'der', 'die Autoren', 'noun', 'Der Autor schreibt einen neuen Roman.', 'The author is writing a new novel.', 'B1', 4),
  ('00000000-0000-4000-a000-000002617f4e', 'die Literaturgeschichte', 'تاريخ الأدب', 'literary history', NULL, 'die', NULL, 'noun', 'Die deutsche Literaturgeschichte ist reich.', 'German literary history is rich.', 'C1', 5),
  ('00000000-0000-4000-a000-000002617f4e', 'das Drama', 'المسرحية', 'drama', NULL, 'das', 'die Dramen', 'noun', 'Das Drama wurde 1920 geschrieben.', 'The drama was written in 1920.', 'B2', 6),
  ('00000000-0000-4000-a000-000002617f4e', 'die Erzählung', 'القصة القصيرة', 'short story', NULL, 'die', 'die Erzählungen', 'noun', 'Die Erzählung ist bewegend.', 'The short story is moving.', 'B2', 7),
  ('00000000-0000-4000-a000-000002617f4e', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002617f4e', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002617f4e', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002617f4e', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002617f4e', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002617f4e', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002617f4e', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002617f4e', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002617f4e', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-000002617f4e', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-000002617f4e', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-000002617f4e', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-000002617f4e', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-000002617f4e', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-000002617f4e', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-000002617f4e', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-000002617f4e', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-000002617f4e', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-000002617f4e', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-000002617f4e', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-000002617f4e', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-000002617f4e', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002617f4e', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'Welches deutsche Wort bedeutet "novel"?', '["der Roman","der Dichter","der Autor","die Literaturgeschichte"]', 'der Roman', '"novel" = "der Roman" in German. Article: der Plural: die Romane', 1, 1),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'Welches deutsche Wort bedeutet "poet"?', '["der Roman","das Gedicht","die Literaturgeschichte","der Autor"]', 'der Dichter', '"poet" = "der Dichter" in German. Article: der Plural: die Dichter', 1, 2),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'Welches deutsche Wort bedeutet "poem"?', '["der Dichter","der Roman","die Literaturgeschichte","der Autor"]', 'das Gedicht', '"poem" = "das Gedicht" in German. Article: das Plural: die Gedichte', 1, 3),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'Welches deutsche Wort bedeutet "author"?', '["der Autor","der Roman","die Literaturgeschichte","der Dichter"]', 'der Autor', '"author" = "der Autor" in German. Article: der Plural: die Autoren', 1, 4),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'Welches deutsche Wort bedeutet "literary history"?', '["der Autor","das Gedicht","die Literaturgeschichte","der Roman"]', 'die Literaturgeschichte', '"literary history" = "die Literaturgeschichte" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-000002617f4e', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über German Literature. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002617f4e', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about German Literature."', '["Ich lerne über German Literature.","Ich lerne German Literature.","Lerne ich German Literature."]', 'Ich lerne über German Literature.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002617f4e', 'matching', 'Match: Which word pairs are correct?', '["der Roman - novel, der Dichter - poet"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'Was bedeutet "der Roman" auf Deutsch?', '["novel","to run","beautiful","yesterday"]', 'novel', 1, 1),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'Welcher Artikel gehört zu "der Dichter"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002617f4e', 'true_false', 'Das Wort "das Gedicht" gehört zum Thema German Literature.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-000002617f4e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002617f4e', 'fill_blank', 'Complete: Ich ___ (author) Deutsch.', '["der Autor","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'Wie lautet das deutsche Wort für "literary history"?', '["die Literaturgeschichte","das Drama","die Erzählung","die Wirtschaft"]', 'die Literaturgeschichte', 1, 7),
  ('00000000-0000-4000-a000-000002617f4e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002617f4e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kunst und Literatur', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002617f4e', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kunst und Literatur', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002617f4e', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kunst und Literatur', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002617f4e', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kunst und Literatur', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'der der Roman (die Romane)', 'novel — الرواية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002617f4e', 'der der Dichter (die Dichter)', 'poet — الشاعر', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002617f4e', 'das das Gedicht (die Gedichte)', 'poem — القصيدة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002617f4e', 'der der Autor (die Autoren)', 'author — المؤلف', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002617f4e', 'die die Literaturgeschichte', 'literary history — تاريخ الأدب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002617f4e', 'das das Drama (die Dramen)', 'drama — المسرحية', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002617f4e', 'die die Erzählung (die Erzählungen)', 'short story — القصة القصيرة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002617f4e', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002617f4e', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002617f4e', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002617f4e', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002617f4e', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002617f4e', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002617f4e', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002617f4e', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002617f4e', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002617f4e', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-000002617f4e', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002617f4e', 'Deutschsprachige Literatur — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002617f4e', 'Deutschsprachige Literatur — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Kunst und Literatur');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', '🔊 Sprechen: Deutschsprachige Literatur', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss German Literature with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'German Literature', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', '✏️ Schreiben: Deutschsprachige Literatur', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "German Literature". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4e', 'Deutschsprachige Literatur — Roleplay', 'German Literature', 'Student', 'Teacher', 'Practice conversation about German Literature', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4e', 'Deutschsprachige Literatur — Advanced Roleplay', 'German Literature', 'Customer', 'Assistant', 'Extended conversation about German Literature', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002617f4e', 'Deutschsprachige Literatur — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Deutschsprachige Literatur".', 'Creative practice for German Literature', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', '📚 Hausaufgabe: Deutschsprachige Literatur', 'Complete these tasks to reinforce "Deutschsprachige Literatur".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about German Literature: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about German Literature. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002617f4e', '🎯 Excellent progress! This lesson covered German Literature (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of literature. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about German Literature","present_tense — grammar explanation and practice","Reading comprehension: text about German Literature","Listening comprehension: dialogue about German Literature","Speaking practice: roleplay/discussion about German Literature","Writing task: text about German Literature"]', '[{"title":"Deutschsprachige Literatur Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['der Roman (novel)','der Dichter (poet)','das Gedicht (poem)','der Autor (author)','die Literaturgeschichte (literary history)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about German Literature for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'translation', 'Translate to German: "I use the word "novel" in a sentence about German Literature."', '[]', 'Der Roman ist ein Bestseller.', 'Use der  "der Roman" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'translation', 'Translate to German: "I use the word "poet" in a sentence about German Literature."', '[]', 'Goethe war ein großer Dichter.', 'Use der  "der Dichter" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'translation', 'Translate to German: "I use the word "poem" in a sentence about German Literature."', '[]', 'Das Gedicht handelt von der Liebe.', 'Use das  "das Gedicht" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Culture: 🇩🇪 Deutsche Kultur: German Literature', 'German Literature in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with German Literature in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى German Literature في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Partizipialattribute (L-B2-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002617f4f', '00000000-0000-4000-a000-000039c35f42', 'Partizipialattribute', 'Learn participial phrases for formal written German.', 'Participial Phrases', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'das Gemälde', 'اللوحة', 'painting', NULL, 'das', 'die Gemälde', 'noun', 'Das Gemälde hängt im Museum.', 'The painting hangs in the museum.', 'B1', 1),
  ('00000000-0000-4000-a000-000002617f4f', 'der Künstler', 'الفنان', 'artist', NULL, 'der', 'die Künstler', 'noun', 'Der Künstler malt moderne Bilder.', 'The artist paints modern pictures.', 'B1', 2),
  ('00000000-0000-4000-a000-000002617f4f', 'die Skulptur', 'المنحوتة', 'sculpture', NULL, 'die', 'die Skulpturen', 'noun', 'Die Skulptur ist aus Marmor.', 'The sculpture is made of marble.', 'B1', 3),
  ('00000000-0000-4000-a000-000002617f4f', 'die Galerie', 'المعرض الفني', 'gallery', NULL, 'die', 'die Galerien', 'noun', 'Die Galerie zeigt zeitgenössische Kunst.', 'The gallery shows contemporary art.', 'B1', 4),
  ('00000000-0000-4000-a000-000002617f4f', 'die Ausstellung', 'المعرض', 'exhibition', NULL, 'die', 'die Ausstellungen', 'noun', 'Die Ausstellung war sehr besucht.', 'The exhibition was very popular.', 'B1', 5),
  ('00000000-0000-4000-a000-000002617f4f', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Künstlers ist einzigartig.', 'The artist''s style is unique.', 'B2', 6),
  ('00000000-0000-4000-a000-000002617f4f', 'die Malerei', 'الرسم', 'painting (art form)', NULL, 'die', NULL, 'noun', 'Die abstrakte Malerei fasziniert mich.', 'Abstract painting fascinates me.', 'B2', 7),
  ('00000000-0000-4000-a000-000002617f4f', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002617f4f', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002617f4f', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002617f4f', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002617f4f', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002617f4f', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002617f4f', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002617f4f', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002617f4f', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-000002617f4f', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-000002617f4f', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-000002617f4f', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-000002617f4f', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-000002617f4f', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-000002617f4f', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-000002617f4f', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-000002617f4f', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-000002617f4f', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-000002617f4f', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-000002617f4f', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-000002617f4f', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-000002617f4f', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002617f4f', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'Welches deutsche Wort bedeutet "painting"?', '["die Ausstellung","der Künstler","das Gemälde","die Galerie"]', 'das Gemälde', '"painting" = "das Gemälde" in German. Article: das Plural: die Gemälde', 1, 1),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'Welches deutsche Wort bedeutet "artist"?', '["die Galerie","die Ausstellung","die Skulptur","das Gemälde"]', 'der Künstler', '"artist" = "der Künstler" in German. Article: der Plural: die Künstler', 1, 2),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'Welches deutsche Wort bedeutet "sculpture"?', '["die Galerie","die Skulptur","die Ausstellung","das Gemälde"]', 'die Skulptur', '"sculpture" = "die Skulptur" in German. Article: die Plural: die Skulpturen', 1, 3),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'Welches deutsche Wort bedeutet "gallery"?', '["die Galerie","der Künstler","die Skulptur","die Ausstellung"]', 'die Galerie', '"gallery" = "die Galerie" in German. Article: die Plural: die Galerien', 1, 4),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'Welches deutsche Wort bedeutet "exhibition"?', '["die Galerie","der Künstler","das Gemälde","die Skulptur"]', 'die Ausstellung', '"exhibition" = "die Ausstellung" in German. Article: die Plural: die Ausstellungen', 1, 5),
  ('00000000-0000-4000-a000-000002617f4f', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Participial Phrases. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002617f4f', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Participial Phrases."', '["Ich lerne über Participial Phrases.","Ich lerne Participial Phrases.","Lerne ich Participial Phrases."]', 'Ich lerne über Participial Phrases.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002617f4f', 'matching', 'Match: Which word pairs are correct?', '["das Gemälde - painting, der Künstler - artist"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'Was bedeutet "das Gemälde" auf Deutsch?', '["painting","to run","beautiful","yesterday"]', 'painting', 1, 1),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'Welcher Artikel gehört zu "der Künstler"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002617f4f', 'true_false', 'Das Wort "die Skulptur" gehört zum Thema Participial Phrases.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-000002617f4f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002617f4f', 'fill_blank', 'Complete: Ich ___ (gallery) Deutsch.', '["die Galerie","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'Wie lautet das deutsche Wort für "exhibition"?', '["die Ausstellung","der Stil","die Malerei","die Wirtschaft"]', 'die Ausstellung', 1, 7),
  ('00000000-0000-4000-a000-000002617f4f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002617f4f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kunst und Literatur', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002617f4f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kunst und Literatur', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002617f4f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kunst und Literatur', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002617f4f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kunst und Literatur', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'das das Gemälde (die Gemälde)', 'painting — اللوحة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002617f4f', 'der der Künstler (die Künstler)', 'artist — الفنان', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002617f4f', 'die die Skulptur (die Skulpturen)', 'sculpture — المنحوتة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002617f4f', 'die die Galerie (die Galerien)', 'gallery — المعرض الفني', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002617f4f', 'die die Ausstellung (die Ausstellungen)', 'exhibition — المعرض', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002617f4f', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002617f4f', 'die die Malerei', 'painting (art form) — الرسم', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002617f4f', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002617f4f', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002617f4f', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002617f4f', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002617f4f', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002617f4f', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002617f4f', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002617f4f', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002617f4f', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002617f4f', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002617f4f', 'Partizipialattribute — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002617f4f', 'Partizipialattribute — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Kunst und Literatur');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', '🔊 Sprechen: Partizipialattribute', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Participial Phrases with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Participial Phrases', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', '✏️ Schreiben: Partizipialattribute', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Participial Phrases". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4f', 'Partizipialattribute — Roleplay', 'Participial Phrases', 'Student', 'Teacher', 'Practice conversation about Participial Phrases', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4f', 'Partizipialattribute — Advanced Roleplay', 'Participial Phrases', 'Customer', 'Assistant', 'Extended conversation about Participial Phrases', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002617f4f', 'Partizipialattribute — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Partizipialattribute".', 'Creative practice for Participial Phrases', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', '📚 Hausaufgabe: Partizipialattribute', 'Complete these tasks to reinforce "Partizipialattribute".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Participial Phrases: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Participial Phrases. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002617f4f', '🎯 Excellent progress! This lesson covered Participial Phrases (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of art. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Participial Phrases","present_tense — grammar explanation and practice","Reading comprehension: text about Participial Phrases","Listening comprehension: dialogue about Participial Phrases","Speaking practice: roleplay/discussion about Participial Phrases","Writing task: text about Participial Phrases"]', '[{"title":"Partizipialattribute Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['das Gemälde (painting)','der Künstler (artist)','die Skulptur (sculpture)','die Galerie (gallery)','die Ausstellung (exhibition)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Participial Phrases for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'translation', 'Translate to German: "I use the word "painting" in a sentence about Participial Phrases."', '[]', 'Das Gemälde hängt im Museum.', 'Use das  "das Gemälde" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'translation', 'Translate to German: "I use the word "artist" in a sentence about Participial Phrases."', '[]', 'Der Künstler malt moderne Bilder.', 'Use der  "der Künstler" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'translation', 'Translate to German: "I use the word "sculpture" in a sentence about Participial Phrases."', '[]', 'Die Skulptur ist aus Marmor.', 'Use die  "die Skulptur" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Culture: 🇩🇪 Deutsche Kultur: Participial Phrases', 'Participial Phrases in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Participial Phrases in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Participial Phrases في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: Test: Kunst und Literatur (L-B2-05-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002617f50', '00000000-0000-4000-a000-000039c35f42', 'Test: Kunst und Literatur', 'Module test on art and literature.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'das Gemälde', 'اللوحة', 'painting', NULL, 'das', 'die Gemälde', 'noun', 'Das Gemälde hängt im Museum.', 'The painting hangs in the museum.', 'B1', 1),
  ('00000000-0000-4000-a000-000002617f50', 'der Künstler', 'الفنان', 'artist', NULL, 'der', 'die Künstler', 'noun', 'Der Künstler malt moderne Bilder.', 'The artist paints modern pictures.', 'B1', 2),
  ('00000000-0000-4000-a000-000002617f50', 'die Skulptur', 'المنحوتة', 'sculpture', NULL, 'die', 'die Skulpturen', 'noun', 'Die Skulptur ist aus Marmor.', 'The sculpture is made of marble.', 'B1', 3),
  ('00000000-0000-4000-a000-000002617f50', 'die Galerie', 'المعرض الفني', 'gallery', NULL, 'die', 'die Galerien', 'noun', 'Die Galerie zeigt zeitgenössische Kunst.', 'The gallery shows contemporary art.', 'B1', 4),
  ('00000000-0000-4000-a000-000002617f50', 'die Ausstellung', 'المعرض', 'exhibition', NULL, 'die', 'die Ausstellungen', 'noun', 'Die Ausstellung war sehr besucht.', 'The exhibition was very popular.', 'B1', 5),
  ('00000000-0000-4000-a000-000002617f50', 'der Stil', 'الأسلوب', 'style', NULL, 'der', 'die Stile', 'noun', 'Der Stil des Künstlers ist einzigartig.', 'The artist''s style is unique.', 'B2', 6),
  ('00000000-0000-4000-a000-000002617f50', 'die Malerei', 'الرسم', 'painting (art form)', NULL, 'die', NULL, 'noun', 'Die abstrakte Malerei fasziniert mich.', 'Abstract painting fascinates me.', 'B2', 7),
  ('00000000-0000-4000-a000-000002617f50', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002617f50', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002617f50', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002617f50', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002617f50', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002617f50', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002617f50', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002617f50', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002617f50', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-000002617f50', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-000002617f50', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-000002617f50', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-000002617f50', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-000002617f50', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-000002617f50', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-000002617f50', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-000002617f50', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-000002617f50', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-000002617f50', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-000002617f50', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-000002617f50', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-000002617f50', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002617f50', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'Welches deutsche Wort bedeutet "painting"?', '["der Künstler","die Ausstellung","die Galerie","das Gemälde"]', 'das Gemälde', '"painting" = "das Gemälde" in German. Article: das Plural: die Gemälde', 1, 1),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'Welches deutsche Wort bedeutet "artist"?', '["der Künstler","das Gemälde","die Skulptur","die Galerie"]', 'der Künstler', '"artist" = "der Künstler" in German. Article: der Plural: die Künstler', 1, 2),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'Welches deutsche Wort bedeutet "sculpture"?', '["der Künstler","die Skulptur","die Galerie","das Gemälde"]', 'die Skulptur', '"sculpture" = "die Skulptur" in German. Article: die Plural: die Skulpturen', 1, 3),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'Welches deutsche Wort bedeutet "gallery"?', '["die Skulptur","der Künstler","das Gemälde","die Ausstellung"]', 'die Galerie', '"gallery" = "die Galerie" in German. Article: die Plural: die Galerien', 1, 4),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'Welches deutsche Wort bedeutet "exhibition"?', '["die Galerie","das Gemälde","der Künstler","die Skulptur"]', 'die Ausstellung', '"exhibition" = "die Ausstellung" in German. Article: die Plural: die Ausstellungen', 1, 5),
  ('00000000-0000-4000-a000-000002617f50', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000002617f50', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000002617f50', 'matching', 'Match: Which word pairs are correct?', '["das Gemälde - painting, der Künstler - artist"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'Was bedeutet "das Gemälde" auf Deutsch?', '["painting","to run","beautiful","yesterday"]', 'painting', 1, 1),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'Welcher Artikel gehört zu "der Künstler"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-000002617f50', 'true_false', 'Das Wort "die Skulptur" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-000002617f50', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000002617f50', 'fill_blank', 'Complete: Ich ___ (gallery) Deutsch.', '["die Galerie","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'Wie lautet das deutsche Wort für "exhibition"?', '["die Ausstellung","der Stil","die Malerei","die Wirtschaft"]', 'die Ausstellung', 1, 7),
  ('00000000-0000-4000-a000-000002617f50', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000002617f50', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kunst und Literatur', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002617f50', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kunst und Literatur', 'formal', false, 2),
  ('00000000-0000-4000-a000-000002617f50', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kunst und Literatur', 'formal', false, 3),
  ('00000000-0000-4000-a000-000002617f50', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kunst und Literatur', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'das das Gemälde (die Gemälde)', 'painting — اللوحة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000002617f50', 'der der Künstler (die Künstler)', 'artist — الفنان', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000002617f50', 'die die Skulptur (die Skulpturen)', 'sculpture — المنحوتة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000002617f50', 'die die Galerie (die Galerien)', 'gallery — المعرض الفني', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000002617f50', 'die die Ausstellung (die Ausstellungen)', 'exhibition — المعرض', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000002617f50', 'der der Stil (die Stile)', 'style — الأسلوب', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000002617f50', 'die die Malerei', 'painting (art form) — الرسم', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000002617f50', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000002617f50', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000002617f50', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000002617f50', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000002617f50', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000002617f50', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000002617f50', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000002617f50', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000002617f50', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-000002617f50', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-000002617f50', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002617f50', 'Test: Kunst und Literatur — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000002617f50', 'Test: Kunst und Literatur — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Kunst und Literatur');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002617f50', '🔊 Sprechen: Test: Kunst und Literatur', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Module Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Module Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002617f50', '✏️ Schreiben: Test: Kunst und Literatur', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Module Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f50', 'Test: Kunst und Literatur — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f50', 'Test: Kunst und Literatur — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002617f50', 'Test: Kunst und Literatur — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Kunst und Literatur".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002617f50', '📚 Hausaufgabe: Test: Kunst und Literatur', 'Complete these tasks to reinforce "Test: Kunst und Literatur".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002617f50', '🎯 Excellent progress! This lesson covered Module Test (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of art. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Kunst und Literatur Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['das Gemälde (painting)','der Künstler (artist)','die Skulptur (sculpture)','die Galerie (gallery)','die Ausstellung (exhibition)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'translation', 'Translate to German: "I use the word "painting" in a sentence about Module Test."', '[]', 'Das Gemälde hängt im Museum.', 'Use das  "das Gemälde" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'translation', 'Translate to German: "I use the word "artist" in a sentence about Module Test."', '[]', 'Der Künstler malt moderne Bilder.', 'Use der  "der Künstler" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'translation', 'Translate to German: "I use the word "sculpture" in a sentence about Module Test."', '[]', 'Die Skulptur ist aus Marmor.', 'Use die  "die Skulptur" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'Module Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Module Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Module Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Module 6: Deutschland, Österreich, Schweiz
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f43', 'B2', 'Deutschland, Österreich, Schweiz', 'In-depth look at German-speaking countries: history, culture, and current affairs.', '["Understand recent German history","Compare DACH countries","Use complex sentence structures","Write essays on cultural topics","Give detailed presentations"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Geschichte Deutschlands (L-B2-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00000261f3ac', '00000000-0000-4000-a000-000039c35f43', 'Geschichte Deutschlands', 'Learn about German history from 1945 to today.', 'German History', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'die Geschichte', 'التاريخ', 'history', NULL, 'die', NULL, 'noun', 'Geschichte ist ein wichtiges Fach.', 'History is an important subject.', 'A2', 1),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Krieg', 'الحرب', 'war', NULL, 'der', 'die Kriege', 'noun', 'Der Krieg endete 1945.', 'The war ended in 1945.', 'B1', 2),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Reich', 'الإمبراطورية', 'empire', NULL, 'das', 'die Reiche', 'noun', 'Das Deutsche Reich bestand bis 1918.', 'The German Empire existed until 1918.', 'B2', 3),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Mauer', 'الجدار', 'wall', NULL, 'die', 'die Mauern', 'noun', 'Die Berliner Mauer fiel 1989.', 'The Berlin Wall fell in 1989.', 'B1', 4),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Wiedervereinigung', 'إعادة التوحيد', 'reunification', NULL, 'die', NULL, 'noun', 'Die Wiedervereinigung war 1990.', 'The reunification was in 1990.', 'B2', 5),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Mittelalter', 'العصور الوسطى', 'Middle Ages', NULL, 'das', NULL, 'noun', 'Das Mittelalter dauerte bis 1500.', 'The Middle Ages lasted until 1500.', 'B2', 6),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Kaiser', 'الإمبراطور', 'emperor', NULL, 'der', 'die Kaiser', 'noun', 'Der Kaiser regierte das Reich.', 'The emperor ruled the empire.', 'B2', 7),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-00000261f3ac', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'Welches deutsche Wort bedeutet "history"?', '["die Wiedervereinigung","die Mauer","der Krieg","die Geschichte"]', 'die Geschichte', '"history" = "die Geschichte" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'Welches deutsche Wort bedeutet "war"?', '["die Geschichte","die Mauer","das Reich","der Krieg"]', 'der Krieg', '"war" = "der Krieg" in German. Article: der Plural: die Kriege', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'Welches deutsche Wort bedeutet "empire"?', '["der Krieg","die Geschichte","die Mauer","das Reich"]', 'das Reich', '"empire" = "das Reich" in German. Article: das Plural: die Reiche', 1, 3),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'Welches deutsche Wort bedeutet "wall"?', '["die Mauer","die Geschichte","der Krieg","das Reich"]', 'die Mauer', '"wall" = "die Mauer" in German. Article: die Plural: die Mauern', 1, 4),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'Welches deutsche Wort bedeutet "reunification"?', '["die Geschichte","das Reich","der Krieg","die Wiedervereinigung"]', 'die Wiedervereinigung', '"reunification" = "die Wiedervereinigung" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00000261f3ac', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über German History. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00000261f3ac', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about German History."', '["Ich lerne über German History.","Ich lerne German History.","Lerne ich German History."]', 'Ich lerne über German History.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00000261f3ac', 'matching', 'Match: Which word pairs are correct?', '["die Geschichte - history, der Krieg - war"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'Was bedeutet "die Geschichte" auf Deutsch?', '["history","to run","beautiful","yesterday"]', 'history', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'Welcher Artikel gehört zu "der Krieg"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ac', 'true_false', 'Das Wort "das Reich" gehört zum Thema German History.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-00000261f3ac', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00000261f3ac', 'fill_blank', 'Complete: Ich ___ (wall) Deutsch.', '["die Mauer","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'Wie lautet das deutsche Wort für "reunification"?', '["die Wiedervereinigung","das Mittelalter","der Kaiser","die Wirtschaft"]', 'die Wiedervereinigung', 1, 7),
  ('00000000-0000-4000-a000-00000261f3ac', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00000261f3ac', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 1),
  ('00000000-0000-4000-a000-00000261f3ac', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 2),
  ('00000000-0000-4000-a000-00000261f3ac', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 3),
  ('00000000-0000-4000-a000-00000261f3ac', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'die die Geschichte', 'history — التاريخ', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00000261f3ac', 'der der Krieg (die Kriege)', 'war — الحرب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00000261f3ac', 'das das Reich (die Reiche)', 'empire — الإمبراطورية', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00000261f3ac', 'die die Mauer (die Mauern)', 'wall — الجدار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00000261f3ac', 'die die Wiedervereinigung', 'reunification — إعادة التوحيد', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00000261f3ac', 'das das Mittelalter', 'Middle Ages — العصور الوسطى', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00000261f3ac', 'der der Kaiser (die Kaiser)', 'emperor — الإمبراطور', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00000261f3ac', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00000261f3ac', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00000261f3ac', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00000261f3ac', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00000261f3ac', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00000261f3ac', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00000261f3ac', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00000261f3ac', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00000261f3ac', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-00000261f3ac', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Geschichte Deutschlands — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Geschichte Deutschlands — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Deutschland, Österreich, Schweiz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', '🔊 Sprechen: Geschichte Deutschlands', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss German History with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'German History', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', '✏️ Schreiben: Geschichte Deutschlands', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "German History". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Geschichte Deutschlands — Roleplay', 'German History', 'Student', 'Teacher', 'Practice conversation about German History', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Geschichte Deutschlands — Advanced Roleplay', 'German History', 'Customer', 'Assistant', 'Extended conversation about German History', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Geschichte Deutschlands — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Geschichte Deutschlands".', 'Creative practice for German History', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', '📚 Hausaufgabe: Geschichte Deutschlands', 'Complete these tasks to reinforce "Geschichte Deutschlands".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about German History: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about German History. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00000261f3ac', '🎯 Excellent progress! This lesson covered German History (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of history. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about German History","present_tense — grammar explanation and practice","Reading comprehension: text about German History","Listening comprehension: dialogue about German History","Speaking practice: roleplay/discussion about German History","Writing task: text about German History"]', '[{"title":"Geschichte Deutschlands Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Geschichte (history)','der Krieg (war)','das Reich (empire)','die Mauer (wall)','die Wiedervereinigung (reunification)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about German History for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'translation', 'Translate to German: "I use the word "history" in a sentence about German History."', '[]', 'Geschichte ist ein wichtiges Fach.', 'Use die  "die Geschichte" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'translation', 'Translate to German: "I use the word "war" in a sentence about German History."', '[]', 'Der Krieg endete 1945.', 'Use der  "der Krieg" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'translation', 'Translate to German: "I use the word "empire" in a sentence about German History."', '[]', 'Das Deutsche Reich bestand bis 1918.', 'Use das  "das Reich" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Culture: 🇩🇪 Deutsche Kultur: German History', 'German History in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with German History in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى German History في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 2: Österreich und die Schweiz (L-B2-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00000261f3ad', '00000000-0000-4000-a000-000039c35f43', 'Österreich und die Schweiz', 'Explore Austrian and Swiss culture and language.', 'Austria & Switzerland', 'vocabulary', '["Understand and use 71 key vocabulary words about Austria & Switzerland","Apply present_tense correctly in sentences","Read and comprehend a text about Austria & Switzerland","Listen and understand a natural dialogue about Austria & Switzerland","Speak about Austria & Switzerland with confidence","Write a short text about Austria & Switzerland using new vocabulary"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'die Geschichte', 'التاريخ', 'history', NULL, 'die', NULL, 'noun', 'Geschichte ist ein wichtiges Fach.', 'History is an important subject.', 'A2', 1),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Krieg', 'الحرب', 'war', NULL, 'der', 'die Kriege', 'noun', 'Der Krieg endete 1945.', 'The war ended in 1945.', 'B1', 2),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Reich', 'الإمبراطورية', 'empire', NULL, 'das', 'die Reiche', 'noun', 'Das Deutsche Reich bestand bis 1918.', 'The German Empire existed until 1918.', 'B2', 3),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Mauer', 'الجدار', 'wall', NULL, 'die', 'die Mauern', 'noun', 'Die Berliner Mauer fiel 1989.', 'The Berlin Wall fell in 1989.', 'B1', 4),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Wiedervereinigung', 'إعادة التوحيد', 'reunification', NULL, 'die', NULL, 'noun', 'Die Wiedervereinigung war 1990.', 'The reunification was in 1990.', 'B2', 5),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Mittelalter', 'العصور الوسطى', 'Middle Ages', NULL, 'das', NULL, 'noun', 'Das Mittelalter dauerte bis 1500.', 'The Middle Ages lasted until 1500.', 'B2', 6),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Kaiser', 'الإمبراطور', 'emperor', NULL, 'der', 'die Kaiser', 'noun', 'Der Kaiser regierte das Reich.', 'The emperor ruled the empire.', 'B2', 7),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-00000261f3ad', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'Welches deutsche Wort bedeutet "history"?', '["die Mauer","das Reich","die Wiedervereinigung","der Krieg"]', 'die Geschichte', '"history" = "die Geschichte" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'Welches deutsche Wort bedeutet "war"?', '["die Wiedervereinigung","die Mauer","das Reich","die Geschichte"]', 'der Krieg', '"war" = "der Krieg" in German. Article: der Plural: die Kriege', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'Welches deutsche Wort bedeutet "empire"?', '["das Reich","die Mauer","die Geschichte","der Krieg"]', 'das Reich', '"empire" = "das Reich" in German. Article: das Plural: die Reiche', 1, 3),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'Welches deutsche Wort bedeutet "wall"?', '["der Krieg","das Reich","die Geschichte","die Wiedervereinigung"]', 'die Mauer', '"wall" = "die Mauer" in German. Article: die Plural: die Mauern', 1, 4),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'Welches deutsche Wort bedeutet "reunification"?', '["die Wiedervereinigung","das Reich","die Geschichte","der Krieg"]', 'die Wiedervereinigung', '"reunification" = "die Wiedervereinigung" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00000261f3ad', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Austria & Switzerland. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00000261f3ad', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Austria & Switzerland."', '["Ich lerne über Austria & Switzerland.","Ich lerne Austria & Switzerland.","Lerne ich Austria & Switzerland."]', 'Ich lerne über Austria & Switzerland.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00000261f3ad', 'matching', 'Match: Which word pairs are correct?', '["die Geschichte - history, der Krieg - war"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'Was bedeutet "die Geschichte" auf Deutsch?', '["history","to run","beautiful","yesterday"]', 'history', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'Welcher Artikel gehört zu "der Krieg"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ad', 'true_false', 'Das Wort "das Reich" gehört zum Thema Austria & Switzerland.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-00000261f3ad', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00000261f3ad', 'fill_blank', 'Complete: Ich ___ (wall) Deutsch.', '["die Mauer","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'Wie lautet das deutsche Wort für "reunification"?', '["die Wiedervereinigung","das Mittelalter","der Kaiser","die Wirtschaft"]', 'die Wiedervereinigung', 1, 7),
  ('00000000-0000-4000-a000-00000261f3ad', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00000261f3ad', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 1),
  ('00000000-0000-4000-a000-00000261f3ad', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 2),
  ('00000000-0000-4000-a000-00000261f3ad', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 3),
  ('00000000-0000-4000-a000-00000261f3ad', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'die die Geschichte', 'history — التاريخ', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00000261f3ad', 'der der Krieg (die Kriege)', 'war — الحرب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00000261f3ad', 'das das Reich (die Reiche)', 'empire — الإمبراطورية', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00000261f3ad', 'die die Mauer (die Mauern)', 'wall — الجدار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00000261f3ad', 'die die Wiedervereinigung', 'reunification — إعادة التوحيد', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00000261f3ad', 'das das Mittelalter', 'Middle Ages — العصور الوسطى', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00000261f3ad', 'der der Kaiser (die Kaiser)', 'emperor — الإمبراطور', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00000261f3ad', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00000261f3ad', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00000261f3ad', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00000261f3ad', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00000261f3ad', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00000261f3ad', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00000261f3ad', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00000261f3ad', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00000261f3ad', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-00000261f3ad', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-00000261f3ad', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Österreich und die Schweiz — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Österreich und die Schweiz — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Deutschland, Österreich, Schweiz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', '🔊 Sprechen: Österreich und die Schweiz', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Austria & Switzerland with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Austria & Switzerland', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', '✏️ Schreiben: Österreich und die Schweiz', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Austria & Switzerland". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Österreich und die Schweiz — Roleplay', 'Austria & Switzerland', 'Student', 'Teacher', 'Practice conversation about Austria & Switzerland', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Österreich und die Schweiz — Advanced Roleplay', 'Austria & Switzerland', 'Customer', 'Assistant', 'Extended conversation about Austria & Switzerland', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Österreich und die Schweiz — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Österreich und die Schweiz".', 'Creative practice for Austria & Switzerland', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', '📚 Hausaufgabe: Österreich und die Schweiz', 'Complete these tasks to reinforce "Österreich und die Schweiz".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Austria & Switzerland: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Austria & Switzerland. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00000261f3ad', '🎯 Excellent progress! This lesson covered Austria & Switzerland (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of history. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Austria & Switzerland","present_tense — grammar explanation and practice","Reading comprehension: text about Austria & Switzerland","Listening comprehension: dialogue about Austria & Switzerland","Speaking practice: roleplay/discussion about Austria & Switzerland","Writing task: text about Austria & Switzerland"]', '[{"title":"Österreich und die Schweiz Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Geschichte (history)','der Krieg (war)','das Reich (empire)','die Mauer (wall)','die Wiedervereinigung (reunification)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Austria & Switzerland for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'translation', 'Translate to German: "I use the word "history" in a sentence about Austria & Switzerland."', '[]', 'Geschichte ist ein wichtiges Fach.', 'Use die  "die Geschichte" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'translation', 'Translate to German: "I use the word "war" in a sentence about Austria & Switzerland."', '[]', 'Der Krieg endete 1945.', 'Use der  "der Krieg" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'translation', 'Translate to German: "I use the word "empire" in a sentence about Austria & Switzerland."', '[]', 'Das Deutsche Reich bestand bis 1918.', 'Use das  "das Reich" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Culture: 🇩🇪 Deutsche Kultur: Austria & Switzerland', 'Austria & Switzerland in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Austria & Switzerland in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Austria & Switzerland في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 3: Die deutsche Wiedervereinigung (L-B2-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00000261f3ae', '00000000-0000-4000-a000-000039c35f43', 'Die deutsche Wiedervereinigung', 'Understand German reunification and its effects.', 'German Reunification', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'die Geschichte', 'التاريخ', 'history', NULL, 'die', NULL, 'noun', 'Geschichte ist ein wichtiges Fach.', 'History is an important subject.', 'A2', 1),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Krieg', 'الحرب', 'war', NULL, 'der', 'die Kriege', 'noun', 'Der Krieg endete 1945.', 'The war ended in 1945.', 'B1', 2),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Reich', 'الإمبراطورية', 'empire', NULL, 'das', 'die Reiche', 'noun', 'Das Deutsche Reich bestand bis 1918.', 'The German Empire existed until 1918.', 'B2', 3),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Mauer', 'الجدار', 'wall', NULL, 'die', 'die Mauern', 'noun', 'Die Berliner Mauer fiel 1989.', 'The Berlin Wall fell in 1989.', 'B1', 4),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Wiedervereinigung', 'إعادة التوحيد', 'reunification', NULL, 'die', NULL, 'noun', 'Die Wiedervereinigung war 1990.', 'The reunification was in 1990.', 'B2', 5),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Mittelalter', 'العصور الوسطى', 'Middle Ages', NULL, 'das', NULL, 'noun', 'Das Mittelalter dauerte bis 1500.', 'The Middle Ages lasted until 1500.', 'B2', 6),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Kaiser', 'الإمبراطور', 'emperor', NULL, 'der', 'die Kaiser', 'noun', 'Der Kaiser regierte das Reich.', 'The emperor ruled the empire.', 'B2', 7),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-00000261f3ae', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Relativsätze (Relative Clauses) / الجمل الموصولة', 'Relative clauses give more information about a noun. The relative pronoun matches the noun in gender and number, but its case depends on its function in the relative clause. Der → der (Nom), den (Akk), dem (Dat), dessen (Gen). The verb goes to the END of the relative clause.', '[{"rule":"Relative pronoun = gender + number of noun, case = function in the relative clause","note":"Der Mann, der... (Nom). Der Mann, den... (Akk). Der Mann, dem... (Dat)."},{"rule":"Verb goes to the END of the relative clause","note":"Das ist der Mann, den ich gestern gesehen habe."}]', '[{"german":"Der Mann, der dort steht, ist mein Lehrer.","arabic":"الرجل الذي يقف هناك هو أستاذي.","english":"The man who is standing there is my teacher."},{"german":"Das Buch, das ich lese, ist sehr interessant.","arabic":"الكتاب الذي أقرؤه مثير جداً.","english":"The book that I am reading is very interesting."}]', '[{"mistake":"Der Mann, den dort steht (using Akkusativ for subject)","correction":"Der Mann, der dort steht","explanation":"The relative pronoun \"der\" is the subject of \"steht\" → Nominativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'Welches deutsche Wort bedeutet "history"?', '["die Mauer","die Geschichte","der Krieg","die Wiedervereinigung"]', 'die Geschichte', '"history" = "die Geschichte" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'Welches deutsche Wort bedeutet "war"?', '["der Krieg","die Geschichte","das Reich","die Mauer"]', 'der Krieg', '"war" = "der Krieg" in German. Article: der Plural: die Kriege', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'Welches deutsche Wort bedeutet "empire"?', '["die Mauer","das Reich","die Geschichte","die Wiedervereinigung"]', 'das Reich', '"empire" = "das Reich" in German. Article: das Plural: die Reiche', 1, 3),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'Welches deutsche Wort bedeutet "wall"?', '["die Mauer","die Geschichte","der Krieg","das Reich"]', 'die Mauer', '"wall" = "die Mauer" in German. Article: die Plural: die Mauern', 1, 4),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'Welches deutsche Wort bedeutet "reunification"?', '["die Geschichte","die Mauer","das Reich","die Wiedervereinigung"]', 'die Wiedervereinigung', '"reunification" = "die Wiedervereinigung" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00000261f3ae', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über German Reunification. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00000261f3ae', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about German Reunification."', '["Ich lerne über German Reunification.","Ich lerne German Reunification.","Lerne ich German Reunification."]', 'Ich lerne über German Reunification.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00000261f3ae', 'matching', 'Match: Which word pairs are correct?', '["die Geschichte - history, der Krieg - war"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'Was bedeutet "die Geschichte" auf Deutsch?', '["history","to run","beautiful","yesterday"]', 'history', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'Welcher Artikel gehört zu "der Krieg"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ae', 'true_false', 'Das Wort "das Reich" gehört zum Thema German Reunification.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Der Mann, der dort steht, ist mein Lehrer.","Das Buch, das ich lese, ist sehr interessant."]', 'Der Mann, der dort steht, ist mein Lehrer.', 2, 4),
  ('00000000-0000-4000-a000-00000261f3ae', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00000261f3ae', 'fill_blank', 'Complete: Ich ___ (wall) Deutsch.', '["die Mauer","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'Wie lautet das deutsche Wort für "reunification"?', '["die Wiedervereinigung","das Mittelalter","der Kaiser","die Wirtschaft"]', 'die Wiedervereinigung', 1, 7),
  ('00000000-0000-4000-a000-00000261f3ae', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00000261f3ae', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 1),
  ('00000000-0000-4000-a000-00000261f3ae', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 2),
  ('00000000-0000-4000-a000-00000261f3ae', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 3),
  ('00000000-0000-4000-a000-00000261f3ae', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'die die Geschichte', 'history — التاريخ', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00000261f3ae', 'der der Krieg (die Kriege)', 'war — الحرب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00000261f3ae', 'das das Reich (die Reiche)', 'empire — الإمبراطورية', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00000261f3ae', 'die die Mauer (die Mauern)', 'wall — الجدار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00000261f3ae', 'die die Wiedervereinigung', 'reunification — إعادة التوحيد', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00000261f3ae', 'das das Mittelalter', 'Middle Ages — العصور الوسطى', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00000261f3ae', 'der der Kaiser (die Kaiser)', 'emperor — الإمبراطور', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00000261f3ae', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00000261f3ae', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00000261f3ae', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00000261f3ae', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00000261f3ae', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00000261f3ae', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00000261f3ae', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00000261f3ae', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00000261f3ae', 'Der Mann, der dort steht, ist mein Lehrer.', 'The man who is standing there is my teacher.', 'Relativsätze (Relative Clauses)', 'grammar', 16),
  ('00000000-0000-4000-a000-00000261f3ae', 'Das Buch, das ich lese, ist sehr interessant.', 'The book that I am reading is very interesting.', 'Relativsätze (Relative Clauses)', 'grammar', 17);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Die deutsche Wiedervereinigung — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Die deutsche Wiedervereinigung — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Deutschland, Österreich, Schweiz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', '🔊 Sprechen: Die deutsche Wiedervereinigung', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss German Reunification with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'German Reunification', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', '✏️ Schreiben: Die deutsche Wiedervereinigung', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "German Reunification". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Die deutsche Wiedervereinigung — Roleplay', 'German Reunification', 'Student', 'Teacher', 'Practice conversation about German Reunification', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Die deutsche Wiedervereinigung — Advanced Roleplay', 'German Reunification', 'Customer', 'Assistant', 'Extended conversation about German Reunification', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Die deutsche Wiedervereinigung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die deutsche Wiedervereinigung".', 'Creative practice for German Reunification', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', '📚 Hausaufgabe: Die deutsche Wiedervereinigung', 'Complete these tasks to reinforce "Die deutsche Wiedervereinigung".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about German Reunification: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about German Reunification. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00000261f3ae', '🎯 Excellent progress! This lesson covered German Reunification (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of history. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about German Reunification","present_tense — grammar explanation and practice","Reading comprehension: text about German Reunification","Listening comprehension: dialogue about German Reunification","Speaking practice: roleplay/discussion about German Reunification","Writing task: text about German Reunification"]', '[{"title":"Die deutsche Wiedervereinigung Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Geschichte (history)','der Krieg (war)','das Reich (empire)','die Mauer (wall)','die Wiedervereinigung (reunification)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about German Reunification for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'translation', 'Translate to German: "I use the word "history" in a sentence about German Reunification."', '[]', 'Geschichte ist ein wichtiges Fach.', 'Use die  "die Geschichte" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'translation', 'Translate to German: "I use the word "war" in a sentence about German Reunification."', '[]', 'Der Krieg endete 1945.', 'Use der  "der Krieg" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'translation', 'Translate to German: "I use the word "empire" in a sentence about German Reunification."', '[]', 'Das Deutsche Reich bestand bis 1918.', 'Use das  "das Reich" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Culture: 🇩🇪 Deutsche Kultur: German Reunification', 'German Reunification in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with German Reunification in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى German Reunification في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

  -- Lesson 4: B2 Abschlusstest (L-B2-06-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00000261f3af', '00000000-0000-4000-a000-000039c35f43', 'B2 Abschlusstest', 'Comprehensive B2 level test.', 'Level Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'die Geschichte', 'التاريخ', 'history', NULL, 'die', NULL, 'noun', 'Geschichte ist ein wichtiges Fach.', 'History is an important subject.', 'A2', 1),
  ('00000000-0000-4000-a000-00000261f3af', 'der Krieg', 'الحرب', 'war', NULL, 'der', 'die Kriege', 'noun', 'Der Krieg endete 1945.', 'The war ended in 1945.', 'B1', 2),
  ('00000000-0000-4000-a000-00000261f3af', 'das Reich', 'الإمبراطورية', 'empire', NULL, 'das', 'die Reiche', 'noun', 'Das Deutsche Reich bestand bis 1918.', 'The German Empire existed until 1918.', 'B2', 3),
  ('00000000-0000-4000-a000-00000261f3af', 'die Mauer', 'الجدار', 'wall', NULL, 'die', 'die Mauern', 'noun', 'Die Berliner Mauer fiel 1989.', 'The Berlin Wall fell in 1989.', 'B1', 4),
  ('00000000-0000-4000-a000-00000261f3af', 'die Wiedervereinigung', 'إعادة التوحيد', 'reunification', NULL, 'die', NULL, 'noun', 'Die Wiedervereinigung war 1990.', 'The reunification was in 1990.', 'B2', 5),
  ('00000000-0000-4000-a000-00000261f3af', 'das Mittelalter', 'العصور الوسطى', 'Middle Ages', NULL, 'das', NULL, 'noun', 'Das Mittelalter dauerte bis 1500.', 'The Middle Ages lasted until 1500.', 'B2', 6),
  ('00000000-0000-4000-a000-00000261f3af', 'der Kaiser', 'الإمبراطور', 'emperor', NULL, 'der', 'die Kaiser', 'noun', 'Der Kaiser regierte das Reich.', 'The emperor ruled the empire.', 'B2', 7),
  ('00000000-0000-4000-a000-00000261f3af', 'die Wirtschaft', 'الاقتصاد', 'economy', NULL, 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-00000261f3af', 'das Unternehmen', 'الشركة', 'enterprise', NULL, 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-00000261f3af', 'die Aktie', 'السهم', 'share', NULL, 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-00000261f3af', 'der Umsatz', 'الإيرادات', 'revenue', NULL, 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-00000261f3af', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', NULL, 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-00000261f3af', 'investieren', 'يستثمر', 'to invest', NULL, NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-00000261f3af', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-00000261f3af', 'die Messe', 'المعرض التجاري', 'trade fair', NULL, 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-00000261f3af', 'die Regierung', 'الحكومة', 'government', NULL, 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-00000261f3af', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', NULL, 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-00000261f3af', 'die Wahl', 'الانتخاب', 'election', NULL, 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-00000261f3af', 'die Partei', 'الحزب', 'party', NULL, 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-00000261f3af', 'der Kanzler', 'المستشار', 'chancellor', NULL, 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-00000261f3af', 'die Demokratie', 'الديمقراطية', 'democracy', NULL, 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-00000261f3af', 'das Gesetz', 'القانون', 'law', NULL, 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-00000261f3af', 'die Wissenschaft', 'العلم', 'science', NULL, 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-00000261f3af', 'die Forschung', 'البحث العلمي', 'research', NULL, 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-00000261f3af', 'das Labor', 'المختبر', 'laboratory', NULL, 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-00000261f3af', 'das Experiment', 'التجربة', 'experiment', NULL, 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-00000261f3af', 'die Theorie', 'النظرية', 'theory', NULL, 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-00000261f3af', 'die Biologie', 'علم الأحياء', 'biology', NULL, 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-00000261f3af', 'die Chemie', 'الكيمياء', 'chemistry', NULL, 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-00000261f3af', 'die Physik', 'الفيزياء', 'physics', NULL, 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Passiv (Passive Voice) / المبني للمجهول', 'German passive shifts focus from who does the action to what happens. Form: "werden" (conjugated) + Partizip II. The agent (by whom) is optional and uses "von" + Dativ. Vorgangspassiv (process passive) uses "werden". Zustandspassiv (state passive) uses "sein".', '[{"rule":"Vorgangspassiv: werden + Partizip II","note":"Das Haus wird gebaut. (The house is being built.)"},{"rule":"Agent with von (person) or durch (thing)","note":"Das Haus wird vom Architekten gebaut. (by the architect)"},{"rule":"Zustandspassiv: sein + Partizip II","note":"Das Haus ist gebaut. (The house is built — state.)"}]', '[{"german":"In Deutschland wird viel Deutsch gesprochen.","arabic":"في ألمانيا، يتم التحدث بالألمانية كثيراً.","english":"In Germany, a lot of German is spoken."},{"german":"Der Brief wurde gestern geschrieben.","arabic":"تم كتابة الرسالة أمس.","english":"The letter was written yesterday."},{"german":"Die Tür ist geöffnet. (Zustandspassiv)","arabic":"الباب مفتوح. (حالة)","english":"The door is open."}]', '[{"mistake":"Das Haus wird gebaut von dem Architekt (wrong case)","correction":"...von dem Architekten (Dativ)","explanation":"\"Von\" always takes Dative. Der Architekt → dem Architekten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'Welches deutsche Wort bedeutet "history"?', '["das Reich","der Krieg","die Geschichte","die Mauer"]', 'die Geschichte', '"history" = "die Geschichte" in German. Article: die ', 1, 1),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'Welches deutsche Wort bedeutet "war"?', '["der Krieg","die Geschichte","die Mauer","die Wiedervereinigung"]', 'der Krieg', '"war" = "der Krieg" in German. Article: der Plural: die Kriege', 1, 2),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'Welches deutsche Wort bedeutet "empire"?', '["der Krieg","das Reich","die Geschichte","die Mauer"]', 'das Reich', '"empire" = "das Reich" in German. Article: das Plural: die Reiche', 1, 3),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'Welches deutsche Wort bedeutet "wall"?', '["die Mauer","die Geschichte","das Reich","die Wiedervereinigung"]', 'die Mauer', '"wall" = "die Mauer" in German. Article: die Plural: die Mauern', 1, 4),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'Welches deutsche Wort bedeutet "reunification"?', '["das Reich","der Krieg","die Geschichte","die Wiedervereinigung"]', 'die Wiedervereinigung', '"reunification" = "die Wiedervereinigung" in German. Article: die ', 1, 5),
  ('00000000-0000-4000-a000-00000261f3af', 'fill_gap', 'Ergänzen Sie den Satz: Ich ___ gern über Level Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00000261f3af', 'translation', 'Übersetzen Sie ins Deutsche: "I am learning about Level Test."', '["Ich lerne über Level Test.","Ich lerne Level Test.","Lerne ich Level Test."]', 'Ich lerne über Level Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00000261f3af', 'matching', 'Match: Which word pairs are correct?', '["die Geschichte - history, der Krieg - war"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'Was bedeutet "die Geschichte" auf Deutsch?', '["history","to run","beautiful","yesterday"]', 'history', 1, 1),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'Welcher Artikel gehört zu "der Krieg"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00000261f3af', 'true_false', 'Das Wort "das Reich" gehört zum Thema Level Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["In Deutschland wird viel Deutsch gesprochen.","Der Brief wurde gestern geschrieben.","Die Tür ist geöffnet. (Zustandspassiv)"]', 'In Deutschland wird viel Deutsch gesprochen.', 2, 4),
  ('00000000-0000-4000-a000-00000261f3af', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00000261f3af', 'fill_blank', 'Complete: Ich ___ (wall) Deutsch.', '["die Mauer","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'Wie lautet das deutsche Wort für "reunification"?', '["die Wiedervereinigung","das Mittelalter","der Kaiser","die Wirtschaft"]', 'die Wiedervereinigung', 1, 7),
  ('00000000-0000-4000-a000-00000261f3af', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00000261f3af', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 1),
  ('00000000-0000-4000-a000-00000261f3af', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 2),
  ('00000000-0000-4000-a000-00000261f3af', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 3),
  ('00000000-0000-4000-a000-00000261f3af', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'die die Geschichte', 'history — التاريخ', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00000261f3af', 'der der Krieg (die Kriege)', 'war — الحرب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00000261f3af', 'das das Reich (die Reiche)', 'empire — الإمبراطورية', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00000261f3af', 'die die Mauer (die Mauern)', 'wall — الجدار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00000261f3af', 'die die Wiedervereinigung', 'reunification — إعادة التوحيد', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00000261f3af', 'das das Mittelalter', 'Middle Ages — العصور الوسطى', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00000261f3af', 'der der Kaiser (die Kaiser)', 'emperor — الإمبراطور', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00000261f3af', 'die die Wirtschaft', 'economy — الاقتصاد', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00000261f3af', 'das das Unternehmen (die Unternehmen)', 'enterprise — الشركة', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00000261f3af', 'die die Aktie (die Aktien)', 'share — السهم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00000261f3af', 'der der Umsatz (die Umsätze)', 'revenue — الإيرادات', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00000261f3af', 'die die Bilanz (die Bilanzen)', 'balance sheet — الميزانية العمومية', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00000261f3af', 'investieren', 'to invest — يستثمر', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00000261f3af', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00000261f3af', 'die die Messe (die Messen)', 'trade fair — المعرض التجاري', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00000261f3af', 'In Deutschland wird viel Deutsch gesprochen.', 'In Germany, a lot of German is spoken.', 'Passiv (Passive Voice)', 'grammar', 16),
  ('00000000-0000-4000-a000-00000261f3af', 'Der Brief wurde gestern geschrieben.', 'The letter was written yesterday.', 'Passiv (Passive Voice)', 'grammar', 17),
  ('00000000-0000-4000-a000-00000261f3af', 'Die Tür ist geöffnet. (Zustandspassiv)', 'The door is open.', 'Passiv (Passive Voice)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00000261f3af', 'B2 Abschlusstest — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00000261f3af', 'B2 Abschlusstest — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ', 72, 2, 'Deutschland, Österreich, Schweiz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', '🔊 Sprechen: B2 Abschlusstest', 'Discussion: You attend a German Stammtisch (weekly meetup). Discuss Level Test with the group. Express your opinion, agree/disagree, ask follow-up questions. Try to keep the conversation flowing for 2 minutes.', 'Level Test', ARRAY['Use discourse markers (also, jedoch, außerdem)','React naturally: "Ach so!", "Echt?", "Das stimmt!"','Paraphrase when you don''t know a word']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[], 60, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', '✏️ Schreiben: B2 Abschlusstest', 'Write a formal letter (200-250 words) to your German teacher explaining what you learned about "Level Test". Include: what surprised you, what was similar/different to your culture, and what you want to learn next. Use present_tense correctly.', ARRAY['Use paragraph breaks for structure','Connect ideas with "außerdem", "deshalb", "jedoch"','Check your verb position in Nebensätze']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 150, 250, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3af', 'B2 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3af', 'B2 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00000261f3af', 'B2 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "B2 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', '📚 Hausaufgabe: B2 Abschlusstest', 'Complete these tasks to reinforce "B2 Abschlusstest".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Level Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Level Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00000261f3af', '🎯 Excellent progress! This lesson covered Level Test (71 vocabulary items) and present_tense. You developed reading, listening, speaking, and writing skills in the context of history. Focus on your common mistakes area for maximum improvement.', '["71 vocabulary items about Level Test","present_tense — grammar explanation and practice","Reading comprehension: text about Level Test","Listening comprehension: dialogue about Level Test","Speaking practice: roleplay/discussion about Level Test","Writing task: text about Level Test"]', '[{"title":"B2 Abschlusstest Review","summary":"present_tense — the main grammar focus. Focus on using this structure naturally in conversations and writing."}]', ARRAY['die Geschichte (history)','der Krieg (war)','das Reich (empire)','die Mauer (wall)','die Wiedervereinigung (reunification)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Watch out for verb position in Nebensätze']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Level Test for authentic input']::text[]);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Pronunciation: Intonation and sentence melody', 'German sentences have a falling intonation at the end of statements. Questions starting with a verb rise at the end. W-questions fall at the end. Emphasise the stressed syllable — German stresses the first syllable of the root.

Common mistake for Arabic speakers: Arabic speakers often put stress on the wrong syllable. Remember: German root stress is usually on the first syllable.', '[]', '[{"german":"warum","arabic":"","english":"","phonetic":"/vaˈrʊm/"},{"german":"deshalb","arabic":"","english":"","phonetic":"/dɛsˈhalp/"}]', '[]', 10);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'translation', 'Translate to German: "I use the word "history" in a sentence about Level Test."', '[]', 'Geschichte ist ein wichtiges Fach.', 'Use die  "die Geschichte" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'translation', 'Translate to German: "I use the word "war" in a sentence about Level Test."', '[]', 'Der Krieg endete 1945.', 'Use der  "der Krieg" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'translation', 'Translate to German: "I use the word "empire" in a sentence about Level Test."', '[]', 'Das Deutsche Reich bestand bis 1918.', 'Use das  "das Reich" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Culture: 🇩🇪 Deutsche Kultur: Level Test', 'Level Test in Germany has specific cultural nuances that differ from Arabic-speaking countries. Germans tend to separate their private and professional lives strictly. When dealing with Level Test in a professional context, use formal register and prepare factual arguments. Emotional appeals are less effective than logical reasoning.

لدى Level Test في ألمانيا فروق ثقافية دقيقة تختلف عن البلدان العربية. الألمان يفصلون بين حياتهم الخاصة والمهنية بشكل صارم.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Incorrect preposition usage after verbs","correction":"Learn which preposition each verb requires (sich freuen auf, warten auf, denken an)","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Putting the verb at the end in main clauses","correction":"Verb stays in position 2 in main clauses","explanation":"Subordinate clause word order interferes"}]', 30);

end $$;
