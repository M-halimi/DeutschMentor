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
  values ('00000000-0000-4000-a000-0000025fadd1', '00000000-0000-4000-a000-000039c35f3e', 'Büro und Arbeitsplatz', 'Advanced office and workplace vocabulary.', 'Office & Workplace', 'vocabulary', '["Understand and use vocabulary related to Office & Workplace","Apply present_tense correctly","Read and comprehend a text about Office & Workplace","Listen and understand a dialogue about Office & Workplace","Speak about Office & Workplace in simple sentences","Write a short text about Office & Workplace"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd1', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd1', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd1', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd1', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd1', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd1', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd1', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd1', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd1', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'What does "die Wirtschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd1', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd1', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000025fadd1', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd1', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'What is the main topic of this lesson?', '["Office & Workplace","Sports","Music","Travel"]', 'Office & Workplace', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd1', 'true_false', 'This lesson teaches vocabulary about Office & Workplace.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd1', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd1', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd1', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd1', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd1', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Berufliche Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd1', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Berufliche Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000025fadd1', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Berufliche Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000025fadd1', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000025fadd1', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000025fadd1', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Büro und Arbeitsplatz — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Speaking: Büro und Arbeitsplatz', 'Practice talking about Office & Workplace. Answer questions and have a simple conversation.', 'Office & Workplace', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Writing: Büro und Arbeitsplatz', 'Write a short text about Office & Workplace. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Büro und Arbeitsplatz — Roleplay', 'Office & Workplace', 'Student', 'Teacher', 'Practice conversation about Office & Workplace', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Büro und Arbeitsplatz — Advanced Roleplay', 'Office & Workplace', 'Customer', 'Assistant', 'Extended conversation about Office & Workplace', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Büro und Arbeitsplatz — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Büro und Arbeitsplatz".', 'Creative practice for Office & Workplace', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Homework: Büro und Arbeitsplatz', 'Complete these tasks to reinforce "Büro und Arbeitsplatz".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd1', 'In this lesson you learned about Office & Workplace. You practiced vocabulary related to business and grammar structure present_tense.', '["Mastered vocabulary about Office & Workplace","Applied present_tense correctly","Read and understood a text about Office & Workplace","Practiced speaking about Office & Workplace"]', '[{"title":"Büro und Arbeitsplatz Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Office & Workplace core vocabulary','business key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Culture: Office & Workplace in German-Speaking Countries', 'Learn how Office & Workplace is approached in German culture.

تعلم كيف يتم التعامل مع Office & Workplace في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Geschäftskorrespondenz (L-B2-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd2', '00000000-0000-4000-a000-000039c35f3e', 'Geschäftskorrespondenz', 'Write professional emails and letters.', 'Business Correspondence', 'writing', '["Understand and use vocabulary related to Business Correspondence","Apply present_tense correctly","Read and comprehend a text about Business Correspondence","Listen and understand a dialogue about Business Correspondence","Speak about Business Correspondence in simple sentences","Write a short text about Business Correspondence"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd2', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd2', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd2', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd2', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd2', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd2', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd2', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd2', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd2', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'What does "die Wirtschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd2', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd2', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000025fadd2', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd2', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'What is the main topic of this lesson?', '["Business Correspondence","Sports","Music","Travel"]', 'Business Correspondence', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd2', 'true_false', 'This lesson teaches vocabulary about Business Correspondence.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd2', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd2', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd2', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd2', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd2', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd2', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Berufliche Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd2', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Berufliche Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000025fadd2', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Berufliche Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000025fadd2', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000025fadd2', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000025fadd2', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Geschäftskorrespondenz — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Speaking: Geschäftskorrespondenz', 'Practice talking about Business Correspondence. Answer questions and have a simple conversation.', 'Business Correspondence', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Writing: Geschäftskorrespondenz', 'Write a short text about Business Correspondence. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Geschäftskorrespondenz — Roleplay', 'Business Correspondence', 'Student', 'Teacher', 'Practice conversation about Business Correspondence', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Geschäftskorrespondenz — Advanced Roleplay', 'Business Correspondence', 'Customer', 'Assistant', 'Extended conversation about Business Correspondence', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Geschäftskorrespondenz — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Geschäftskorrespondenz".', 'Creative practice for Business Correspondence', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Homework: Geschäftskorrespondenz', 'Complete these tasks to reinforce "Geschäftskorrespondenz".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd2', 'In this lesson you learned about Business Correspondence. You practiced vocabulary related to business and grammar structure present_tense.', '["Mastered vocabulary about Business Correspondence","Applied present_tense correctly","Read and understood a text about Business Correspondence","Practiced speaking about Business Correspondence"]', '[{"title":"Geschäftskorrespondenz Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Business Correspondence core vocabulary','business key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Culture: Business Correspondence in German-Speaking Countries', 'Learn how Business Correspondence is approached in German culture.

تعلم كيف يتم التعامل مع Business Correspondence في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd2', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Passiv mit Modalverben (L-B2-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd3', '00000000-0000-4000-a000-000039c35f3e', 'Passiv mit Modalverben', 'Learn passive voice combined with modal verbs.', 'Passive with Modals', 'grammar', '["Understand and use vocabulary related to Passive with Modals","Apply present_tense correctly","Read and comprehend a text about Passive with Modals","Listen and understand a dialogue about Passive with Modals","Speak about Passive with Modals in simple sentences","Write a short text about Passive with Modals"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd3', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd3', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd3', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd3', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd3', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd3', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd3', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd3', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd3', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'What does "die Wirtschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd3', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd3', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000025fadd3', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd3', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'What is the main topic of this lesson?', '["Passive with Modals","Sports","Music","Travel"]', 'Passive with Modals', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd3', 'true_false', 'This lesson teaches vocabulary about Passive with Modals.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd3', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd3', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd3', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd3', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd3', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd3', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Berufliche Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd3', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Berufliche Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000025fadd3', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Berufliche Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000025fadd3', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000025fadd3', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000025fadd3', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Passiv mit Modalverben — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Speaking: Passiv mit Modalverben', 'Practice talking about Passive with Modals. Answer questions and have a simple conversation.', 'Passive with Modals', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Writing: Passiv mit Modalverben', 'Write a short text about Passive with Modals. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Passiv mit Modalverben — Roleplay', 'Passive with Modals', 'Student', 'Teacher', 'Practice conversation about Passive with Modals', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Passiv mit Modalverben — Advanced Roleplay', 'Passive with Modals', 'Customer', 'Assistant', 'Extended conversation about Passive with Modals', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Passiv mit Modalverben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Passiv mit Modalverben".', 'Creative practice for Passive with Modals', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Homework: Passiv mit Modalverben', 'Complete these tasks to reinforce "Passiv mit Modalverben".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd3', 'In this lesson you learned about Passive with Modals. You practiced vocabulary related to business and grammar structure present_tense.', '["Mastered vocabulary about Passive with Modals","Applied present_tense correctly","Read and understood a text about Passive with Modals","Practiced speaking about Passive with Modals"]', '[{"title":"Passiv mit Modalverben Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Passive with Modals core vocabulary','business key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Culture: Passive with Modals in German-Speaking Countries', 'Learn how Passive with Modals is approached in German culture.

تعلم كيف يتم التعامل مع Passive with Modals في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd3', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Besprechungen und Meetings (L-B2-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd4', '00000000-0000-4000-a000-000039c35f3e', 'Besprechungen und Meetings', 'Participate in meetings and discussions.', 'Meetings', 'dialogue', '["Understand and use vocabulary related to Meetings","Apply present_tense correctly","Read and comprehend a text about Meetings","Listen and understand a dialogue about Meetings","Speak about Meetings in simple sentences","Write a short text about Meetings"]', 60, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd4', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd4', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd4', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd4', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd4', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd4', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd4', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd4', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd4', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'What does "die Wirtschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd4', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd4', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000025fadd4', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd4', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'What is the main topic of this lesson?', '["Meetings","Sports","Music","Travel"]', 'Meetings', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd4', 'true_false', 'This lesson teaches vocabulary about Meetings.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd4', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd4', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd4', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd4', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd4', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd4', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Berufliche Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd4', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Berufliche Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000025fadd4', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Berufliche Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000025fadd4', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000025fadd4', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000025fadd4', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Besprechungen und Meetings — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Speaking: Besprechungen und Meetings', 'Practice talking about Meetings. Answer questions and have a simple conversation.', 'Meetings', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Writing: Besprechungen und Meetings', 'Write a short text about Meetings. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Besprechungen und Meetings — Roleplay', 'Meetings', 'Student', 'Teacher', 'Practice conversation about Meetings', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Besprechungen und Meetings — Advanced Roleplay', 'Meetings', 'Customer', 'Assistant', 'Extended conversation about Meetings', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Besprechungen und Meetings — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Besprechungen und Meetings".', 'Creative practice for Meetings', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Homework: Besprechungen und Meetings', 'Complete these tasks to reinforce "Besprechungen und Meetings".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd4', 'In this lesson you learned about Meetings. You practiced vocabulary related to business and grammar structure present_tense.', '["Mastered vocabulary about Meetings","Applied present_tense correctly","Read and understood a text about Meetings","Practiced speaking about Meetings"]', '[{"title":"Besprechungen und Meetings Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Meetings core vocabulary','business key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Culture: Meetings in German-Speaking Countries', 'Learn how Meetings is approached in German culture.

تعلم كيف يتم التعامل مع Meetings في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd4', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Kausalsätze: wegen, aufgrund, dank (L-B2-01-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd5', '00000000-0000-4000-a000-000039c35f3e', 'Kausalsätze: wegen, aufgrund, dank', 'Express reasons using prepositions with Genitiv.', 'Causal Clauses', 'grammar', '["Understand and use vocabulary related to Causal Clauses","Apply present_tense correctly","Read and comprehend a text about Causal Clauses","Listen and understand a dialogue about Causal Clauses","Speak about Causal Clauses in simple sentences","Write a short text about Causal Clauses"]', 50, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd5', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd5', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd5', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd5', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd5', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd5', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd5', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd5', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd5', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'What does "die Wirtschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd5', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd5', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000025fadd5', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd5', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'What is the main topic of this lesson?', '["Causal Clauses","Sports","Music","Travel"]', 'Causal Clauses', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd5', 'true_false', 'This lesson teaches vocabulary about Causal Clauses.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd5', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd5', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd5', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd5', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd5', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd5', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Berufliche Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd5', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Berufliche Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000025fadd5', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Berufliche Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000025fadd5', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000025fadd5', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000025fadd5', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Kausalsätze: wegen, aufgrund, dank — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Speaking: Kausalsätze: wegen, aufgrund, dank', 'Practice talking about Causal Clauses. Answer questions and have a simple conversation.', 'Causal Clauses', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Writing: Kausalsätze: wegen, aufgrund, dank', 'Write a short text about Causal Clauses. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Kausalsätze: wegen, aufgrund, dank — Roleplay', 'Causal Clauses', 'Student', 'Teacher', 'Practice conversation about Causal Clauses', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Kausalsätze: wegen, aufgrund, dank — Advanced Roleplay', 'Causal Clauses', 'Customer', 'Assistant', 'Extended conversation about Causal Clauses', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Kausalsätze: wegen, aufgrund, dank — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kausalsätze: wegen, aufgrund, dank".', 'Creative practice for Causal Clauses', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Homework: Kausalsätze: wegen, aufgrund, dank', 'Complete these tasks to reinforce "Kausalsätze: wegen, aufgrund, dank".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd5', 'In this lesson you learned about Causal Clauses. You practiced vocabulary related to business and grammar structure present_tense.', '["Mastered vocabulary about Causal Clauses","Applied present_tense correctly","Read and understood a text about Causal Clauses","Practiced speaking about Causal Clauses"]', '[{"title":"Kausalsätze: wegen, aufgrund, dank Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Causal Clauses core vocabulary','business key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Culture: Causal Clauses in German-Speaking Countries', 'Learn how Causal Clauses is approached in German culture.

تعلم كيف يتم التعامل مع Causal Clauses في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd5', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Berufliche Kommunikation (L-B2-01-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000025fadd6', '00000000-0000-4000-a000-000039c35f3e', 'Test: Berufliche Kommunikation', 'Module test on professional communication.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 45, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 1),
  ('00000000-0000-4000-a000-0000025fadd6', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 2),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 3),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 4),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 5),
  ('00000000-0000-4000-a000-0000025fadd6', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 6),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 7),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 8),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 9),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 10),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 11),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 12),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 13),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 14),
  ('00000000-0000-4000-a000-0000025fadd6', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 15),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-0000025fadd6', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-0000025fadd6', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-0000025fadd6', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-0000025fadd6', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-0000025fadd6', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-0000025fadd6', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'What does "die Wirtschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd6', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd6', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000025fadd6', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000025fadd6', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-0000025fadd6', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000025fadd6', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000025fadd6', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000025fadd6', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000025fadd6', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000025fadd6', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Berufliche Kommunikation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000025fadd6', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Berufliche Kommunikation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000025fadd6', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Berufliche Kommunikation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000025fadd6', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Berufliche Kommunikation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000025fadd6', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000025fadd6', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000025fadd6', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Test: Berufliche Kommunikation — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Berufliche Kommunikation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Speaking: Test: Berufliche Kommunikation', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Writing: Test: Berufliche Kommunikation', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wirtschaft','das Unternehmen','die Aktie']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Test: Berufliche Kommunikation — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Test: Berufliche Kommunikation — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wirtschaft','das Unternehmen','die Aktie','der Umsatz','die Bilanz','investieren','der Markt','die Messe']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Test: Berufliche Kommunikation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Berufliche Kommunikation".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Homework: Test: Berufliche Kommunikation', 'Complete these tasks to reinforce "Test: Berufliche Kommunikation".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000025fadd6', 'In this lesson you learned about Module Test. You practiced vocabulary related to business and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Berufliche Kommunikation Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','business key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000025fadd6', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 2: Gesellschaft und Politik
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f3f', 'B2', 'Gesellschaft und Politik', 'Discuss political systems, social issues, and current events.', '["Discuss political systems and elections","Analyze social issues","Use Konjunktiv II for hypothetical situations","Write opinion pieces","Use indefinite pronouns"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Politisches System Deutschlands (L-B2-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002602230', '00000000-0000-4000-a000-000039c35f3f', 'Politisches System Deutschlands', 'Learn about German political system and vocabulary.', 'German Politics', 'vocabulary', '["Understand and use vocabulary related to German Politics","Apply present_tense correctly","Read and comprehend a text about German Politics","Listen and understand a dialogue about German Politics","Speak about German Politics in simple sentences","Write a short text about German Politics"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 1),
  ('00000000-0000-4000-a000-000002602230', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 2),
  ('00000000-0000-4000-a000-000002602230', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 3),
  ('00000000-0000-4000-a000-000002602230', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 4),
  ('00000000-0000-4000-a000-000002602230', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 5),
  ('00000000-0000-4000-a000-000002602230', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 6),
  ('00000000-0000-4000-a000-000002602230', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 7),
  ('00000000-0000-4000-a000-000002602230', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002602230', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002602230', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002602230', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002602230', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002602230', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002602230', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002602230', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002602230', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-000002602230', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-000002602230', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-000002602230', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-000002602230', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-000002602230', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-000002602230', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-000002602230', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-000002602230', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002602230', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002602230', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002602230', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002602230', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002602230', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002602230', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'What does "die Regierung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002602230', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002602230', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002602230', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002602230', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'What is the main topic of this lesson?', '["German Politics","Sports","Music","Travel"]', 'German Politics', 1, 1),
  ('00000000-0000-4000-a000-000002602230', 'true_false', 'This lesson teaches vocabulary about German Politics.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002602230', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002602230', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002602230', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002602230', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002602230', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesellschaft und Politik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002602230', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesellschaft und Politik', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002602230', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesellschaft und Politik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002602230', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesellschaft und Politik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002602230', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002602230', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002602230', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002602230', 'Politisches System Deutschlands — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesellschaft und Politik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Speaking: Politisches System Deutschlands', 'Practice talking about German Politics. Answer questions and have a simple conversation.', 'German Politics', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Writing: Politisches System Deutschlands', 'Write a short text about German Politics. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Regierung','der Bundestag','die Wahl']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602230', 'Politisches System Deutschlands — Roleplay', 'German Politics', 'Student', 'Teacher', 'Practice conversation about German Politics', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602230', 'Politisches System Deutschlands — Advanced Roleplay', 'German Politics', 'Customer', 'Assistant', 'Extended conversation about German Politics', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002602230', 'Politisches System Deutschlands — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politisches System Deutschlands".', 'Creative practice for German Politics', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Homework: Politisches System Deutschlands', 'Complete these tasks to reinforce "Politisches System Deutschlands".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002602230', 'In this lesson you learned about German Politics. You practiced vocabulary related to politics and grammar structure present_tense.', '["Mastered vocabulary about German Politics","Applied present_tense correctly","Read and understood a text about German Politics","Practiced speaking about German Politics"]', '[{"title":"Politisches System Deutschlands Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['German Politics core vocabulary','politics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Culture: German Politics in German-Speaking Countries', 'Learn how German Politics is approached in German culture.

تعلم كيف يتم التعامل مع German Politics في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602230', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Soziale Themen und Diskussionen (L-B2-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002602231', '00000000-0000-4000-a000-000039c35f3f', 'Soziale Themen und Diskussionen', 'Discuss social issues like migration, education, healthcare.', 'Social Issues', 'vocabulary', '["Understand and use vocabulary related to Social Issues","Apply present_tense correctly","Read and comprehend a text about Social Issues","Listen and understand a dialogue about Social Issues","Speak about Social Issues in simple sentences","Write a short text about Social Issues"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 1),
  ('00000000-0000-4000-a000-000002602231', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 2),
  ('00000000-0000-4000-a000-000002602231', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 3),
  ('00000000-0000-4000-a000-000002602231', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 4),
  ('00000000-0000-4000-a000-000002602231', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 5),
  ('00000000-0000-4000-a000-000002602231', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 6),
  ('00000000-0000-4000-a000-000002602231', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 7),
  ('00000000-0000-4000-a000-000002602231', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002602231', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002602231', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002602231', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002602231', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002602231', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002602231', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002602231', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002602231', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-000002602231', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-000002602231', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-000002602231', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-000002602231', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-000002602231', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-000002602231', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-000002602231', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-000002602231', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002602231', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002602231', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002602231', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002602231', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002602231', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002602231', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'What does "die Regierung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002602231', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002602231', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002602231', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002602231', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'What is the main topic of this lesson?', '["Social Issues","Sports","Music","Travel"]', 'Social Issues', 1, 1),
  ('00000000-0000-4000-a000-000002602231', 'true_false', 'This lesson teaches vocabulary about Social Issues.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002602231', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002602231', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002602231', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002602231', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002602231', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesellschaft und Politik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002602231', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesellschaft und Politik', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002602231', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesellschaft und Politik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002602231', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesellschaft und Politik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002602231', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002602231', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002602231', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002602231', 'Soziale Themen und Diskussionen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesellschaft und Politik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Speaking: Soziale Themen und Diskussionen', 'Practice talking about Social Issues. Answer questions and have a simple conversation.', 'Social Issues', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Writing: Soziale Themen und Diskussionen', 'Write a short text about Social Issues. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Regierung','der Bundestag','die Wahl']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602231', 'Soziale Themen und Diskussionen — Roleplay', 'Social Issues', 'Student', 'Teacher', 'Practice conversation about Social Issues', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602231', 'Soziale Themen und Diskussionen — Advanced Roleplay', 'Social Issues', 'Customer', 'Assistant', 'Extended conversation about Social Issues', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002602231', 'Soziale Themen und Diskussionen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Soziale Themen und Diskussionen".', 'Creative practice for Social Issues', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Homework: Soziale Themen und Diskussionen', 'Complete these tasks to reinforce "Soziale Themen und Diskussionen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002602231', 'In this lesson you learned about Social Issues. You practiced vocabulary related to politics and grammar structure present_tense.', '["Mastered vocabulary about Social Issues","Applied present_tense correctly","Read and understood a text about Social Issues","Practiced speaking about Social Issues"]', '[{"title":"Soziale Themen und Diskussionen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Social Issues core vocabulary','politics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Culture: Social Issues in German-Speaking Countries', 'Learn how Social Issues is approached in German culture.

تعلم كيف يتم التعامل مع Social Issues في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602231', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Konjunktiv II: hätte, wäre, würde (L-B2-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002602232', '00000000-0000-4000-a000-000039c35f3f', 'Konjunktiv II: hätte, wäre, würde', 'Learn subjunctive forms for hypothetical situations.', 'Konjunktiv II Forms', 'grammar', '["Understand and use vocabulary related to Konjunktiv II Forms","Apply present_tense correctly","Read and comprehend a text about Konjunktiv II Forms","Listen and understand a dialogue about Konjunktiv II Forms","Speak about Konjunktiv II Forms in simple sentences","Write a short text about Konjunktiv II Forms"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 1),
  ('00000000-0000-4000-a000-000002602232', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 2),
  ('00000000-0000-4000-a000-000002602232', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 3),
  ('00000000-0000-4000-a000-000002602232', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 4),
  ('00000000-0000-4000-a000-000002602232', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 5),
  ('00000000-0000-4000-a000-000002602232', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 6),
  ('00000000-0000-4000-a000-000002602232', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 7),
  ('00000000-0000-4000-a000-000002602232', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002602232', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002602232', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002602232', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002602232', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002602232', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002602232', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002602232', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002602232', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-000002602232', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-000002602232', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-000002602232', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-000002602232', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-000002602232', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-000002602232', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-000002602232', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-000002602232', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002602232', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002602232', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002602232', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002602232', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002602232', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002602232', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'What does "die Regierung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002602232', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002602232', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002602232', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002602232', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'What is the main topic of this lesson?', '["Konjunktiv II Forms","Sports","Music","Travel"]', 'Konjunktiv II Forms', 1, 1),
  ('00000000-0000-4000-a000-000002602232', 'true_false', 'This lesson teaches vocabulary about Konjunktiv II Forms.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002602232', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002602232', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002602232', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002602232', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002602232', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesellschaft und Politik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002602232', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesellschaft und Politik', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002602232', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesellschaft und Politik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002602232', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesellschaft und Politik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002602232', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002602232', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002602232', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002602232', 'Konjunktiv II: hätte, wäre, würde — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesellschaft und Politik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Speaking: Konjunktiv II: hätte, wäre, würde', 'Practice talking about Konjunktiv II Forms. Answer questions and have a simple conversation.', 'Konjunktiv II Forms', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Writing: Konjunktiv II: hätte, wäre, würde', 'Write a short text about Konjunktiv II Forms. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Regierung','der Bundestag','die Wahl']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602232', 'Konjunktiv II: hätte, wäre, würde — Roleplay', 'Konjunktiv II Forms', 'Student', 'Teacher', 'Practice conversation about Konjunktiv II Forms', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602232', 'Konjunktiv II: hätte, wäre, würde — Advanced Roleplay', 'Konjunktiv II Forms', 'Customer', 'Assistant', 'Extended conversation about Konjunktiv II Forms', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002602232', 'Konjunktiv II: hätte, wäre, würde — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv II: hätte, wäre, würde".', 'Creative practice for Konjunktiv II Forms', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Homework: Konjunktiv II: hätte, wäre, würde', 'Complete these tasks to reinforce "Konjunktiv II: hätte, wäre, würde".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002602232', 'In this lesson you learned about Konjunktiv II Forms. You practiced vocabulary related to politics and grammar structure present_tense.', '["Mastered vocabulary about Konjunktiv II Forms","Applied present_tense correctly","Read and understood a text about Konjunktiv II Forms","Practiced speaking about Konjunktiv II Forms"]', '[{"title":"Konjunktiv II: hätte, wäre, würde Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Konjunktiv II Forms core vocabulary','politics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Culture: Konjunktiv II Forms in German-Speaking Countries', 'Learn how Konjunktiv II Forms is approached in German culture.

تعلم كيف يتم التعامل مع Konjunktiv II Forms في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602232', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Eine Debatte führen (L-B2-02-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002602233', '00000000-0000-4000-a000-000039c35f3f', 'Eine Debatte führen', 'Practice formal debating and argumentation.', 'Debating', 'speaking', '["Understand and use vocabulary related to Debating","Apply present_tense correctly","Read and comprehend a text about Debating","Listen and understand a dialogue about Debating","Speak about Debating in simple sentences","Write a short text about Debating"]', 55, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 1),
  ('00000000-0000-4000-a000-000002602233', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 2),
  ('00000000-0000-4000-a000-000002602233', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 3),
  ('00000000-0000-4000-a000-000002602233', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 4),
  ('00000000-0000-4000-a000-000002602233', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 5),
  ('00000000-0000-4000-a000-000002602233', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 6),
  ('00000000-0000-4000-a000-000002602233', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 7),
  ('00000000-0000-4000-a000-000002602233', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002602233', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002602233', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002602233', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002602233', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002602233', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002602233', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002602233', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002602233', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-000002602233', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-000002602233', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-000002602233', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-000002602233', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-000002602233', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-000002602233', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-000002602233', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-000002602233', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002602233', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002602233', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002602233', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002602233', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002602233', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002602233', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'What does "die Regierung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002602233', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002602233', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002602233', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002602233', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'What is the main topic of this lesson?', '["Debating","Sports","Music","Travel"]', 'Debating', 1, 1),
  ('00000000-0000-4000-a000-000002602233', 'true_false', 'This lesson teaches vocabulary about Debating.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002602233', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002602233', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002602233', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002602233', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002602233', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesellschaft und Politik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002602233', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesellschaft und Politik', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002602233', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesellschaft und Politik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002602233', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesellschaft und Politik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002602233', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002602233', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002602233', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002602233', 'Eine Debatte führen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesellschaft und Politik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Speaking: Eine Debatte führen', 'Practice talking about Debating. Answer questions and have a simple conversation.', 'Debating', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Writing: Eine Debatte führen', 'Write a short text about Debating. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Regierung','der Bundestag','die Wahl']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602233', 'Eine Debatte führen — Roleplay', 'Debating', 'Student', 'Teacher', 'Practice conversation about Debating', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602233', 'Eine Debatte führen — Advanced Roleplay', 'Debating', 'Customer', 'Assistant', 'Extended conversation about Debating', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002602233', 'Eine Debatte führen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Eine Debatte führen".', 'Creative practice for Debating', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Homework: Eine Debatte führen', 'Complete these tasks to reinforce "Eine Debatte führen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002602233', 'In this lesson you learned about Debating. You practiced vocabulary related to politics and grammar structure present_tense.', '["Mastered vocabulary about Debating","Applied present_tense correctly","Read and understood a text about Debating","Practiced speaking about Debating"]', '[{"title":"Eine Debatte führen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Debating core vocabulary','politics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Culture: Debating in German-Speaking Countries', 'Learn how Debating is approached in German culture.

تعلم كيف يتم التعامل مع Debating في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602233', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Test: Gesellschaft und Politik (L-B2-02-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002602234', '00000000-0000-4000-a000-000039c35f3f', 'Test: Gesellschaft und Politik', 'Module test on society and politics.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 45, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 1),
  ('00000000-0000-4000-a000-000002602234', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 2),
  ('00000000-0000-4000-a000-000002602234', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 3),
  ('00000000-0000-4000-a000-000002602234', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 4),
  ('00000000-0000-4000-a000-000002602234', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 5),
  ('00000000-0000-4000-a000-000002602234', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 6),
  ('00000000-0000-4000-a000-000002602234', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 7),
  ('00000000-0000-4000-a000-000002602234', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002602234', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002602234', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002602234', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002602234', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002602234', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002602234', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002602234', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002602234', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 16),
  ('00000000-0000-4000-a000-000002602234', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 17),
  ('00000000-0000-4000-a000-000002602234', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 18),
  ('00000000-0000-4000-a000-000002602234', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 19),
  ('00000000-0000-4000-a000-000002602234', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 20),
  ('00000000-0000-4000-a000-000002602234', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 21),
  ('00000000-0000-4000-a000-000002602234', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 22),
  ('00000000-0000-4000-a000-000002602234', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 23),
  ('00000000-0000-4000-a000-000002602234', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002602234', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002602234', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002602234', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002602234', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002602234', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002602234', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'What does "die Regierung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002602234', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002602234', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002602234', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002602234', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-000002602234', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002602234', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002602234', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002602234', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002602234', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002602234', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesellschaft und Politik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002602234', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesellschaft und Politik', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002602234', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesellschaft und Politik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002602234', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesellschaft und Politik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002602234', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002602234', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002602234', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002602234', 'Test: Gesellschaft und Politik — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesellschaft und Politik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Speaking: Test: Gesellschaft und Politik', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Writing: Test: Gesellschaft und Politik', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Regierung','der Bundestag','die Wahl']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602234', 'Test: Gesellschaft und Politik — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002602234', 'Test: Gesellschaft und Politik — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Regierung','der Bundestag','die Wahl','die Partei','der Kanzler','die Demokratie','das Gesetz','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002602234', 'Test: Gesellschaft und Politik — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Gesellschaft und Politik".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Homework: Test: Gesellschaft und Politik', 'Complete these tasks to reinforce "Test: Gesellschaft und Politik".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002602234', 'In this lesson you learned about Module Test. You practiced vocabulary related to politics and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Gesellschaft und Politik Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','politics key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002602234', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 3: Wissenschaft und Technik
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f40', 'B2', 'Wissenschaft und Technik', 'Discuss scientific topics, technology, and innovation.', '["Understand scientific vocabulary","Discuss technological developments","Use Nomen-Verb-Verbindungen","Understand and explain processes","Use Futur I and II"]', 3, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Wissenschaftliche Themen (L-B2-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00000260968f', '00000000-0000-4000-a000-000039c35f40', 'Wissenschaftliche Themen', 'Learn scientific vocabulary and concepts.', 'Science', 'vocabulary', '["Understand and use vocabulary related to Science","Apply present_tense correctly","Read and comprehend a text about Science","Listen and understand a dialogue about Science","Speak about Science in simple sentences","Write a short text about Science"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 1),
  ('00000000-0000-4000-a000-00000260968f', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 2),
  ('00000000-0000-4000-a000-00000260968f', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 3),
  ('00000000-0000-4000-a000-00000260968f', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 4),
  ('00000000-0000-4000-a000-00000260968f', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 5),
  ('00000000-0000-4000-a000-00000260968f', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 6),
  ('00000000-0000-4000-a000-00000260968f', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 7),
  ('00000000-0000-4000-a000-00000260968f', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 8),
  ('00000000-0000-4000-a000-00000260968f', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-00000260968f', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-00000260968f', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-00000260968f', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-00000260968f', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-00000260968f', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-00000260968f', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-00000260968f', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-00000260968f', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-00000260968f', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-00000260968f', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-00000260968f', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-00000260968f', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-00000260968f', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-00000260968f', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-00000260968f', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-00000260968f', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-00000260968f', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-00000260968f', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-00000260968f', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-00000260968f', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-00000260968f', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'What does "die Wissenschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00000260968f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00000260968f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00000260968f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00000260968f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'What is the main topic of this lesson?', '["Science","Sports","Music","Travel"]', 'Science', 1, 1),
  ('00000000-0000-4000-a000-00000260968f', 'true_false', 'This lesson teaches vocabulary about Science.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00000260968f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00000260968f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00000260968f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00000260968f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00000260968f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Technik', 'formal', false, 1),
  ('00000000-0000-4000-a000-00000260968f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Technik', 'informal', false, 2),
  ('00000000-0000-4000-a000-00000260968f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wissenschaft und Technik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00000260968f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wissenschaft und Technik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00000260968f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00000260968f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00000260968f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00000260968f', 'Wissenschaftliche Themen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wissenschaft und Technik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Speaking: Wissenschaftliche Themen', 'Practice talking about Science. Answer questions and have a simple conversation.', 'Science', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Writing: Wissenschaftliche Themen', 'Write a short text about Science. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000260968f', 'Wissenschaftliche Themen — Roleplay', 'Science', 'Student', 'Teacher', 'Practice conversation about Science', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000260968f', 'Wissenschaftliche Themen — Advanced Roleplay', 'Science', 'Customer', 'Assistant', 'Extended conversation about Science', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00000260968f', 'Wissenschaftliche Themen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Themen".', 'Creative practice for Science', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Homework: Wissenschaftliche Themen', 'Complete these tasks to reinforce "Wissenschaftliche Themen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00000260968f', 'In this lesson you learned about Science. You practiced vocabulary related to science and grammar structure present_tense.', '["Mastered vocabulary about Science","Applied present_tense correctly","Read and understood a text about Science","Practiced speaking about Science"]', '[{"title":"Wissenschaftliche Themen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Science core vocabulary','science key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Culture: Science in German-Speaking Countries', 'Learn how Science is approached in German culture.

تعلم كيف يتم التعامل مع Science في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000260968f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Technologie und Innovation (L-B2-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002609690', '00000000-0000-4000-a000-000039c35f40', 'Technologie und Innovation', 'Discuss technology, AI, and digitalization.', 'Technology & Innovation', 'vocabulary', '["Understand and use vocabulary related to Technology & Innovation","Apply present_tense correctly","Read and comprehend a text about Technology & Innovation","Listen and understand a dialogue about Technology & Innovation","Speak about Technology & Innovation in simple sentences","Write a short text about Technology & Innovation"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 1),
  ('00000000-0000-4000-a000-000002609690', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 2),
  ('00000000-0000-4000-a000-000002609690', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 3),
  ('00000000-0000-4000-a000-000002609690', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 4),
  ('00000000-0000-4000-a000-000002609690', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 5),
  ('00000000-0000-4000-a000-000002609690', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 6),
  ('00000000-0000-4000-a000-000002609690', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 7),
  ('00000000-0000-4000-a000-000002609690', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 8),
  ('00000000-0000-4000-a000-000002609690', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002609690', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002609690', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002609690', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002609690', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002609690', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002609690', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002609690', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002609690', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002609690', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002609690', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002609690', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002609690', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002609690', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002609690', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002609690', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002609690', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002609690', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002609690', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002609690', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002609690', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002609690', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'What does "die Wissenschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002609690', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002609690', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002609690', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002609690', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'What is the main topic of this lesson?', '["Technology & Innovation","Sports","Music","Travel"]', 'Technology & Innovation', 1, 1),
  ('00000000-0000-4000-a000-000002609690', 'true_false', 'This lesson teaches vocabulary about Technology & Innovation.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002609690', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002609690', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002609690', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002609690', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002609690', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Technik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002609690', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Technik', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002609690', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wissenschaft und Technik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002609690', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wissenschaft und Technik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002609690', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002609690', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002609690', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002609690', 'Technologie und Innovation — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wissenschaft und Technik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Speaking: Technologie und Innovation', 'Practice talking about Technology & Innovation. Answer questions and have a simple conversation.', 'Technology & Innovation', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Writing: Technologie und Innovation', 'Write a short text about Technology & Innovation. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609690', 'Technologie und Innovation — Roleplay', 'Technology & Innovation', 'Student', 'Teacher', 'Practice conversation about Technology & Innovation', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609690', 'Technologie und Innovation — Advanced Roleplay', 'Technology & Innovation', 'Customer', 'Assistant', 'Extended conversation about Technology & Innovation', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002609690', 'Technologie und Innovation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Technologie und Innovation".', 'Creative practice for Technology & Innovation', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Homework: Technologie und Innovation', 'Complete these tasks to reinforce "Technologie und Innovation".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002609690', 'In this lesson you learned about Technology & Innovation. You practiced vocabulary related to science and grammar structure present_tense.', '["Mastered vocabulary about Technology & Innovation","Applied present_tense correctly","Read and understood a text about Technology & Innovation","Practiced speaking about Technology & Innovation"]', '[{"title":"Technologie und Innovation Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Technology & Innovation core vocabulary','science key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Culture: Technology & Innovation in German-Speaking Countries', 'Learn how Technology & Innovation is approached in German culture.

تعلم كيف يتم التعامل مع Technology & Innovation في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609690', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Nomen-Verb-Verbindungen (L-B2-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002609691', '00000000-0000-4000-a000-000039c35f40', 'Nomen-Verb-Verbindungen', 'Learn noun-verb collocations common in academic German.', 'Noun-Verb Combinations', 'grammar', '["Understand and use vocabulary related to Noun-Verb Combinations","Apply present_tense correctly","Read and comprehend a text about Noun-Verb Combinations","Listen and understand a dialogue about Noun-Verb Combinations","Speak about Noun-Verb Combinations in simple sentences","Write a short text about Noun-Verb Combinations"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 1),
  ('00000000-0000-4000-a000-000002609691', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 2),
  ('00000000-0000-4000-a000-000002609691', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 3),
  ('00000000-0000-4000-a000-000002609691', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 4),
  ('00000000-0000-4000-a000-000002609691', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 5),
  ('00000000-0000-4000-a000-000002609691', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 6),
  ('00000000-0000-4000-a000-000002609691', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 7),
  ('00000000-0000-4000-a000-000002609691', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 8),
  ('00000000-0000-4000-a000-000002609691', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002609691', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002609691', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002609691', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002609691', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002609691', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002609691', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002609691', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002609691', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002609691', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002609691', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002609691', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002609691', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002609691', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002609691', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002609691', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002609691', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002609691', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002609691', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002609691', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002609691', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002609691', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'What does "die Wissenschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002609691', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002609691', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002609691', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002609691', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'What is the main topic of this lesson?', '["Noun-Verb Combinations","Sports","Music","Travel"]', 'Noun-Verb Combinations', 1, 1),
  ('00000000-0000-4000-a000-000002609691', 'true_false', 'This lesson teaches vocabulary about Noun-Verb Combinations.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002609691', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002609691', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002609691', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002609691', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002609691', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Technik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002609691', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Technik', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002609691', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wissenschaft und Technik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002609691', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wissenschaft und Technik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002609691', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002609691', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002609691', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002609691', 'Nomen-Verb-Verbindungen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wissenschaft und Technik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Speaking: Nomen-Verb-Verbindungen', 'Practice talking about Noun-Verb Combinations. Answer questions and have a simple conversation.', 'Noun-Verb Combinations', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Writing: Nomen-Verb-Verbindungen', 'Write a short text about Noun-Verb Combinations. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609691', 'Nomen-Verb-Verbindungen — Roleplay', 'Noun-Verb Combinations', 'Student', 'Teacher', 'Practice conversation about Noun-Verb Combinations', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609691', 'Nomen-Verb-Verbindungen — Advanced Roleplay', 'Noun-Verb Combinations', 'Customer', 'Assistant', 'Extended conversation about Noun-Verb Combinations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002609691', 'Nomen-Verb-Verbindungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nomen-Verb-Verbindungen".', 'Creative practice for Noun-Verb Combinations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Homework: Nomen-Verb-Verbindungen', 'Complete these tasks to reinforce "Nomen-Verb-Verbindungen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002609691', 'In this lesson you learned about Noun-Verb Combinations. You practiced vocabulary related to science and grammar structure present_tense.', '["Mastered vocabulary about Noun-Verb Combinations","Applied present_tense correctly","Read and understood a text about Noun-Verb Combinations","Practiced speaking about Noun-Verb Combinations"]', '[{"title":"Nomen-Verb-Verbindungen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Noun-Verb Combinations core vocabulary','science key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Culture: Noun-Verb Combinations in German-Speaking Countries', 'Learn how Noun-Verb Combinations is approached in German culture.

تعلم كيف يتم التعامل مع Noun-Verb Combinations في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609691', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Futur I und II (L-B2-03-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002609692', '00000000-0000-4000-a000-000039c35f40', 'Futur I und II', 'Learn future tenses for predictions and assumptions.', 'Future Tenses', 'grammar', '["Understand and use vocabulary related to Future Tenses","Apply present_tense correctly","Read and comprehend a text about Future Tenses","Listen and understand a dialogue about Future Tenses","Speak about Future Tenses in simple sentences","Write a short text about Future Tenses"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 1),
  ('00000000-0000-4000-a000-000002609692', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 2),
  ('00000000-0000-4000-a000-000002609692', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 3),
  ('00000000-0000-4000-a000-000002609692', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 4),
  ('00000000-0000-4000-a000-000002609692', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 5),
  ('00000000-0000-4000-a000-000002609692', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 6),
  ('00000000-0000-4000-a000-000002609692', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 7),
  ('00000000-0000-4000-a000-000002609692', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 8),
  ('00000000-0000-4000-a000-000002609692', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002609692', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002609692', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002609692', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002609692', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002609692', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002609692', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002609692', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002609692', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002609692', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002609692', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002609692', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002609692', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002609692', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002609692', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002609692', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002609692', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002609692', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002609692', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002609692', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002609692', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002609692', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'What does "die Wissenschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002609692', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002609692', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002609692', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002609692', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'What is the main topic of this lesson?', '["Future Tenses","Sports","Music","Travel"]', 'Future Tenses', 1, 1),
  ('00000000-0000-4000-a000-000002609692', 'true_false', 'This lesson teaches vocabulary about Future Tenses.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002609692', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002609692', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002609692', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002609692', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002609692', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Technik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002609692', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Technik', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002609692', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wissenschaft und Technik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002609692', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wissenschaft und Technik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002609692', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002609692', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002609692', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002609692', 'Futur I und II — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wissenschaft und Technik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Speaking: Futur I und II', 'Practice talking about Future Tenses. Answer questions and have a simple conversation.', 'Future Tenses', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Writing: Futur I und II', 'Write a short text about Future Tenses. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609692', 'Futur I und II — Roleplay', 'Future Tenses', 'Student', 'Teacher', 'Practice conversation about Future Tenses', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609692', 'Futur I und II — Advanced Roleplay', 'Future Tenses', 'Customer', 'Assistant', 'Extended conversation about Future Tenses', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002609692', 'Futur I und II — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Futur I und II".', 'Creative practice for Future Tenses', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Homework: Futur I und II', 'Complete these tasks to reinforce "Futur I und II".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002609692', 'In this lesson you learned about Future Tenses. You practiced vocabulary related to science and grammar structure present_tense.', '["Mastered vocabulary about Future Tenses","Applied present_tense correctly","Read and understood a text about Future Tenses","Practiced speaking about Future Tenses"]', '[{"title":"Futur I und II Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Future Tenses core vocabulary','science key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Culture: Future Tenses in German-Speaking Countries', 'Learn how Future Tenses is approached in German culture.

تعلم كيف يتم التعامل مع Future Tenses في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609692', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Test: Wissenschaft und Technik (L-B2-03-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002609693', '00000000-0000-4000-a000-000039c35f40', 'Test: Wissenschaft und Technik', 'Module test on science and technology.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 45, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 1),
  ('00000000-0000-4000-a000-000002609693', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 2),
  ('00000000-0000-4000-a000-000002609693', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 3),
  ('00000000-0000-4000-a000-000002609693', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 4),
  ('00000000-0000-4000-a000-000002609693', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 5),
  ('00000000-0000-4000-a000-000002609693', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 6),
  ('00000000-0000-4000-a000-000002609693', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 7),
  ('00000000-0000-4000-a000-000002609693', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 8),
  ('00000000-0000-4000-a000-000002609693', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002609693', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002609693', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002609693', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002609693', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002609693', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002609693', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002609693', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002609693', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002609693', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002609693', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002609693', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002609693', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002609693', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002609693', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002609693', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 24),
  ('00000000-0000-4000-a000-000002609693', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 25),
  ('00000000-0000-4000-a000-000002609693', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 26),
  ('00000000-0000-4000-a000-000002609693', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 27),
  ('00000000-0000-4000-a000-000002609693', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 28),
  ('00000000-0000-4000-a000-000002609693', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 29),
  ('00000000-0000-4000-a000-000002609693', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'What does "die Wissenschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002609693', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002609693', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002609693', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002609693', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-000002609693', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002609693', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002609693', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002609693', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002609693', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002609693', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Technik', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002609693', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Technik', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002609693', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wissenschaft und Technik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002609693', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wissenschaft und Technik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002609693', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002609693', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002609693', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002609693', 'Test: Wissenschaft und Technik — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wissenschaft und Technik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Speaking: Test: Wissenschaft und Technik', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Writing: Test: Wissenschaft und Technik', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Wissenschaft','die Forschung','das Labor']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609693', 'Test: Wissenschaft und Technik — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002609693', 'Test: Wissenschaft und Technik — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Wissenschaft','die Forschung','das Labor','das Experiment','die Theorie','die Biologie','die Chemie','die Physik']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002609693', 'Test: Wissenschaft und Technik — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Wissenschaft und Technik".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Homework: Test: Wissenschaft und Technik', 'Complete these tasks to reinforce "Test: Wissenschaft und Technik".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002609693', 'In this lesson you learned about Module Test. You practiced vocabulary related to science and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Wissenschaft und Technik Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','science key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002609693', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 4: Wirtschaft und Finanzen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f41', 'B2', 'Wirtschaft und Finanzen', 'Understand business and financial vocabulary and concepts.', '["Understand business vocabulary","Discuss economic topics","Use Genitiv and Genitivpräpositionen","Read financial reports","Discuss money and investments"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Wirtschaftliche Grundbegriffe (L-B2-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002610aee', '00000000-0000-4000-a000-000039c35f41', 'Wirtschaftliche Grundbegriffe', 'Learn basic economic and business vocabulary.', 'Economics Basics', 'vocabulary', '["Understand and use vocabulary related to Economics Basics","Apply present_tense correctly","Read and comprehend a text about Economics Basics","Listen and understand a dialogue about Economics Basics","Speak about Economics Basics in simple sentences","Write a short text about Economics Basics"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 1),
  ('00000000-0000-4000-a000-000002610aee', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 2),
  ('00000000-0000-4000-a000-000002610aee', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 3),
  ('00000000-0000-4000-a000-000002610aee', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 4),
  ('00000000-0000-4000-a000-000002610aee', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 5),
  ('00000000-0000-4000-a000-000002610aee', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 6),
  ('00000000-0000-4000-a000-000002610aee', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 7),
  ('00000000-0000-4000-a000-000002610aee', 'die Schulden', 'الديون', 'debt', 'die', NULL, 'noun', 'Die Schulden des Landes wachsen.', 'The country''s debt is growing.', 'B2', 8),
  ('00000000-0000-4000-a000-000002610aee', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002610aee', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002610aee', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002610aee', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002610aee', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002610aee', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002610aee', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002610aee', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002610aee', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002610aee', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002610aee', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002610aee', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002610aee', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002610aee', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002610aee', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002610aee', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 24),
  ('00000000-0000-4000-a000-000002610aee', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 25),
  ('00000000-0000-4000-a000-000002610aee', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 26),
  ('00000000-0000-4000-a000-000002610aee', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 27),
  ('00000000-0000-4000-a000-000002610aee', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 28),
  ('00000000-0000-4000-a000-000002610aee', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002610aee', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'What does "die Inflation" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002610aee', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002610aee', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002610aee', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002610aee', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'What is the main topic of this lesson?', '["Economics Basics","Sports","Music","Travel"]', 'Economics Basics', 1, 1),
  ('00000000-0000-4000-a000-000002610aee', 'true_false', 'This lesson teaches vocabulary about Economics Basics.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002610aee', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002610aee', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002610aee', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002610aee', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002610aee', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaft und Finanzen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002610aee', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaft und Finanzen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002610aee', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wirtschaft und Finanzen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002610aee', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wirtschaft und Finanzen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002610aee', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002610aee', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002610aee', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002610aee', 'Wirtschaftliche Grundbegriffe — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wirtschaft und Finanzen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Speaking: Wirtschaftliche Grundbegriffe', 'Practice talking about Economics Basics. Answer questions and have a simple conversation.', 'Economics Basics', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Writing: Wirtschaftliche Grundbegriffe', 'Write a short text about Economics Basics. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Inflation','der Zins','das BIP']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610aee', 'Wirtschaftliche Grundbegriffe — Roleplay', 'Economics Basics', 'Student', 'Teacher', 'Practice conversation about Economics Basics', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610aee', 'Wirtschaftliche Grundbegriffe — Advanced Roleplay', 'Economics Basics', 'Customer', 'Assistant', 'Extended conversation about Economics Basics', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002610aee', 'Wirtschaftliche Grundbegriffe — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftliche Grundbegriffe".', 'Creative practice for Economics Basics', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Homework: Wirtschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Wirtschaftliche Grundbegriffe".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002610aee', 'In this lesson you learned about Economics Basics. You practiced vocabulary related to economy and grammar structure present_tense.', '["Mastered vocabulary about Economics Basics","Applied present_tense correctly","Read and understood a text about Economics Basics","Practiced speaking about Economics Basics"]', '[{"title":"Wirtschaftliche Grundbegriffe Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Economics Basics core vocabulary','economy key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Culture: Economics Basics in German-Speaking Countries', 'Learn how Economics Basics is approached in German culture.

تعلم كيف يتم التعامل مع Economics Basics في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aee', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Bankwesen und Finanzen (L-B2-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002610aef', '00000000-0000-4000-a000-000039c35f41', 'Bankwesen und Finanzen', 'Learn banking and financial vocabulary.', 'Banking & Finance', 'vocabulary', '["Understand and use vocabulary related to Banking & Finance","Apply present_tense correctly","Read and comprehend a text about Banking & Finance","Listen and understand a dialogue about Banking & Finance","Speak about Banking & Finance in simple sentences","Write a short text about Banking & Finance"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 1),
  ('00000000-0000-4000-a000-000002610aef', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 2),
  ('00000000-0000-4000-a000-000002610aef', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 3),
  ('00000000-0000-4000-a000-000002610aef', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 4),
  ('00000000-0000-4000-a000-000002610aef', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 5),
  ('00000000-0000-4000-a000-000002610aef', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 6),
  ('00000000-0000-4000-a000-000002610aef', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 7),
  ('00000000-0000-4000-a000-000002610aef', 'die Schulden', 'الديون', 'debt', 'die', NULL, 'noun', 'Die Schulden des Landes wachsen.', 'The country''s debt is growing.', 'B2', 8),
  ('00000000-0000-4000-a000-000002610aef', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002610aef', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002610aef', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002610aef', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002610aef', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002610aef', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002610aef', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002610aef', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002610aef', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002610aef', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002610aef', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002610aef', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002610aef', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002610aef', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002610aef', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002610aef', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 24),
  ('00000000-0000-4000-a000-000002610aef', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 25),
  ('00000000-0000-4000-a000-000002610aef', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 26),
  ('00000000-0000-4000-a000-000002610aef', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 27),
  ('00000000-0000-4000-a000-000002610aef', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 28),
  ('00000000-0000-4000-a000-000002610aef', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002610aef', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'What does "die Inflation" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002610aef', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002610aef', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002610aef', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002610aef', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'What is the main topic of this lesson?', '["Banking & Finance","Sports","Music","Travel"]', 'Banking & Finance', 1, 1),
  ('00000000-0000-4000-a000-000002610aef', 'true_false', 'This lesson teaches vocabulary about Banking & Finance.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002610aef', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002610aef', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002610aef', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002610aef', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002610aef', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaft und Finanzen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002610aef', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaft und Finanzen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002610aef', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wirtschaft und Finanzen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002610aef', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wirtschaft und Finanzen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002610aef', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002610aef', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002610aef', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002610aef', 'Bankwesen und Finanzen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wirtschaft und Finanzen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Speaking: Bankwesen und Finanzen', 'Practice talking about Banking & Finance. Answer questions and have a simple conversation.', 'Banking & Finance', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Writing: Bankwesen und Finanzen', 'Write a short text about Banking & Finance. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Inflation','der Zins','das BIP']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610aef', 'Bankwesen und Finanzen — Roleplay', 'Banking & Finance', 'Student', 'Teacher', 'Practice conversation about Banking & Finance', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610aef', 'Bankwesen und Finanzen — Advanced Roleplay', 'Banking & Finance', 'Customer', 'Assistant', 'Extended conversation about Banking & Finance', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002610aef', 'Bankwesen und Finanzen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Bankwesen und Finanzen".', 'Creative practice for Banking & Finance', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Homework: Bankwesen und Finanzen', 'Complete these tasks to reinforce "Bankwesen und Finanzen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002610aef', 'In this lesson you learned about Banking & Finance. You practiced vocabulary related to economy and grammar structure present_tense.', '["Mastered vocabulary about Banking & Finance","Applied present_tense correctly","Read and understood a text about Banking & Finance","Practiced speaking about Banking & Finance"]', '[{"title":"Bankwesen und Finanzen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Banking & Finance core vocabulary','economy key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Culture: Banking & Finance in German-Speaking Countries', 'Learn how Banking & Finance is approached in German culture.

تعلم كيف يتم التعامل مع Banking & Finance في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610aef', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Der Genitiv und Genitivpräpositionen (L-B2-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002610af0', '00000000-0000-4000-a000-000039c35f41', 'Der Genitiv und Genitivpräpositionen', 'Learn Genitiv case and prepositions requiring Genitiv.', 'Genitive Case', 'grammar', '["Understand and use vocabulary related to Genitive Case","Apply present_tense correctly","Read and comprehend a text about Genitive Case","Listen and understand a dialogue about Genitive Case","Speak about Genitive Case in simple sentences","Write a short text about Genitive Case"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 1),
  ('00000000-0000-4000-a000-000002610af0', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 2),
  ('00000000-0000-4000-a000-000002610af0', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 3),
  ('00000000-0000-4000-a000-000002610af0', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 4),
  ('00000000-0000-4000-a000-000002610af0', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 5),
  ('00000000-0000-4000-a000-000002610af0', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 6),
  ('00000000-0000-4000-a000-000002610af0', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 7),
  ('00000000-0000-4000-a000-000002610af0', 'die Schulden', 'الديون', 'debt', 'die', NULL, 'noun', 'Die Schulden des Landes wachsen.', 'The country''s debt is growing.', 'B2', 8),
  ('00000000-0000-4000-a000-000002610af0', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002610af0', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002610af0', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002610af0', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002610af0', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002610af0', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002610af0', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002610af0', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002610af0', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002610af0', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002610af0', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002610af0', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002610af0', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002610af0', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002610af0', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002610af0', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 24),
  ('00000000-0000-4000-a000-000002610af0', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 25),
  ('00000000-0000-4000-a000-000002610af0', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 26),
  ('00000000-0000-4000-a000-000002610af0', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 27),
  ('00000000-0000-4000-a000-000002610af0', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 28),
  ('00000000-0000-4000-a000-000002610af0', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002610af0', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'What does "die Inflation" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002610af0', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002610af0', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002610af0', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002610af0', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'What is the main topic of this lesson?', '["Genitive Case","Sports","Music","Travel"]', 'Genitive Case', 1, 1),
  ('00000000-0000-4000-a000-000002610af0', 'true_false', 'This lesson teaches vocabulary about Genitive Case.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002610af0', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002610af0', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002610af0', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002610af0', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002610af0', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaft und Finanzen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002610af0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaft und Finanzen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002610af0', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wirtschaft und Finanzen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002610af0', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wirtschaft und Finanzen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002610af0', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002610af0', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002610af0', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002610af0', 'Der Genitiv und Genitivpräpositionen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wirtschaft und Finanzen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Speaking: Der Genitiv und Genitivpräpositionen', 'Practice talking about Genitive Case. Answer questions and have a simple conversation.', 'Genitive Case', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Writing: Der Genitiv und Genitivpräpositionen', 'Write a short text about Genitive Case. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Inflation','der Zins','das BIP']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610af0', 'Der Genitiv und Genitivpräpositionen — Roleplay', 'Genitive Case', 'Student', 'Teacher', 'Practice conversation about Genitive Case', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610af0', 'Der Genitiv und Genitivpräpositionen — Advanced Roleplay', 'Genitive Case', 'Customer', 'Assistant', 'Extended conversation about Genitive Case', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002610af0', 'Der Genitiv und Genitivpräpositionen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Der Genitiv und Genitivpräpositionen".', 'Creative practice for Genitive Case', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Homework: Der Genitiv und Genitivpräpositionen', 'Complete these tasks to reinforce "Der Genitiv und Genitivpräpositionen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002610af0', 'In this lesson you learned about Genitive Case. You practiced vocabulary related to economy and grammar structure present_tense.', '["Mastered vocabulary about Genitive Case","Applied present_tense correctly","Read and understood a text about Genitive Case","Practiced speaking about Genitive Case"]', '[{"title":"Der Genitiv und Genitivpräpositionen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Genitive Case core vocabulary','economy key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Culture: Genitive Case in German-Speaking Countries', 'Learn how Genitive Case is approached in German culture.

تعلم كيف يتم التعامل مع Genitive Case في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Test: Wirtschaft und Finanzen (L-B2-04-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002610af1', '00000000-0000-4000-a000-000039c35f41', 'Test: Wirtschaft und Finanzen', 'Module test on economy and finance.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 40, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'die Inflation', 'التضخم', 'inflation', 'die', NULL, 'noun', 'Die Inflation steigt.', 'Inflation is rising.', 'B2', 1),
  ('00000000-0000-4000-a000-000002610af1', 'der Zins', 'الفائدة', 'interest', 'der', 'die Zinsen', 'noun', 'Die Zinsen sind niedrig.', 'Interest rates are low.', 'B2', 2),
  ('00000000-0000-4000-a000-000002610af1', 'das BIP', 'الناتج المحلي الإجمالي', 'GDP', 'das', NULL, 'noun', 'Das BIP wächst um 2 Prozent.', 'GDP is growing by 2 percent.', 'B2', 3),
  ('00000000-0000-4000-a000-000002610af1', 'die Steuer', 'الضريبة', 'tax', 'die', 'die Steuern', 'noun', 'Die Steuern sind hoch in Deutschland.', 'Taxes are high in Germany.', 'B1', 4),
  ('00000000-0000-4000-a000-000002610af1', 'das Budget', 'الميزانية', 'budget', 'das', 'die Budgets', 'noun', 'Das Budget ist begrenzt.', 'The budget is limited.', 'B2', 5),
  ('00000000-0000-4000-a000-000002610af1', 'die Anlage', 'الاستثمار', 'investment', 'die', 'die Anlagen', 'noun', 'Die Anlage ist rentabel.', 'The investment is profitable.', 'B2', 6),
  ('00000000-0000-4000-a000-000002610af1', 'der Gewinn', 'الربح', 'profit', 'der', 'die Gewinne', 'noun', 'Der Gewinn ist gestiegen.', 'The profit has increased.', 'B2', 7),
  ('00000000-0000-4000-a000-000002610af1', 'die Schulden', 'الديون', 'debt', 'die', NULL, 'noun', 'Die Schulden des Landes wachsen.', 'The country''s debt is growing.', 'B2', 8),
  ('00000000-0000-4000-a000-000002610af1', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 9),
  ('00000000-0000-4000-a000-000002610af1', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 10),
  ('00000000-0000-4000-a000-000002610af1', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 11),
  ('00000000-0000-4000-a000-000002610af1', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 12),
  ('00000000-0000-4000-a000-000002610af1', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 13),
  ('00000000-0000-4000-a000-000002610af1', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 14),
  ('00000000-0000-4000-a000-000002610af1', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 15),
  ('00000000-0000-4000-a000-000002610af1', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 16),
  ('00000000-0000-4000-a000-000002610af1', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 17),
  ('00000000-0000-4000-a000-000002610af1', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 18),
  ('00000000-0000-4000-a000-000002610af1', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 19),
  ('00000000-0000-4000-a000-000002610af1', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 20),
  ('00000000-0000-4000-a000-000002610af1', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 21),
  ('00000000-0000-4000-a000-000002610af1', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 22),
  ('00000000-0000-4000-a000-000002610af1', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 23),
  ('00000000-0000-4000-a000-000002610af1', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 24),
  ('00000000-0000-4000-a000-000002610af1', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 25),
  ('00000000-0000-4000-a000-000002610af1', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 26),
  ('00000000-0000-4000-a000-000002610af1', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 27),
  ('00000000-0000-4000-a000-000002610af1', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 28),
  ('00000000-0000-4000-a000-000002610af1', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002610af1', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'What does "die Inflation" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002610af1', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002610af1', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002610af1', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002610af1', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-000002610af1', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002610af1', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002610af1', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002610af1', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002610af1', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002610af1', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaft und Finanzen', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002610af1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaft und Finanzen', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002610af1', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wirtschaft und Finanzen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002610af1', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wirtschaft und Finanzen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002610af1', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002610af1', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002610af1', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002610af1', 'Test: Wirtschaft und Finanzen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wirtschaft und Finanzen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Speaking: Test: Wirtschaft und Finanzen', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Writing: Test: Wirtschaft und Finanzen', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Inflation','der Zins','das BIP']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610af1', 'Test: Wirtschaft und Finanzen — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002610af1', 'Test: Wirtschaft und Finanzen — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Inflation','der Zins','das BIP','die Steuer','das Budget','die Anlage','der Gewinn','die Schulden']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002610af1', 'Test: Wirtschaft und Finanzen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Wirtschaft und Finanzen".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Homework: Test: Wirtschaft und Finanzen', 'Complete these tasks to reinforce "Test: Wirtschaft und Finanzen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002610af1', 'In this lesson you learned about Module Test. You practiced vocabulary related to economy and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Wirtschaft und Finanzen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','economy key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002610af1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 5: Kunst und Literatur
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f42', 'B2', 'Kunst und Literatur', 'Discuss art, literature, and cultural topics.', '["Describe artworks and exhibitions","Discuss literature and authors","Use Partizipialattribute","Write reviews","Express aesthetic judgments"]', 5, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Kunst und Kultur (L-B2-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002617f4d', '00000000-0000-4000-a000-000039c35f42', 'Kunst und Kultur', 'Learn art and cultural vocabulary.', 'Art & Culture', 'vocabulary', '["Understand and use vocabulary related to Art & Culture","Apply present_tense correctly","Read and comprehend a text about Art & Culture","Listen and understand a dialogue about Art & Culture","Speak about Art & Culture in simple sentences","Write a short text about Art & Culture"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'das Gemälde', 'اللوحة', 'painting', 'das', 'die Gemälde', 'noun', 'Das Gemälde hängt im Museum.', 'The painting hangs in the museum.', 'B1', 1),
  ('00000000-0000-4000-a000-000002617f4d', 'der Künstler', 'الفنان', 'artist', 'der', 'die Künstler', 'noun', 'Der Künstler malt moderne Bilder.', 'The artist paints modern pictures.', 'B1', 2),
  ('00000000-0000-4000-a000-000002617f4d', 'die Skulptur', 'المنحوتة', 'sculpture', 'die', 'die Skulpturen', 'noun', 'Die Skulptur ist aus Marmor.', 'The sculpture is made of marble.', 'B1', 3),
  ('00000000-0000-4000-a000-000002617f4d', 'die Galerie', 'المعرض الفني', 'gallery', 'die', 'die Galerien', 'noun', 'Die Galerie zeigt zeitgenössische Kunst.', 'The gallery shows contemporary art.', 'B1', 4),
  ('00000000-0000-4000-a000-000002617f4d', 'die Ausstellung', 'المعرض', 'exhibition', 'die', 'die Ausstellungen', 'noun', 'Die Ausstellung war sehr besucht.', 'The exhibition was very popular.', 'B1', 5),
  ('00000000-0000-4000-a000-000002617f4d', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Künstlers ist einzigartig.', 'The artist''s style is unique.', 'B2', 6),
  ('00000000-0000-4000-a000-000002617f4d', 'die Malerei', 'الرسم', 'painting (art form)', 'die', NULL, 'noun', 'Die abstrakte Malerei fasziniert mich.', 'Abstract painting fascinates me.', 'B2', 7),
  ('00000000-0000-4000-a000-000002617f4d', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002617f4d', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002617f4d', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002617f4d', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002617f4d', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002617f4d', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002617f4d', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002617f4d', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002617f4d', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-000002617f4d', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-000002617f4d', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-000002617f4d', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-000002617f4d', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-000002617f4d', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-000002617f4d', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-000002617f4d', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-000002617f4d', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-000002617f4d', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-000002617f4d', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-000002617f4d', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-000002617f4d', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-000002617f4d', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002617f4d', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'What does "das Gemälde" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002617f4d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002617f4d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002617f4d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002617f4d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'What is the main topic of this lesson?', '["Art & Culture","Sports","Music","Travel"]', 'Art & Culture', 1, 1),
  ('00000000-0000-4000-a000-000002617f4d', 'true_false', 'This lesson teaches vocabulary about Art & Culture.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002617f4d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002617f4d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002617f4d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002617f4d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002617f4d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kunst und Literatur', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002617f4d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kunst und Literatur', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002617f4d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kunst und Literatur', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002617f4d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kunst und Literatur', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002617f4d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002617f4d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002617f4d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002617f4d', 'Kunst und Kultur — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kunst und Literatur');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Speaking: Kunst und Kultur', 'Practice talking about Art & Culture. Answer questions and have a simple conversation.', 'Art & Culture', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Writing: Kunst und Kultur', 'Write a short text about Art & Culture. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4d', 'Kunst und Kultur — Roleplay', 'Art & Culture', 'Student', 'Teacher', 'Practice conversation about Art & Culture', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4d', 'Kunst und Kultur — Advanced Roleplay', 'Art & Culture', 'Customer', 'Assistant', 'Extended conversation about Art & Culture', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002617f4d', 'Kunst und Kultur — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kunst und Kultur".', 'Creative practice for Art & Culture', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Homework: Kunst und Kultur', 'Complete these tasks to reinforce "Kunst und Kultur".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002617f4d', 'In this lesson you learned about Art & Culture. You practiced vocabulary related to art and grammar structure present_tense.', '["Mastered vocabulary about Art & Culture","Applied present_tense correctly","Read and understood a text about Art & Culture","Practiced speaking about Art & Culture"]', '[{"title":"Kunst und Kultur Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Art & Culture core vocabulary','art key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Culture: Art & Culture in German-Speaking Countries', 'Learn how Art & Culture is approached in German culture.

تعلم كيف يتم التعامل مع Art & Culture في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Deutschsprachige Literatur (L-B2-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002617f4e', '00000000-0000-4000-a000-000039c35f42', 'Deutschsprachige Literatur', 'Explore German-language literature and authors.', 'German Literature', 'reading', '["Understand and use vocabulary related to German Literature","Apply present_tense correctly","Read and comprehend a text about German Literature","Listen and understand a dialogue about German Literature","Speak about German Literature in simple sentences","Write a short text about German Literature"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'der Roman', 'الرواية', 'novel', 'der', 'die Romane', 'noun', 'Der Roman ist ein Bestseller.', 'The novel is a bestseller.', 'B1', 1),
  ('00000000-0000-4000-a000-000002617f4e', 'der Dichter', 'الشاعر', 'poet', 'der', 'die Dichter', 'noun', 'Goethe war ein großer Dichter.', 'Goethe was a great poet.', 'B2', 2),
  ('00000000-0000-4000-a000-000002617f4e', 'das Gedicht', 'القصيدة', 'poem', 'das', 'die Gedichte', 'noun', 'Das Gedicht handelt von der Liebe.', 'The poem is about love.', 'B1', 3),
  ('00000000-0000-4000-a000-000002617f4e', 'der Autor', 'المؤلف', 'author', 'der', 'die Autoren', 'noun', 'Der Autor schreibt einen neuen Roman.', 'The author is writing a new novel.', 'B1', 4),
  ('00000000-0000-4000-a000-000002617f4e', 'die Literaturgeschichte', 'تاريخ الأدب', 'literary history', 'die', NULL, 'noun', 'Die deutsche Literaturgeschichte ist reich.', 'German literary history is rich.', 'C1', 5),
  ('00000000-0000-4000-a000-000002617f4e', 'das Drama', 'المسرحية', 'drama', 'das', 'die Dramen', 'noun', 'Das Drama wurde 1920 geschrieben.', 'The drama was written in 1920.', 'B2', 6),
  ('00000000-0000-4000-a000-000002617f4e', 'die Erzählung', 'القصة القصيرة', 'short story', 'die', 'die Erzählungen', 'noun', 'Die Erzählung ist bewegend.', 'The short story is moving.', 'B2', 7),
  ('00000000-0000-4000-a000-000002617f4e', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002617f4e', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002617f4e', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002617f4e', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002617f4e', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002617f4e', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002617f4e', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002617f4e', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002617f4e', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-000002617f4e', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-000002617f4e', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-000002617f4e', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-000002617f4e', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-000002617f4e', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-000002617f4e', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-000002617f4e', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-000002617f4e', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-000002617f4e', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-000002617f4e', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-000002617f4e', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-000002617f4e', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-000002617f4e', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002617f4e', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'What does "der Roman" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002617f4e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002617f4e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002617f4e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002617f4e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'What is the main topic of this lesson?', '["German Literature","Sports","Music","Travel"]', 'German Literature', 1, 1),
  ('00000000-0000-4000-a000-000002617f4e', 'true_false', 'This lesson teaches vocabulary about German Literature.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002617f4e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002617f4e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002617f4e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002617f4e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002617f4e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kunst und Literatur', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002617f4e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kunst und Literatur', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002617f4e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kunst und Literatur', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002617f4e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kunst und Literatur', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002617f4e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002617f4e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002617f4e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002617f4e', 'Deutschsprachige Literatur — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kunst und Literatur');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Speaking: Deutschsprachige Literatur', 'Practice talking about German Literature. Answer questions and have a simple conversation.', 'German Literature', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Writing: Deutschsprachige Literatur', 'Write a short text about German Literature. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Roman','der Dichter','das Gedicht']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4e', 'Deutschsprachige Literatur — Roleplay', 'German Literature', 'Student', 'Teacher', 'Practice conversation about German Literature', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4e', 'Deutschsprachige Literatur — Advanced Roleplay', 'German Literature', 'Customer', 'Assistant', 'Extended conversation about German Literature', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['der Roman','der Dichter','das Gedicht','der Autor','die Literaturgeschichte','das Drama','die Erzählung','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002617f4e', 'Deutschsprachige Literatur — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Deutschsprachige Literatur".', 'Creative practice for German Literature', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Homework: Deutschsprachige Literatur', 'Complete these tasks to reinforce "Deutschsprachige Literatur".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002617f4e', 'In this lesson you learned about German Literature. You practiced vocabulary related to literature and grammar structure present_tense.', '["Mastered vocabulary about German Literature","Applied present_tense correctly","Read and understood a text about German Literature","Practiced speaking about German Literature"]', '[{"title":"Deutschsprachige Literatur Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['German Literature core vocabulary','literature key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Culture: German Literature in German-Speaking Countries', 'Learn how German Literature is approached in German culture.

تعلم كيف يتم التعامل مع German Literature في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Partizipialattribute (L-B2-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002617f4f', '00000000-0000-4000-a000-000039c35f42', 'Partizipialattribute', 'Learn participial phrases for formal written German.', 'Participial Phrases', 'grammar', '["Understand and use vocabulary related to Participial Phrases","Apply present_tense correctly","Read and comprehend a text about Participial Phrases","Listen and understand a dialogue about Participial Phrases","Speak about Participial Phrases in simple sentences","Write a short text about Participial Phrases"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'das Gemälde', 'اللوحة', 'painting', 'das', 'die Gemälde', 'noun', 'Das Gemälde hängt im Museum.', 'The painting hangs in the museum.', 'B1', 1),
  ('00000000-0000-4000-a000-000002617f4f', 'der Künstler', 'الفنان', 'artist', 'der', 'die Künstler', 'noun', 'Der Künstler malt moderne Bilder.', 'The artist paints modern pictures.', 'B1', 2),
  ('00000000-0000-4000-a000-000002617f4f', 'die Skulptur', 'المنحوتة', 'sculpture', 'die', 'die Skulpturen', 'noun', 'Die Skulptur ist aus Marmor.', 'The sculpture is made of marble.', 'B1', 3),
  ('00000000-0000-4000-a000-000002617f4f', 'die Galerie', 'المعرض الفني', 'gallery', 'die', 'die Galerien', 'noun', 'Die Galerie zeigt zeitgenössische Kunst.', 'The gallery shows contemporary art.', 'B1', 4),
  ('00000000-0000-4000-a000-000002617f4f', 'die Ausstellung', 'المعرض', 'exhibition', 'die', 'die Ausstellungen', 'noun', 'Die Ausstellung war sehr besucht.', 'The exhibition was very popular.', 'B1', 5),
  ('00000000-0000-4000-a000-000002617f4f', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Künstlers ist einzigartig.', 'The artist''s style is unique.', 'B2', 6),
  ('00000000-0000-4000-a000-000002617f4f', 'die Malerei', 'الرسم', 'painting (art form)', 'die', NULL, 'noun', 'Die abstrakte Malerei fasziniert mich.', 'Abstract painting fascinates me.', 'B2', 7),
  ('00000000-0000-4000-a000-000002617f4f', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002617f4f', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002617f4f', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002617f4f', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002617f4f', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002617f4f', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002617f4f', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002617f4f', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002617f4f', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-000002617f4f', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-000002617f4f', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-000002617f4f', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-000002617f4f', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-000002617f4f', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-000002617f4f', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-000002617f4f', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-000002617f4f', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-000002617f4f', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-000002617f4f', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-000002617f4f', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-000002617f4f', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-000002617f4f', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002617f4f', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'What does "das Gemälde" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002617f4f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002617f4f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002617f4f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002617f4f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'What is the main topic of this lesson?', '["Participial Phrases","Sports","Music","Travel"]', 'Participial Phrases', 1, 1),
  ('00000000-0000-4000-a000-000002617f4f', 'true_false', 'This lesson teaches vocabulary about Participial Phrases.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002617f4f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002617f4f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002617f4f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002617f4f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002617f4f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kunst und Literatur', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002617f4f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kunst und Literatur', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002617f4f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kunst und Literatur', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002617f4f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kunst und Literatur', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002617f4f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002617f4f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002617f4f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002617f4f', 'Partizipialattribute — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kunst und Literatur');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Speaking: Partizipialattribute', 'Practice talking about Participial Phrases. Answer questions and have a simple conversation.', 'Participial Phrases', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Writing: Partizipialattribute', 'Write a short text about Participial Phrases. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4f', 'Partizipialattribute — Roleplay', 'Participial Phrases', 'Student', 'Teacher', 'Practice conversation about Participial Phrases', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f4f', 'Partizipialattribute — Advanced Roleplay', 'Participial Phrases', 'Customer', 'Assistant', 'Extended conversation about Participial Phrases', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002617f4f', 'Partizipialattribute — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Partizipialattribute".', 'Creative practice for Participial Phrases', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Homework: Partizipialattribute', 'Complete these tasks to reinforce "Partizipialattribute".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002617f4f', 'In this lesson you learned about Participial Phrases. You practiced vocabulary related to art and grammar structure present_tense.', '["Mastered vocabulary about Participial Phrases","Applied present_tense correctly","Read and understood a text about Participial Phrases","Practiced speaking about Participial Phrases"]', '[{"title":"Partizipialattribute Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Participial Phrases core vocabulary','art key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Culture: Participial Phrases in German-Speaking Countries', 'Learn how Participial Phrases is approached in German culture.

تعلم كيف يتم التعامل مع Participial Phrases في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f4f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Test: Kunst und Literatur (L-B2-05-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000002617f50', '00000000-0000-4000-a000-000039c35f42', 'Test: Kunst und Literatur', 'Module test on art and literature.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 40, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'das Gemälde', 'اللوحة', 'painting', 'das', 'die Gemälde', 'noun', 'Das Gemälde hängt im Museum.', 'The painting hangs in the museum.', 'B1', 1),
  ('00000000-0000-4000-a000-000002617f50', 'der Künstler', 'الفنان', 'artist', 'der', 'die Künstler', 'noun', 'Der Künstler malt moderne Bilder.', 'The artist paints modern pictures.', 'B1', 2),
  ('00000000-0000-4000-a000-000002617f50', 'die Skulptur', 'المنحوتة', 'sculpture', 'die', 'die Skulpturen', 'noun', 'Die Skulptur ist aus Marmor.', 'The sculpture is made of marble.', 'B1', 3),
  ('00000000-0000-4000-a000-000002617f50', 'die Galerie', 'المعرض الفني', 'gallery', 'die', 'die Galerien', 'noun', 'Die Galerie zeigt zeitgenössische Kunst.', 'The gallery shows contemporary art.', 'B1', 4),
  ('00000000-0000-4000-a000-000002617f50', 'die Ausstellung', 'المعرض', 'exhibition', 'die', 'die Ausstellungen', 'noun', 'Die Ausstellung war sehr besucht.', 'The exhibition was very popular.', 'B1', 5),
  ('00000000-0000-4000-a000-000002617f50', 'der Stil', 'الأسلوب', 'style', 'der', 'die Stile', 'noun', 'Der Stil des Künstlers ist einzigartig.', 'The artist''s style is unique.', 'B2', 6),
  ('00000000-0000-4000-a000-000002617f50', 'die Malerei', 'الرسم', 'painting (art form)', 'die', NULL, 'noun', 'Die abstrakte Malerei fasziniert mich.', 'Abstract painting fascinates me.', 'B2', 7),
  ('00000000-0000-4000-a000-000002617f50', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-000002617f50', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-000002617f50', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-000002617f50', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-000002617f50', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-000002617f50', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-000002617f50', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-000002617f50', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-000002617f50', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-000002617f50', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-000002617f50', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-000002617f50', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-000002617f50', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-000002617f50', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-000002617f50', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-000002617f50', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-000002617f50', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-000002617f50', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-000002617f50', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-000002617f50', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-000002617f50', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-000002617f50', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-000002617f50', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'What does "das Gemälde" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000002617f50', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000002617f50', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000002617f50', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000002617f50', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-000002617f50', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000002617f50', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000002617f50', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000002617f50', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000002617f50', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000002617f50', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kunst und Literatur', 'formal', false, 1),
  ('00000000-0000-4000-a000-000002617f50', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kunst und Literatur', 'informal', false, 2),
  ('00000000-0000-4000-a000-000002617f50', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kunst und Literatur', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000002617f50', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kunst und Literatur', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000002617f50', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000002617f50', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000002617f50', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000002617f50', 'Test: Kunst und Literatur — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kunst und Literatur');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Speaking: Test: Kunst und Literatur', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Writing: Test: Kunst und Literatur', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Gemälde','der Künstler','die Skulptur']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f50', 'Test: Kunst und Literatur — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000002617f50', 'Test: Kunst und Literatur — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['das Gemälde','der Künstler','die Skulptur','die Galerie','die Ausstellung','der Stil','die Malerei','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000002617f50', 'Test: Kunst und Literatur — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Kunst und Literatur".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Homework: Test: Kunst und Literatur', 'Complete these tasks to reinforce "Test: Kunst und Literatur".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000002617f50', 'In this lesson you learned about Module Test. You practiced vocabulary related to art and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Kunst und Literatur Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','art key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000002617f50', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 6: Deutschland, Österreich, Schweiz
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039c35f43', 'B2', 'Deutschland, Österreich, Schweiz', 'In-depth look at German-speaking countries: history, culture, and current affairs.', '["Understand recent German history","Compare DACH countries","Use complex sentence structures","Write essays on cultural topics","Give detailed presentations"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Geschichte Deutschlands (L-B2-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00000261f3ac', '00000000-0000-4000-a000-000039c35f43', 'Geschichte Deutschlands', 'Learn about German history from 1945 to today.', 'German History', 'reading', '["Understand and use vocabulary related to German History","Apply present_tense correctly","Read and comprehend a text about German History","Listen and understand a dialogue about German History","Speak about German History in simple sentences","Write a short text about German History"]', 60, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'die Geschichte', 'التاريخ', 'history', 'die', NULL, 'noun', 'Geschichte ist ein wichtiges Fach.', 'History is an important subject.', 'A2', 1),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Krieg', 'الحرب', 'war', 'der', 'die Kriege', 'noun', 'Der Krieg endete 1945.', 'The war ended in 1945.', 'B1', 2),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Reich', 'الإمبراطورية', 'empire', 'das', 'die Reiche', 'noun', 'Das Deutsche Reich bestand bis 1918.', 'The German Empire existed until 1918.', 'B2', 3),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Mauer', 'الجدار', 'wall', 'die', 'die Mauern', 'noun', 'Die Berliner Mauer fiel 1989.', 'The Berlin Wall fell in 1989.', 'B1', 4),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Wiedervereinigung', 'إعادة التوحيد', 'reunification', 'die', NULL, 'noun', 'Die Wiedervereinigung war 1990.', 'The reunification was in 1990.', 'B2', 5),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Mittelalter', 'العصور الوسطى', 'Middle Ages', 'das', NULL, 'noun', 'Das Mittelalter dauerte bis 1500.', 'The Middle Ages lasted until 1500.', 'B2', 6),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Kaiser', 'الإمبراطور', 'emperor', 'der', 'die Kaiser', 'noun', 'Der Kaiser regierte das Reich.', 'The emperor ruled the empire.', 'B2', 7),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-00000261f3ac', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-00000261f3ac', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-00000261f3ac', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-00000261f3ac', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'What does "die Geschichte" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ac', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ac', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00000261f3ac', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00000261f3ac', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'What is the main topic of this lesson?', '["German History","Sports","Music","Travel"]', 'German History', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ac', 'true_false', 'This lesson teaches vocabulary about German History.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ac', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00000261f3ac', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00000261f3ac', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00000261f3ac', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00000261f3ac', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 1),
  ('00000000-0000-4000-a000-00000261f3ac', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Deutschland, Österreich, Schweiz', 'informal', false, 2),
  ('00000000-0000-4000-a000-00000261f3ac', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Deutschland, Österreich, Schweiz', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00000261f3ac', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Deutschland, Österreich, Schweiz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00000261f3ac', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00000261f3ac', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00000261f3ac', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Geschichte Deutschlands — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Deutschland, Österreich, Schweiz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Speaking: Geschichte Deutschlands', 'Practice talking about German History. Answer questions and have a simple conversation.', 'German History', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Writing: Geschichte Deutschlands', 'Write a short text about German History. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Geschichte','der Krieg','das Reich']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Geschichte Deutschlands — Roleplay', 'German History', 'Student', 'Teacher', 'Practice conversation about German History', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Geschichte Deutschlands — Advanced Roleplay', 'German History', 'Customer', 'Assistant', 'Extended conversation about German History', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Geschichte Deutschlands — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Geschichte Deutschlands".', 'Creative practice for German History', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Homework: Geschichte Deutschlands', 'Complete these tasks to reinforce "Geschichte Deutschlands".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00000261f3ac', 'In this lesson you learned about German History. You practiced vocabulary related to history and grammar structure present_tense.', '["Mastered vocabulary about German History","Applied present_tense correctly","Read and understood a text about German History","Practiced speaking about German History"]', '[{"title":"Geschichte Deutschlands Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['German History core vocabulary','history key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Culture: German History in German-Speaking Countries', 'Learn how German History is approached in German culture.

تعلم كيف يتم التعامل مع German History في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ac', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Österreich und die Schweiz (L-B2-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00000261f3ad', '00000000-0000-4000-a000-000039c35f43', 'Österreich und die Schweiz', 'Explore Austrian and Swiss culture and language.', 'Austria & Switzerland', 'vocabulary', '["Understand and use vocabulary related to Austria & Switzerland","Apply present_tense correctly","Read and comprehend a text about Austria & Switzerland","Listen and understand a dialogue about Austria & Switzerland","Speak about Austria & Switzerland in simple sentences","Write a short text about Austria & Switzerland"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'die Geschichte', 'التاريخ', 'history', 'die', NULL, 'noun', 'Geschichte ist ein wichtiges Fach.', 'History is an important subject.', 'A2', 1),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Krieg', 'الحرب', 'war', 'der', 'die Kriege', 'noun', 'Der Krieg endete 1945.', 'The war ended in 1945.', 'B1', 2),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Reich', 'الإمبراطورية', 'empire', 'das', 'die Reiche', 'noun', 'Das Deutsche Reich bestand bis 1918.', 'The German Empire existed until 1918.', 'B2', 3),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Mauer', 'الجدار', 'wall', 'die', 'die Mauern', 'noun', 'Die Berliner Mauer fiel 1989.', 'The Berlin Wall fell in 1989.', 'B1', 4),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Wiedervereinigung', 'إعادة التوحيد', 'reunification', 'die', NULL, 'noun', 'Die Wiedervereinigung war 1990.', 'The reunification was in 1990.', 'B2', 5),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Mittelalter', 'العصور الوسطى', 'Middle Ages', 'das', NULL, 'noun', 'Das Mittelalter dauerte bis 1500.', 'The Middle Ages lasted until 1500.', 'B2', 6),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Kaiser', 'الإمبراطور', 'emperor', 'der', 'die Kaiser', 'noun', 'Der Kaiser regierte das Reich.', 'The emperor ruled the empire.', 'B2', 7),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-00000261f3ad', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-00000261f3ad', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-00000261f3ad', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-00000261f3ad', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'What does "die Geschichte" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ad', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ad', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00000261f3ad', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00000261f3ad', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'What is the main topic of this lesson?', '["Austria & Switzerland","Sports","Music","Travel"]', 'Austria & Switzerland', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ad', 'true_false', 'This lesson teaches vocabulary about Austria & Switzerland.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ad', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00000261f3ad', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00000261f3ad', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00000261f3ad', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00000261f3ad', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 1),
  ('00000000-0000-4000-a000-00000261f3ad', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Deutschland, Österreich, Schweiz', 'informal', false, 2),
  ('00000000-0000-4000-a000-00000261f3ad', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Deutschland, Österreich, Schweiz', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00000261f3ad', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Deutschland, Österreich, Schweiz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00000261f3ad', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00000261f3ad', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00000261f3ad', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Österreich und die Schweiz — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Deutschland, Österreich, Schweiz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Speaking: Österreich und die Schweiz', 'Practice talking about Austria & Switzerland. Answer questions and have a simple conversation.', 'Austria & Switzerland', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Writing: Österreich und die Schweiz', 'Write a short text about Austria & Switzerland. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Geschichte','der Krieg','das Reich']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Österreich und die Schweiz — Roleplay', 'Austria & Switzerland', 'Student', 'Teacher', 'Practice conversation about Austria & Switzerland', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Österreich und die Schweiz — Advanced Roleplay', 'Austria & Switzerland', 'Customer', 'Assistant', 'Extended conversation about Austria & Switzerland', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Österreich und die Schweiz — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Österreich und die Schweiz".', 'Creative practice for Austria & Switzerland', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Homework: Österreich und die Schweiz', 'Complete these tasks to reinforce "Österreich und die Schweiz".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00000261f3ad', 'In this lesson you learned about Austria & Switzerland. You practiced vocabulary related to history and grammar structure present_tense.', '["Mastered vocabulary about Austria & Switzerland","Applied present_tense correctly","Read and understood a text about Austria & Switzerland","Practiced speaking about Austria & Switzerland"]', '[{"title":"Österreich und die Schweiz Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Austria & Switzerland core vocabulary','history key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Culture: Austria & Switzerland in German-Speaking Countries', 'Learn how Austria & Switzerland is approached in German culture.

تعلم كيف يتم التعامل مع Austria & Switzerland في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ad', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Die deutsche Wiedervereinigung (L-B2-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00000261f3ae', '00000000-0000-4000-a000-000039c35f43', 'Die deutsche Wiedervereinigung', 'Understand German reunification and its effects.', 'German Reunification', 'reading', '["Understand and use vocabulary related to German Reunification","Apply present_tense correctly","Read and comprehend a text about German Reunification","Listen and understand a dialogue about German Reunification","Speak about German Reunification in simple sentences","Write a short text about German Reunification"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'die Geschichte', 'التاريخ', 'history', 'die', NULL, 'noun', 'Geschichte ist ein wichtiges Fach.', 'History is an important subject.', 'A2', 1),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Krieg', 'الحرب', 'war', 'der', 'die Kriege', 'noun', 'Der Krieg endete 1945.', 'The war ended in 1945.', 'B1', 2),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Reich', 'الإمبراطورية', 'empire', 'das', 'die Reiche', 'noun', 'Das Deutsche Reich bestand bis 1918.', 'The German Empire existed until 1918.', 'B2', 3),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Mauer', 'الجدار', 'wall', 'die', 'die Mauern', 'noun', 'Die Berliner Mauer fiel 1989.', 'The Berlin Wall fell in 1989.', 'B1', 4),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Wiedervereinigung', 'إعادة التوحيد', 'reunification', 'die', NULL, 'noun', 'Die Wiedervereinigung war 1990.', 'The reunification was in 1990.', 'B2', 5),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Mittelalter', 'العصور الوسطى', 'Middle Ages', 'das', NULL, 'noun', 'Das Mittelalter dauerte bis 1500.', 'The Middle Ages lasted until 1500.', 'B2', 6),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Kaiser', 'الإمبراطور', 'emperor', 'der', 'die Kaiser', 'noun', 'Der Kaiser regierte das Reich.', 'The emperor ruled the empire.', 'B2', 7),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-00000261f3ae', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-00000261f3ae', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-00000261f3ae', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-00000261f3ae', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'What does "die Geschichte" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ae', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ae', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00000261f3ae', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00000261f3ae', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'What is the main topic of this lesson?', '["German Reunification","Sports","Music","Travel"]', 'German Reunification', 1, 1),
  ('00000000-0000-4000-a000-00000261f3ae', 'true_false', 'This lesson teaches vocabulary about German Reunification.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00000261f3ae', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00000261f3ae', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00000261f3ae', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00000261f3ae', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00000261f3ae', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 1),
  ('00000000-0000-4000-a000-00000261f3ae', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Deutschland, Österreich, Schweiz', 'informal', false, 2),
  ('00000000-0000-4000-a000-00000261f3ae', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Deutschland, Österreich, Schweiz', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00000261f3ae', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Deutschland, Österreich, Schweiz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00000261f3ae', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00000261f3ae', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00000261f3ae', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Die deutsche Wiedervereinigung — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Deutschland, Österreich, Schweiz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Speaking: Die deutsche Wiedervereinigung', 'Practice talking about German Reunification. Answer questions and have a simple conversation.', 'German Reunification', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Writing: Die deutsche Wiedervereinigung', 'Write a short text about German Reunification. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Geschichte','der Krieg','das Reich']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Die deutsche Wiedervereinigung — Roleplay', 'German Reunification', 'Student', 'Teacher', 'Practice conversation about German Reunification', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Die deutsche Wiedervereinigung — Advanced Roleplay', 'German Reunification', 'Customer', 'Assistant', 'Extended conversation about German Reunification', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Die deutsche Wiedervereinigung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die deutsche Wiedervereinigung".', 'Creative practice for German Reunification', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Homework: Die deutsche Wiedervereinigung', 'Complete these tasks to reinforce "Die deutsche Wiedervereinigung".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00000261f3ae', 'In this lesson you learned about German Reunification. You practiced vocabulary related to history and grammar structure present_tense.', '["Mastered vocabulary about German Reunification","Applied present_tense correctly","Read and understood a text about German Reunification","Practiced speaking about German Reunification"]', '[{"title":"Die deutsche Wiedervereinigung Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['German Reunification core vocabulary','history key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Culture: German Reunification in German-Speaking Countries', 'Learn how German Reunification is approached in German culture.

تعلم كيف يتم التعامل مع German Reunification في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3ae', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: B2 Abschlusstest (L-B2-06-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00000261f3af', '00000000-0000-4000-a000-000039c35f43', 'B2 Abschlusstest', 'Comprehensive B2 level test.', 'Level Test', 'test', '["Understand and use vocabulary related to Level Test","Apply present_tense correctly","Read and comprehend a text about Level Test","Listen and understand a dialogue about Level Test","Speak about Level Test in simple sentences","Write a short text about Level Test"]', 60, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'die Geschichte', 'التاريخ', 'history', 'die', NULL, 'noun', 'Geschichte ist ein wichtiges Fach.', 'History is an important subject.', 'A2', 1),
  ('00000000-0000-4000-a000-00000261f3af', 'der Krieg', 'الحرب', 'war', 'der', 'die Kriege', 'noun', 'Der Krieg endete 1945.', 'The war ended in 1945.', 'B1', 2),
  ('00000000-0000-4000-a000-00000261f3af', 'das Reich', 'الإمبراطورية', 'empire', 'das', 'die Reiche', 'noun', 'Das Deutsche Reich bestand bis 1918.', 'The German Empire existed until 1918.', 'B2', 3),
  ('00000000-0000-4000-a000-00000261f3af', 'die Mauer', 'الجدار', 'wall', 'die', 'die Mauern', 'noun', 'Die Berliner Mauer fiel 1989.', 'The Berlin Wall fell in 1989.', 'B1', 4),
  ('00000000-0000-4000-a000-00000261f3af', 'die Wiedervereinigung', 'إعادة التوحيد', 'reunification', 'die', NULL, 'noun', 'Die Wiedervereinigung war 1990.', 'The reunification was in 1990.', 'B2', 5),
  ('00000000-0000-4000-a000-00000261f3af', 'das Mittelalter', 'العصور الوسطى', 'Middle Ages', 'das', NULL, 'noun', 'Das Mittelalter dauerte bis 1500.', 'The Middle Ages lasted until 1500.', 'B2', 6),
  ('00000000-0000-4000-a000-00000261f3af', 'der Kaiser', 'الإمبراطور', 'emperor', 'der', 'die Kaiser', 'noun', 'Der Kaiser regierte das Reich.', 'The emperor ruled the empire.', 'B2', 7),
  ('00000000-0000-4000-a000-00000261f3af', 'die Wirtschaft', 'الاقتصاد', 'economy', 'die', NULL, 'noun', 'Die deutsche Wirtschaft ist stark.', 'The German economy is strong.', 'B1', 8),
  ('00000000-0000-4000-a000-00000261f3af', 'das Unternehmen', 'الشركة', 'enterprise', 'das', 'die Unternehmen', 'noun', 'Das Unternehmen wächst schnell.', 'The enterprise is growing quickly.', 'B1', 9),
  ('00000000-0000-4000-a000-00000261f3af', 'die Aktie', 'السهم', 'share', 'die', 'die Aktien', 'noun', 'Die Aktie steigt.', 'The share is rising.', 'B2', 10),
  ('00000000-0000-4000-a000-00000261f3af', 'der Umsatz', 'الإيرادات', 'revenue', 'der', 'die Umsätze', 'noun', 'Der Umsatz ist gestiegen.', 'Revenue has increased.', 'B2', 11),
  ('00000000-0000-4000-a000-00000261f3af', 'die Bilanz', 'الميزانية العمومية', 'balance sheet', 'die', 'die Bilanzen', 'noun', 'Die Bilanz ist positiv.', 'The balance sheet is positive.', 'B2', 12),
  ('00000000-0000-4000-a000-00000261f3af', 'investieren', 'يستثمر', 'to invest', NULL, NULL, 'verb', 'Wir investieren in neue Technologien.', 'We invest in new technologies.', 'B2', 13),
  ('00000000-0000-4000-a000-00000261f3af', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt wächst.', 'The market is growing.', 'A2', 14),
  ('00000000-0000-4000-a000-00000261f3af', 'die Messe', 'المعرض التجاري', 'trade fair', 'die', 'die Messen', 'noun', 'Die Messe findet in Hannover statt.', 'The trade fair takes place in Hanover.', 'B2', 15),
  ('00000000-0000-4000-a000-00000261f3af', 'die Regierung', 'الحكومة', 'government', 'die', NULL, 'noun', 'Die Regierung beschließt neue Gesetze.', 'The government passes new laws.', 'B1', 16),
  ('00000000-0000-4000-a000-00000261f3af', 'der Bundestag', 'مجلس النواب الألماني', 'Federal Parliament', 'der', NULL, 'noun', 'Der Bundestag tagt in Berlin.', 'The Bundestag meets in Berlin.', 'B2', 17),
  ('00000000-0000-4000-a000-00000261f3af', 'die Wahl', 'الانتخاب', 'election', 'die', 'die Wahlen', 'noun', 'Die Wahlen sind im September.', 'The elections are in September.', 'B1', 18),
  ('00000000-0000-4000-a000-00000261f3af', 'die Partei', 'الحزب', 'party', 'die', 'die Parteien', 'noun', 'Welche Partei wählst du?', 'Which party do you vote for?', 'B1', 19),
  ('00000000-0000-4000-a000-00000261f3af', 'der Kanzler', 'المستشار', 'chancellor', 'der', NULL, 'noun', 'Der Bundeskanzler regiert das Land.', 'The Federal Chancellor governs the country.', 'B2', 20),
  ('00000000-0000-4000-a000-00000261f3af', 'die Demokratie', 'الديمقراطية', 'democracy', 'die', NULL, 'noun', 'Demokratie ist ein hohes Gut.', 'Democracy is a precious asset.', 'B1', 21),
  ('00000000-0000-4000-a000-00000261f3af', 'das Gesetz', 'القانون', 'law', 'das', 'die Gesetze', 'noun', 'Das Gesetz tritt 2024 in Kraft.', 'The law takes effect in 2024.', 'B1', 22),
  ('00000000-0000-4000-a000-00000261f3af', 'die Wissenschaft', 'العلم', 'science', 'die', NULL, 'noun', 'Die Wissenschaft macht Fortschritte.', 'Science is making progress.', 'B1', 23),
  ('00000000-0000-4000-a000-00000261f3af', 'die Forschung', 'البحث العلمي', 'research', 'die', NULL, 'noun', 'Die Forschung an Krebs läuft.', 'Cancer research is ongoing.', 'B1', 24),
  ('00000000-0000-4000-a000-00000261f3af', 'das Labor', 'المختبر', 'laboratory', 'das', 'die Labore', 'noun', 'Das Labor ist modern ausgestattet.', 'The laboratory is modernly equipped.', 'B2', 25),
  ('00000000-0000-4000-a000-00000261f3af', 'das Experiment', 'التجربة', 'experiment', 'das', 'die Experimente', 'noun', 'Das Experiment war erfolgreich.', 'The experiment was successful.', 'B2', 26),
  ('00000000-0000-4000-a000-00000261f3af', 'die Theorie', 'النظرية', 'theory', 'die', 'die Theorien', 'noun', 'Die Theorie wurde bestätigt.', 'The theory was confirmed.', 'B2', 27),
  ('00000000-0000-4000-a000-00000261f3af', 'die Biologie', 'علم الأحياء', 'biology', 'die', NULL, 'noun', 'Biologie ist ein naturwissenschaftliches Fach.', 'Biology is a natural science subject.', 'B2', 28),
  ('00000000-0000-4000-a000-00000261f3af', 'die Chemie', 'الكيمياء', 'chemistry', 'die', NULL, 'noun', 'Chemie ist nicht mein Fach.', 'Chemistry is not my subject.', 'B2', 29),
  ('00000000-0000-4000-a000-00000261f3af', 'die Physik', 'الفيزياء', 'physics', 'die', NULL, 'noun', 'Physik erklärt die Naturgesetze.', 'Physics explains the laws of nature.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'What does "die Geschichte" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00000261f3af', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00000261f3af', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00000261f3af', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00000261f3af', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'What is the main topic of this lesson?', '["Level Test","Sports","Music","Travel"]', 'Level Test', 1, 1),
  ('00000000-0000-4000-a000-00000261f3af', 'true_false', 'This lesson teaches vocabulary about Level Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00000261f3af', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00000261f3af', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00000261f3af', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00000261f3af', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00000261f3af', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Deutschland, Österreich, Schweiz', 'formal', false, 1),
  ('00000000-0000-4000-a000-00000261f3af', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Deutschland, Österreich, Schweiz', 'informal', false, 2),
  ('00000000-0000-4000-a000-00000261f3af', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Deutschland, Österreich, Schweiz', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00000261f3af', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Deutschland, Österreich, Schweiz', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00000261f3af', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00000261f3af', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00000261f3af', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00000261f3af', 'B2 Abschlusstest — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Deutschland, Österreich, Schweiz');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Speaking: B2 Abschlusstest', 'Practice talking about Level Test. Answer questions and have a simple conversation.', 'Level Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Writing: B2 Abschlusstest', 'Write a short text about Level Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Geschichte','der Krieg','das Reich']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3af', 'B2 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'intermediate', 1, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00000261f3af', 'B2 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'intermediate', 2, ARRAY['die Geschichte','der Krieg','das Reich','die Mauer','die Wiedervereinigung','das Mittelalter','der Kaiser','die Wirtschaft']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00000261f3af', 'B2 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "B2 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Homework: B2 Abschlusstest', 'Complete these tasks to reinforce "B2 Abschlusstest".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00000261f3af', 'In this lesson you learned about Level Test. You practiced vocabulary related to history and grammar structure present_tense.', '["Mastered vocabulary about Level Test","Applied present_tense correctly","Read and understood a text about Level Test","Practiced speaking about Level Test"]', '[{"title":"B2 Abschlusstest Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Level Test core vocabulary','history key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Culture: Level Test in German-Speaking Countries', 'Learn how Level Test is approached in German culture.

تعلم كيف يتم التعامل مع Level Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00000261f3af', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

end $$;
