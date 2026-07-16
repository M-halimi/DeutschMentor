-- ============================================================================
-- COMPLETE CURRICULUM SEED — Level C1 (Advanced)
-- Generated for 6 modules, 23 lessons
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Level: C1 — Advanced
  insert into public.course_levels (id, title, description, image_url, color, order_index)
  values ('C1', 'Advanced', 'Express yourself clearly on complex subjects. Use German effectively in professional and academic settings.', NULL, 'from-red-500 to-rose-600', 5)
  on conflict (id) do nothing;

  -- Module 1: Akademische Sprache
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10260', 'C1', 'Akademische Sprache', 'Master academic German: nominal style, complex structures, and formal register.', '["Use Nominalstil vs Verbalstil appropriately","Use Nomen-Verb-Verbindungen actively","Understand and write complex sentences","Analyze academic texts","Write academic essays"]', 1, 6, true)
  on conflict (id) do nothing;

  -- Lesson 1: Wissenschaftliche Grundbegriffe (L-C1-01-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f6f', '00000000-0000-4000-a000-000039d10260', 'Wissenschaftliche Grundbegriffe', 'Learn core academic vocabulary.', 'Academic Vocabulary', 'vocabulary', '["Understand and use vocabulary related to Academic Vocabulary","Apply present_tense correctly","Read and comprehend a text about Academic Vocabulary","Listen and understand a dialogue about Academic Vocabulary","Speak about Academic Vocabulary in simple sentences","Write a short text about Academic Vocabulary"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f6f', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f6f', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f6f', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f6f', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f6f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f6f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355a9f6f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f6f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'What is the main topic of this lesson?', '["Academic Vocabulary","Sports","Music","Travel"]', 'Academic Vocabulary', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f6f', 'true_false', 'This lesson teaches vocabulary about Academic Vocabulary.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f6f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f6f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f6f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f6f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f6f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Akademische Sprache', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Akademische Sprache', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355a9f6f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Wissenschaftliche Grundbegriffe — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Wissenschaftliche Grundbegriffe — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Speaking: Wissenschaftliche Grundbegriffe', 'Practice talking about Academic Vocabulary. Answer questions and have a simple conversation.', 'Academic Vocabulary', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Writing: Wissenschaftliche Grundbegriffe', 'Write a short text about Academic Vocabulary. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Wissenschaftliche Grundbegriffe — Roleplay', 'Academic Vocabulary', 'Student', 'Teacher', 'Practice conversation about Academic Vocabulary', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Wissenschaftliche Grundbegriffe — Advanced Roleplay', 'Academic Vocabulary', 'Customer', 'Assistant', 'Extended conversation about Academic Vocabulary', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Wissenschaftliche Grundbegriffe — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Grundbegriffe".', 'Creative practice for Academic Vocabulary', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Homework: Wissenschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Wissenschaftliche Grundbegriffe".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'In this lesson you learned about Academic Vocabulary. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Academic Vocabulary","Applied present_tense correctly","Read and understood a text about Academic Vocabulary","Practiced speaking about Academic Vocabulary"]', '[{"title":"Wissenschaftliche Grundbegriffe Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Academic Vocabulary core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Culture: Academic Vocabulary in German-Speaking Countries', 'Learn how Academic Vocabulary is approached in German culture.

تعلم كيف يتم التعامل مع Academic Vocabulary في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f6f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Akademisches Schreiben (L-C1-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f70', '00000000-0000-4000-a000-000039d10260', 'Akademisches Schreiben', 'Write academic texts with proper structure.', 'Academic Writing', 'writing', '["Understand and use vocabulary related to Academic Writing","Apply present_tense correctly","Read and comprehend a text about Academic Writing","Listen and understand a dialogue about Academic Writing","Speak about Academic Writing in simple sentences","Write a short text about Academic Writing"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f70', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f70', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f70', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f70', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f70', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f70', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f70', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355a9f70', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f70', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'What is the main topic of this lesson?', '["Academic Writing","Sports","Music","Travel"]', 'Academic Writing', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f70', 'true_false', 'This lesson teaches vocabulary about Academic Writing.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f70', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f70', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f70', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f70', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f70', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f70', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f70', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Akademische Sprache', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355a9f70', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Akademische Sprache', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355a9f70', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355a9f70', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355a9f70', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Akademisches Schreiben — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Akademisches Schreiben — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Speaking: Akademisches Schreiben', 'Practice talking about Academic Writing. Answer questions and have a simple conversation.', 'Academic Writing', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Writing: Akademisches Schreiben', 'Write a short text about Academic Writing. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Akademisches Schreiben — Roleplay', 'Academic Writing', 'Student', 'Teacher', 'Practice conversation about Academic Writing', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Akademisches Schreiben — Advanced Roleplay', 'Academic Writing', 'Customer', 'Assistant', 'Extended conversation about Academic Writing', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Akademisches Schreiben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Akademisches Schreiben".', 'Creative practice for Academic Writing', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Homework: Akademisches Schreiben', 'Complete these tasks to reinforce "Akademisches Schreiben".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f70', 'In this lesson you learned about Academic Writing. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Academic Writing","Applied present_tense correctly","Read and understood a text about Academic Writing","Practiced speaking about Academic Writing"]', '[{"title":"Akademisches Schreiben Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Academic Writing core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Culture: Academic Writing in German-Speaking Countries', 'Learn how Academic Writing is approached in German culture.

تعلم كيف يتم التعامل مع Academic Writing في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f70', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Nominalstil vs. Verbalstil (L-C1-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f71', '00000000-0000-4000-a000-000039d10260', 'Nominalstil vs. Verbalstil', 'Learn when to use nominal vs verbal style.', 'Nominal vs Verbal Style', 'grammar', '["Understand and use vocabulary related to Nominal vs Verbal Style","Apply present_tense correctly","Read and comprehend a text about Nominal vs Verbal Style","Listen and understand a dialogue about Nominal vs Verbal Style","Speak about Nominal vs Verbal Style in simple sentences","Write a short text about Nominal vs Verbal Style"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f71', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f71', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f71', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f71', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f71', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f71', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f71', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355a9f71', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f71', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'What is the main topic of this lesson?', '["Nominal vs Verbal Style","Sports","Music","Travel"]', 'Nominal vs Verbal Style', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f71', 'true_false', 'This lesson teaches vocabulary about Nominal vs Verbal Style.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f71', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f71', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f71', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f71', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f71', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f71', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f71', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Akademische Sprache', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355a9f71', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Akademische Sprache', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355a9f71', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355a9f71', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355a9f71', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Nominalstil vs. Verbalstil — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Nominalstil vs. Verbalstil — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Speaking: Nominalstil vs. Verbalstil', 'Practice talking about Nominal vs Verbal Style. Answer questions and have a simple conversation.', 'Nominal vs Verbal Style', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Writing: Nominalstil vs. Verbalstil', 'Write a short text about Nominal vs Verbal Style. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Nominalstil vs. Verbalstil — Roleplay', 'Nominal vs Verbal Style', 'Student', 'Teacher', 'Practice conversation about Nominal vs Verbal Style', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Nominalstil vs. Verbalstil — Advanced Roleplay', 'Nominal vs Verbal Style', 'Customer', 'Assistant', 'Extended conversation about Nominal vs Verbal Style', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Nominalstil vs. Verbalstil — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nominalstil vs. Verbalstil".', 'Creative practice for Nominal vs Verbal Style', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Homework: Nominalstil vs. Verbalstil', 'Complete these tasks to reinforce "Nominalstil vs. Verbalstil".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f71', 'In this lesson you learned about Nominal vs Verbal Style. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Nominal vs Verbal Style","Applied present_tense correctly","Read and understood a text about Nominal vs Verbal Style","Practiced speaking about Nominal vs Verbal Style"]', '[{"title":"Nominalstil vs. Verbalstil Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Nominal vs Verbal Style core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Culture: Nominal vs Verbal Style in German-Speaking Countries', 'Learn how Nominal vs Verbal Style is approached in German culture.

تعلم كيف يتم التعامل مع Nominal vs Verbal Style في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f71', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Nomen-Verb-Verbindungen (L-C1-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f72', '00000000-0000-4000-a000-000039d10260', 'Nomen-Verb-Verbindungen', 'Master noun-verb collocations for formal German.', 'Noun-Verb Collocations', 'grammar', '["Understand and use vocabulary related to Noun-Verb Collocations","Apply present_tense correctly","Read and comprehend a text about Noun-Verb Collocations","Listen and understand a dialogue about Noun-Verb Collocations","Speak about Noun-Verb Collocations in simple sentences","Write a short text about Noun-Verb Collocations"]', 55, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f72', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f72', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f72', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f72', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f72', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f72', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f72', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355a9f72', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f72', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'What is the main topic of this lesson?', '["Noun-Verb Collocations","Sports","Music","Travel"]', 'Noun-Verb Collocations', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f72', 'true_false', 'This lesson teaches vocabulary about Noun-Verb Collocations.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f72', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f72', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f72', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f72', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f72', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f72', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f72', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Akademische Sprache', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355a9f72', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Akademische Sprache', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355a9f72', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355a9f72', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355a9f72', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nomen-Verb-Verbindungen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nomen-Verb-Verbindungen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Speaking: Nomen-Verb-Verbindungen', 'Practice talking about Noun-Verb Collocations. Answer questions and have a simple conversation.', 'Noun-Verb Collocations', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Writing: Nomen-Verb-Verbindungen', 'Write a short text about Noun-Verb Collocations. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nomen-Verb-Verbindungen — Roleplay', 'Noun-Verb Collocations', 'Student', 'Teacher', 'Practice conversation about Noun-Verb Collocations', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nomen-Verb-Verbindungen — Advanced Roleplay', 'Noun-Verb Collocations', 'Customer', 'Assistant', 'Extended conversation about Noun-Verb Collocations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Nomen-Verb-Verbindungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nomen-Verb-Verbindungen".', 'Creative practice for Noun-Verb Collocations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Homework: Nomen-Verb-Verbindungen', 'Complete these tasks to reinforce "Nomen-Verb-Verbindungen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f72', 'In this lesson you learned about Noun-Verb Collocations. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Noun-Verb Collocations","Applied present_tense correctly","Read and understood a text about Noun-Verb Collocations","Practiced speaking about Noun-Verb Collocations"]', '[{"title":"Nomen-Verb-Verbindungen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Noun-Verb Collocations core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Culture: Noun-Verb Collocations in German-Speaking Countries', 'Learn how Noun-Verb Collocations is approached in German culture.

تعلم كيف يتم التعامل مع Noun-Verb Collocations في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f72', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Komplexe Satzstrukturen (L-C1-01-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f73', '00000000-0000-4000-a000-000039d10260', 'Komplexe Satzstrukturen', 'Analyze and create complex sentence structures.', 'Complex Sentences', 'grammar', '["Understand and use vocabulary related to Complex Sentences","Apply present_tense correctly","Read and comprehend a text about Complex Sentences","Listen and understand a dialogue about Complex Sentences","Speak about Complex Sentences in simple sentences","Write a short text about Complex Sentences"]', 60, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f73', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f73', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f73', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f73', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f73', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f73', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f73', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355a9f73', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f73', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'What is the main topic of this lesson?', '["Complex Sentences","Sports","Music","Travel"]', 'Complex Sentences', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f73', 'true_false', 'This lesson teaches vocabulary about Complex Sentences.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f73', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f73', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f73', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f73', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f73', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f73', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f73', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Akademische Sprache', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355a9f73', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Akademische Sprache', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355a9f73', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355a9f73', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355a9f73', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Komplexe Satzstrukturen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Komplexe Satzstrukturen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Speaking: Komplexe Satzstrukturen', 'Practice talking about Complex Sentences. Answer questions and have a simple conversation.', 'Complex Sentences', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Writing: Komplexe Satzstrukturen', 'Write a short text about Complex Sentences. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Komplexe Satzstrukturen — Roleplay', 'Complex Sentences', 'Student', 'Teacher', 'Practice conversation about Complex Sentences', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Komplexe Satzstrukturen — Advanced Roleplay', 'Complex Sentences', 'Customer', 'Assistant', 'Extended conversation about Complex Sentences', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Komplexe Satzstrukturen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Komplexe Satzstrukturen".', 'Creative practice for Complex Sentences', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Homework: Komplexe Satzstrukturen', 'Complete these tasks to reinforce "Komplexe Satzstrukturen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f73', 'In this lesson you learned about Complex Sentences. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Complex Sentences","Applied present_tense correctly","Read and understood a text about Complex Sentences","Practiced speaking about Complex Sentences"]', '[{"title":"Komplexe Satzstrukturen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Complex Sentences core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Culture: Complex Sentences in German-Speaking Countries', 'Learn how Complex Sentences is approached in German culture.

تعلم كيف يتم التعامل مع Complex Sentences في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f73', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Akademische Sprache (L-C1-01-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355a9f74', '00000000-0000-4000-a000-000039d10260', 'Test: Akademische Sprache', 'Module test on academic language.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 50, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355a9f74', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355a9f74', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355a9f74', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355a9f74', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355a9f74', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f74', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f74', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355a9f74', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355a9f74', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-0000355a9f74', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355a9f74', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355a9f74', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355a9f74', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355a9f74', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355a9f74', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355a9f74', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355a9f74', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Akademische Sprache', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355a9f74', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Akademische Sprache', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355a9f74', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355a9f74', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355a9f74', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Test: Akademische Sprache — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Test: Akademische Sprache — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Akademische Sprache');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Speaking: Test: Akademische Sprache', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Writing: Test: Akademische Sprache', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Test: Akademische Sprache — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Test: Akademische Sprache — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Test: Akademische Sprache — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Akademische Sprache".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Homework: Test: Akademische Sprache', 'Complete these tasks to reinforce "Test: Akademische Sprache".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355a9f74', 'In this lesson you learned about Module Test. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Akademische Sprache Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355a9f74', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 2: Sprache, Stil und Rhetorik
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10261', 'C1', 'Sprache, Stil und Rhetorik', 'Analyze and use sophisticated language, style, and rhetorical devices.', '["Use rhetorical devices effectively","Analyze text style and register","Use Konjunktiv I for reported speech","Write in different registers","Give persuasive presentations"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Rhetorische Mittel (L-C1-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b13ce', '00000000-0000-4000-a000-000039d10261', 'Rhetorische Mittel', 'Learn rhetorical devices and their effects.', 'Rhetorical Devices', 'vocabulary', '["Understand and use vocabulary related to Rhetorical Devices","Apply present_tense correctly","Read and comprehend a text about Rhetorical Devices","Listen and understand a dialogue about Rhetorical Devices","Speak about Rhetorical Devices in simple sentences","Write a short text about Rhetorical Devices"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b13ce', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b13ce', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 6),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355b13ce', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b13ce', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 16),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355b13ce', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'What does "die Rhetorik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355b13ce', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355b13ce', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355b13ce', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355b13ce', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'What is the main topic of this lesson?', '["Rhetorical Devices","Sports","Music","Travel"]', 'Rhetorical Devices', 1, 1),
  ('00000000-0000-4000-a000-0000355b13ce', 'true_false', 'This lesson teaches vocabulary about Rhetorical Devices.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355b13ce', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355b13ce', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355b13ce', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b13ce', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355b13ce', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Sprache, Stil und Rhetorik', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b13ce', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Sprache, Stil und Rhetorik', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355b13ce', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Sprache, Stil und Rhetorik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355b13ce', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Sprache, Stil und Rhetorik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355b13ce', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355b13ce', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355b13ce', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Rhetorische Mittel — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Rhetorische Mittel — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Sprache, Stil und Rhetorik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Speaking: Rhetorische Mittel', 'Practice talking about Rhetorical Devices. Answer questions and have a simple conversation.', 'Rhetorical Devices', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Writing: Rhetorische Mittel', 'Write a short text about Rhetorical Devices. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Rhetorik','die Metapher','das Argument']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Rhetorische Mittel — Roleplay', 'Rhetorical Devices', 'Student', 'Teacher', 'Practice conversation about Rhetorical Devices', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Rhetorische Mittel — Advanced Roleplay', 'Rhetorical Devices', 'Customer', 'Assistant', 'Extended conversation about Rhetorical Devices', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Rhetorische Mittel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Rhetorische Mittel".', 'Creative practice for Rhetorical Devices', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Homework: Rhetorische Mittel', 'Complete these tasks to reinforce "Rhetorische Mittel".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b13ce', 'In this lesson you learned about Rhetorical Devices. You practiced vocabulary related to rhetoric and grammar structure present_tense.', '["Mastered vocabulary about Rhetorical Devices","Applied present_tense correctly","Read and understood a text about Rhetorical Devices","Practiced speaking about Rhetorical Devices"]', '[{"title":"Rhetorische Mittel Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Rhetorical Devices core vocabulary','rhetoric key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Culture: Rhetorical Devices in German-Speaking Countries', 'Learn how Rhetorical Devices is approached in German culture.

تعلم كيف يتم التعامل مع Rhetorical Devices في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13ce', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Konjunktiv I: Indirekte Rede (L-C1-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b13cf', '00000000-0000-4000-a000-000039d10261', 'Konjunktiv I: Indirekte Rede', 'Learn subjunctive I for indirect speech.', 'Indirect Speech', 'grammar', '["Understand and use vocabulary related to Indirect Speech","Apply present_tense correctly","Read and comprehend a text about Indirect Speech","Listen and understand a dialogue about Indirect Speech","Speak about Indirect Speech in simple sentences","Write a short text about Indirect Speech"]', 60, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b13cf', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b13cf', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 6),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355b13cf', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b13cf', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 16),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355b13cf', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'What does "die Rhetorik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355b13cf', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355b13cf', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355b13cf', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355b13cf', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'What is the main topic of this lesson?', '["Indirect Speech","Sports","Music","Travel"]', 'Indirect Speech', 1, 1),
  ('00000000-0000-4000-a000-0000355b13cf', 'true_false', 'This lesson teaches vocabulary about Indirect Speech.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355b13cf', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355b13cf', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355b13cf', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b13cf', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355b13cf', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Sprache, Stil und Rhetorik', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b13cf', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Sprache, Stil und Rhetorik', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355b13cf', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Sprache, Stil und Rhetorik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355b13cf', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Sprache, Stil und Rhetorik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355b13cf', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355b13cf', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355b13cf', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Konjunktiv I: Indirekte Rede — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Konjunktiv I: Indirekte Rede — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Sprache, Stil und Rhetorik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Speaking: Konjunktiv I: Indirekte Rede', 'Practice talking about Indirect Speech. Answer questions and have a simple conversation.', 'Indirect Speech', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Writing: Konjunktiv I: Indirekte Rede', 'Write a short text about Indirect Speech. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Rhetorik','die Metapher','das Argument']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Konjunktiv I: Indirekte Rede — Roleplay', 'Indirect Speech', 'Student', 'Teacher', 'Practice conversation about Indirect Speech', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Konjunktiv I: Indirekte Rede — Advanced Roleplay', 'Indirect Speech', 'Customer', 'Assistant', 'Extended conversation about Indirect Speech', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Konjunktiv I: Indirekte Rede — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv I: Indirekte Rede".', 'Creative practice for Indirect Speech', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Homework: Konjunktiv I: Indirekte Rede', 'Complete these tasks to reinforce "Konjunktiv I: Indirekte Rede".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b13cf', 'In this lesson you learned about Indirect Speech. You practiced vocabulary related to rhetoric and grammar structure present_tense.', '["Mastered vocabulary about Indirect Speech","Applied present_tense correctly","Read and understood a text about Indirect Speech","Practiced speaking about Indirect Speech"]', '[{"title":"Konjunktiv I: Indirekte Rede Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Indirect Speech core vocabulary','rhetoric key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Culture: Indirect Speech in German-Speaking Countries', 'Learn how Indirect Speech is approached in German culture.

تعلم كيف يتم التعامل مع Indirect Speech في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13cf', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Stilistische Analyse (L-C1-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b13d0', '00000000-0000-4000-a000-000039d10261', 'Stilistische Analyse', 'Analyze text styles and registers.', 'Stylistic Analysis', 'reading', '["Understand and use vocabulary related to Stylistic Analysis","Apply present_tense correctly","Read and comprehend a text about Stylistic Analysis","Listen and understand a dialogue about Stylistic Analysis","Speak about Stylistic Analysis in simple sentences","Write a short text about Stylistic Analysis"]', 55, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b13d0', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b13d0', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 6),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355b13d0', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b13d0', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 16),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355b13d0', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'What does "die Rhetorik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355b13d0', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355b13d0', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355b13d0', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355b13d0', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'What is the main topic of this lesson?', '["Stylistic Analysis","Sports","Music","Travel"]', 'Stylistic Analysis', 1, 1),
  ('00000000-0000-4000-a000-0000355b13d0', 'true_false', 'This lesson teaches vocabulary about Stylistic Analysis.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355b13d0', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355b13d0', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355b13d0', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b13d0', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355b13d0', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Sprache, Stil und Rhetorik', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b13d0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Sprache, Stil und Rhetorik', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355b13d0', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Sprache, Stil und Rhetorik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355b13d0', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Sprache, Stil und Rhetorik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355b13d0', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355b13d0', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355b13d0', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Stilistische Analyse — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Stilistische Analyse — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Sprache, Stil und Rhetorik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Speaking: Stilistische Analyse', 'Practice talking about Stylistic Analysis. Answer questions and have a simple conversation.', 'Stylistic Analysis', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Writing: Stilistische Analyse', 'Write a short text about Stylistic Analysis. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Rhetorik','die Metapher','das Argument']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Stilistische Analyse — Roleplay', 'Stylistic Analysis', 'Student', 'Teacher', 'Practice conversation about Stylistic Analysis', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Stilistische Analyse — Advanced Roleplay', 'Stylistic Analysis', 'Customer', 'Assistant', 'Extended conversation about Stylistic Analysis', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Stilistische Analyse — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Stilistische Analyse".', 'Creative practice for Stylistic Analysis', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Homework: Stilistische Analyse', 'Complete these tasks to reinforce "Stilistische Analyse".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b13d0', 'In this lesson you learned about Stylistic Analysis. You practiced vocabulary related to rhetoric and grammar structure present_tense.', '["Mastered vocabulary about Stylistic Analysis","Applied present_tense correctly","Read and understood a text about Stylistic Analysis","Practiced speaking about Stylistic Analysis"]', '[{"title":"Stilistische Analyse Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Stylistic Analysis core vocabulary','rhetoric key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Culture: Stylistic Analysis in German-Speaking Countries', 'Learn how Stylistic Analysis is approached in German culture.

تعلم كيف يتم التعامل مع Stylistic Analysis في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Test: Sprache und Stil (L-C1-02-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b13d1', '00000000-0000-4000-a000-000039d10261', 'Test: Sprache und Stil', 'Module test on language and style.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b13d1', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b13d1', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 6),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355b13d1', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b13d1', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 16),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355b13d1', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'What does "die Rhetorik" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355b13d1', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355b13d1', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355b13d1', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355b13d1', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-0000355b13d1', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355b13d1', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355b13d1', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355b13d1', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b13d1', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355b13d1', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Sprache, Stil und Rhetorik', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b13d1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Sprache, Stil und Rhetorik', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355b13d1', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Sprache, Stil und Rhetorik', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355b13d1', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Sprache, Stil und Rhetorik', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355b13d1', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355b13d1', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355b13d1', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Test: Sprache und Stil — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Test: Sprache und Stil — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Sprache, Stil und Rhetorik');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Speaking: Test: Sprache und Stil', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Writing: Test: Sprache und Stil', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Rhetorik','die Metapher','das Argument']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Test: Sprache und Stil — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Test: Sprache und Stil — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Rhetorik','die Metapher','das Argument','die Überzeugung','die Rede','das Pathos','die Ironie','die Forschung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Test: Sprache und Stil — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Sprache und Stil".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Homework: Test: Sprache und Stil', 'Complete these tasks to reinforce "Test: Sprache und Stil".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b13d1', 'In this lesson you learned about Module Test. You practiced vocabulary related to rhetoric and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Sprache und Stil Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','rhetoric key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b13d1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 3: Diskurs und Argumentation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10262', 'C1', 'Diskurs und Argumentation', 'Master academic discourse and persuasive argumentation.', '["Construct and deconstruct arguments","Use Konnektoren for text coherence","Write academic essays and papers","Participate in formal debates","Critically analyze texts"]', 3, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Argumentationsstrukturen (L-C1-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b882d', '00000000-0000-4000-a000-000039d10262', 'Argumentationsstrukturen', 'Learn argumentation structures and strategies.', 'Argumentation', 'vocabulary', '["Understand and use vocabulary related to Argumentation","Apply present_tense correctly","Read and comprehend a text about Argumentation","Listen and understand a dialogue about Argumentation","Speak about Argumentation in simple sentences","Write a short text about Argumentation"]', 50, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b882d', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b882d', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355b882d', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b882d', 'die Perspektive', 'المنظور', 'perspective', 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b882d', 'der Standpunkt', 'وجهة النظر', 'point of view', 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355b882d', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355b882d', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b882d', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b882d', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355b882d', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b882d', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b882d', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b882d', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355b882d', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355b882d', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355b882d', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355b882d', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b882d', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b882d', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b882d', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b882d', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b882d', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b882d', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355b882d', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b882d', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355b882d', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b882d', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355b882d', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355b882d', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'What does "der Diskurs" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355b882d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355b882d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355b882d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355b882d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'What is the main topic of this lesson?', '["Argumentation","Sports","Music","Travel"]', 'Argumentation', 1, 1),
  ('00000000-0000-4000-a000-0000355b882d', 'true_false', 'This lesson teaches vocabulary about Argumentation.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355b882d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355b882d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355b882d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b882d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355b882d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diskurs und Argumentation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b882d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diskurs und Argumentation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355b882d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Diskurs und Argumentation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355b882d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Diskurs und Argumentation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355b882d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355b882d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355b882d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b882d', 'Argumentationsstrukturen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b882d', 'Argumentationsstrukturen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Diskurs und Argumentation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Speaking: Argumentationsstrukturen', 'Practice talking about Argumentation. Answer questions and have a simple conversation.', 'Argumentation', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Writing: Argumentationsstrukturen', 'Write a short text about Argumentation. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882d', 'Argumentationsstrukturen — Roleplay', 'Argumentation', 'Student', 'Teacher', 'Practice conversation about Argumentation', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882d', 'Argumentationsstrukturen — Advanced Roleplay', 'Argumentation', 'Customer', 'Assistant', 'Extended conversation about Argumentation', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b882d', 'Argumentationsstrukturen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Argumentationsstrukturen".', 'Creative practice for Argumentation', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Homework: Argumentationsstrukturen', 'Complete these tasks to reinforce "Argumentationsstrukturen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b882d', 'In this lesson you learned about Argumentation. You practiced vocabulary related to discourse and grammar structure present_tense.', '["Mastered vocabulary about Argumentation","Applied present_tense correctly","Read and understood a text about Argumentation","Practiced speaking about Argumentation"]', '[{"title":"Argumentationsstrukturen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Argumentation core vocabulary','discourse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Culture: Argumentation in German-Speaking Countries', 'Learn how Argumentation is approached in German culture.

تعلم كيف يتم التعامل مع Argumentation في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Konnektoren: trotzdem, dennoch, allerdings (L-C1-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b882e', '00000000-0000-4000-a000-000039d10262', 'Konnektoren: trotzdem, dennoch, allerdings', 'Learn advanced connectors for text coherence.', 'Advanced Connectors', 'grammar', '["Understand and use vocabulary related to Advanced Connectors","Apply present_tense correctly","Read and comprehend a text about Advanced Connectors","Listen and understand a dialogue about Advanced Connectors","Speak about Advanced Connectors in simple sentences","Write a short text about Advanced Connectors"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b882e', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b882e', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355b882e', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b882e', 'die Perspektive', 'المنظور', 'perspective', 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b882e', 'der Standpunkt', 'وجهة النظر', 'point of view', 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355b882e', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355b882e', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b882e', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b882e', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355b882e', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b882e', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b882e', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b882e', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355b882e', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355b882e', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355b882e', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355b882e', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b882e', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b882e', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b882e', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b882e', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b882e', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b882e', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355b882e', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b882e', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355b882e', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b882e', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355b882e', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355b882e', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'What does "der Diskurs" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355b882e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355b882e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355b882e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355b882e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'What is the main topic of this lesson?', '["Advanced Connectors","Sports","Music","Travel"]', 'Advanced Connectors', 1, 1),
  ('00000000-0000-4000-a000-0000355b882e', 'true_false', 'This lesson teaches vocabulary about Advanced Connectors.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355b882e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355b882e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355b882e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b882e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355b882e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diskurs und Argumentation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b882e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diskurs und Argumentation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355b882e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Diskurs und Argumentation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355b882e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Diskurs und Argumentation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355b882e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355b882e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355b882e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b882e', 'Konnektoren: trotzdem, dennoch, allerdings — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b882e', 'Konnektoren: trotzdem, dennoch, allerdings — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Diskurs und Argumentation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Speaking: Konnektoren: trotzdem, dennoch, allerdings', 'Practice talking about Advanced Connectors. Answer questions and have a simple conversation.', 'Advanced Connectors', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Writing: Konnektoren: trotzdem, dennoch, allerdings', 'Write a short text about Advanced Connectors. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882e', 'Konnektoren: trotzdem, dennoch, allerdings — Roleplay', 'Advanced Connectors', 'Student', 'Teacher', 'Practice conversation about Advanced Connectors', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882e', 'Konnektoren: trotzdem, dennoch, allerdings — Advanced Roleplay', 'Advanced Connectors', 'Customer', 'Assistant', 'Extended conversation about Advanced Connectors', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b882e', 'Konnektoren: trotzdem, dennoch, allerdings — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konnektoren: trotzdem, dennoch, allerdings".', 'Creative practice for Advanced Connectors', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Homework: Konnektoren: trotzdem, dennoch, allerdings', 'Complete these tasks to reinforce "Konnektoren: trotzdem, dennoch, allerdings".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b882e', 'In this lesson you learned about Advanced Connectors. You practiced vocabulary related to discourse and grammar structure present_tense.', '["Mastered vocabulary about Advanced Connectors","Applied present_tense correctly","Read and understood a text about Advanced Connectors","Practiced speaking about Advanced Connectors"]', '[{"title":"Konnektoren: trotzdem, dennoch, allerdings Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Advanced Connectors core vocabulary','discourse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Culture: Advanced Connectors in German-Speaking Countries', 'Learn how Advanced Connectors is approached in German culture.

تعلم كيف يتم التعامل مع Advanced Connectors في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Wissenschaftliche Essays schreiben (L-C1-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b882f', '00000000-0000-4000-a000-000039d10262', 'Wissenschaftliche Essays schreiben', 'Write structured academic essays.', 'Academic Essays', 'writing', '["Understand and use vocabulary related to Academic Essays","Apply present_tense correctly","Read and comprehend a text about Academic Essays","Listen and understand a dialogue about Academic Essays","Speak about Academic Essays in simple sentences","Write a short text about Academic Essays"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b882f', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b882f', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355b882f', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b882f', 'die Perspektive', 'المنظور', 'perspective', 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b882f', 'der Standpunkt', 'وجهة النظر', 'point of view', 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355b882f', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355b882f', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b882f', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b882f', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355b882f', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b882f', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b882f', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b882f', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355b882f', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355b882f', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355b882f', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355b882f', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b882f', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b882f', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b882f', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b882f', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b882f', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b882f', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355b882f', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b882f', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355b882f', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b882f', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355b882f', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355b882f', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'What does "der Diskurs" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355b882f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355b882f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355b882f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355b882f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'What is the main topic of this lesson?', '["Academic Essays","Sports","Music","Travel"]', 'Academic Essays', 1, 1),
  ('00000000-0000-4000-a000-0000355b882f', 'true_false', 'This lesson teaches vocabulary about Academic Essays.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355b882f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355b882f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355b882f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b882f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355b882f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diskurs und Argumentation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b882f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diskurs und Argumentation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355b882f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Diskurs und Argumentation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355b882f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Diskurs und Argumentation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355b882f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355b882f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355b882f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b882f', 'Wissenschaftliche Essays schreiben — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b882f', 'Wissenschaftliche Essays schreiben — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Diskurs und Argumentation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Speaking: Wissenschaftliche Essays schreiben', 'Practice talking about Academic Essays. Answer questions and have a simple conversation.', 'Academic Essays', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Writing: Wissenschaftliche Essays schreiben', 'Write a short text about Academic Essays. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882f', 'Wissenschaftliche Essays schreiben — Roleplay', 'Academic Essays', 'Student', 'Teacher', 'Practice conversation about Academic Essays', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b882f', 'Wissenschaftliche Essays schreiben — Advanced Roleplay', 'Academic Essays', 'Customer', 'Assistant', 'Extended conversation about Academic Essays', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b882f', 'Wissenschaftliche Essays schreiben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Essays schreiben".', 'Creative practice for Academic Essays', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Homework: Wissenschaftliche Essays schreiben', 'Complete these tasks to reinforce "Wissenschaftliche Essays schreiben".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b882f', 'In this lesson you learned about Academic Essays. You practiced vocabulary related to discourse and grammar structure present_tense.', '["Mastered vocabulary about Academic Essays","Applied present_tense correctly","Read and understood a text about Academic Essays","Practiced speaking about Academic Essays"]', '[{"title":"Wissenschaftliche Essays schreiben Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Academic Essays core vocabulary','discourse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Culture: Academic Essays in German-Speaking Countries', 'Learn how Academic Essays is approached in German culture.

تعلم كيف يتم التعامل مع Academic Essays في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b882f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Test: Diskurs und Argumentation (L-C1-03-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355b8830', '00000000-0000-4000-a000-000039d10262', 'Test: Diskurs und Argumentation', 'Module test on discourse and argumentation.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355b8830', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355b8830', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355b8830', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355b8830', 'die Perspektive', 'المنظور', 'perspective', 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355b8830', 'der Standpunkt', 'وجهة النظر', 'point of view', 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355b8830', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355b8830', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355b8830', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355b8830', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355b8830', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355b8830', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355b8830', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355b8830', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355b8830', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355b8830', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355b8830', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355b8830', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355b8830', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355b8830', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355b8830', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355b8830', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355b8830', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355b8830', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355b8830', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355b8830', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355b8830', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355b8830', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355b8830', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355b8830', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'What does "der Diskurs" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355b8830', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355b8830', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355b8830', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355b8830', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-0000355b8830', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355b8830', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355b8830', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355b8830', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355b8830', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355b8830', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diskurs und Argumentation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355b8830', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diskurs und Argumentation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355b8830', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Diskurs und Argumentation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355b8830', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Diskurs und Argumentation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355b8830', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355b8830', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355b8830', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355b8830', 'Test: Diskurs und Argumentation — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355b8830', 'Test: Diskurs und Argumentation — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Diskurs und Argumentation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Speaking: Test: Diskurs und Argumentation', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Writing: Test: Diskurs und Argumentation', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b8830', 'Test: Diskurs und Argumentation — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355b8830', 'Test: Diskurs und Argumentation — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355b8830', 'Test: Diskurs und Argumentation — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Diskurs und Argumentation".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Homework: Test: Diskurs und Argumentation', 'Complete these tasks to reinforce "Test: Diskurs und Argumentation".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355b8830', 'In this lesson you learned about Module Test. You practiced vocabulary related to discourse and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Diskurs und Argumentation Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','discourse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355b8830', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 4: Fachsprachen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10263', 'C1', 'Fachsprachen', 'Explore specialized languages: legal, medical, technical, and business German.', '["Understand legal German","Use medical terminology","Read technical documentation","Understand business reports","Adapt language to professional context"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Rechtssprache (L-C1-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355bfc8c', '00000000-0000-4000-a000-000039d10263', 'Rechtssprache', 'Learn legal terminology and text types.', 'Legal German', 'vocabulary', '["Understand and use vocabulary related to Legal German","Apply present_tense correctly","Read and comprehend a text about Legal German","Listen and understand a dialogue about Legal German","Speak about Legal German in simple sentences","Write a short text about Legal German"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355bfc8c', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355bfc8c', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355bfc8c', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355bfc8c', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8c', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8c', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355bfc8c', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355bfc8c', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'What is the main topic of this lesson?', '["Legal German","Sports","Music","Travel"]', 'Legal German', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8c', 'true_false', 'This lesson teaches vocabulary about Legal German.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8c', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355bfc8c', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355bfc8c', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355bfc8c', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355bfc8c', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Fachsprachen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Fachsprachen', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Fachsprachen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Fachsprachen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355bfc8c', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Rechtssprache — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Rechtssprache — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Fachsprachen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Speaking: Rechtssprache', 'Practice talking about Legal German. Answer questions and have a simple conversation.', 'Legal German', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Writing: Rechtssprache', 'Write a short text about Legal German. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Rechtssprache — Roleplay', 'Legal German', 'Student', 'Teacher', 'Practice conversation about Legal German', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Rechtssprache — Advanced Roleplay', 'Legal German', 'Customer', 'Assistant', 'Extended conversation about Legal German', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Rechtssprache — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Rechtssprache".', 'Creative practice for Legal German', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Homework: Rechtssprache', 'Complete these tasks to reinforce "Rechtssprache".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'In this lesson you learned about Legal German. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Legal German","Applied present_tense correctly","Read and understood a text about Legal German","Practiced speaking about Legal German"]', '[{"title":"Rechtssprache Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Legal German core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Culture: Legal German in German-Speaking Countries', 'Learn how Legal German is approached in German culture.

تعلم كيف يتم التعامل مع Legal German في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Medizinische Fachsprache (L-C1-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355bfc8d', '00000000-0000-4000-a000-000039d10263', 'Medizinische Fachsprache', 'Learn medical terminology and doctor-patient communication.', 'Medical German', 'vocabulary', '["Understand and use vocabulary related to Medical German","Apply present_tense correctly","Read and comprehend a text about Medical German","Listen and understand a dialogue about Medical German","Speak about Medical German in simple sentences","Write a short text about Medical German"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355bfc8d', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355bfc8d', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355bfc8d', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355bfc8d', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355bfc8d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355bfc8d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'What is the main topic of this lesson?', '["Medical German","Sports","Music","Travel"]', 'Medical German', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8d', 'true_false', 'This lesson teaches vocabulary about Medical German.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355bfc8d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355bfc8d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355bfc8d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355bfc8d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Fachsprachen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Fachsprachen', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Fachsprachen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Fachsprachen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355bfc8d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Medizinische Fachsprache — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Medizinische Fachsprache — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Fachsprachen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Speaking: Medizinische Fachsprache', 'Practice talking about Medical German. Answer questions and have a simple conversation.', 'Medical German', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Writing: Medizinische Fachsprache', 'Write a short text about Medical German. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Medizinische Fachsprache — Roleplay', 'Medical German', 'Student', 'Teacher', 'Practice conversation about Medical German', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Medizinische Fachsprache — Advanced Roleplay', 'Medical German', 'Customer', 'Assistant', 'Extended conversation about Medical German', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Medizinische Fachsprache — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Medizinische Fachsprache".', 'Creative practice for Medical German', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Homework: Medizinische Fachsprache', 'Complete these tasks to reinforce "Medizinische Fachsprache".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'In this lesson you learned about Medical German. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Medical German","Applied present_tense correctly","Read and understood a text about Medical German","Practiced speaking about Medical German"]', '[{"title":"Medizinische Fachsprache Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Medical German core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Culture: Medical German in German-Speaking Countries', 'Learn how Medical German is approached in German culture.

تعلم كيف يتم التعامل مع Medical German في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Test: Fachsprachen (L-C1-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355bfc8e', '00000000-0000-4000-a000-000039d10263', 'Test: Fachsprachen', 'Module test on specialized languages.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 45, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 1),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 2),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 5),
  ('00000000-0000-4000-a000-0000355bfc8e', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 6),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 7),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 8),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 19),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355bfc8e', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 23),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 25),
  ('00000000-0000-4000-a000-0000355bfc8e', 'das Pathos', 'العاطفة البلاغية', 'pathos', 'das', NULL, 'noun', 'Pathos appelliert an die Emotionen.', 'Pathos appeals to emotions.', 'C2', 26),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Ironie', 'السخرية', 'irony', 'die', NULL, 'noun', 'Die Ironie in seiner Aussage war deutlich.', 'The irony in his statement was clear.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 29),
  ('00000000-0000-4000-a000-0000355bfc8e', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'What does "die Forschung" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355bfc8e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355bfc8e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-0000355bfc8e', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355bfc8e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355bfc8e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355bfc8e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355bfc8e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355bfc8e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Fachsprachen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Fachsprachen', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Fachsprachen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Fachsprachen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355bfc8e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Test: Fachsprachen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Test: Fachsprachen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Fachsprachen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Speaking: Test: Fachsprachen', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Writing: Test: Fachsprachen', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Forschung','die Analyse','die Methode']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Test: Fachsprachen — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Test: Fachsprachen — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Forschung','die Analyse','die Methode','die These','die Publikation','der Diskurs','die Hypothese','die Empirie']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Test: Fachsprachen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Fachsprachen".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Homework: Test: Fachsprachen', 'Complete these tasks to reinforce "Test: Fachsprachen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'In this lesson you learned about Module Test. You practiced vocabulary related to academic and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Fachsprachen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','academic key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355bfc8e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 5: Kultur, Identität und Migration
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10264', 'C1', 'Kultur, Identität und Migration', 'Discuss complex cultural topics: identity, migration, and integration.', '["Discuss migration and integration","Analyze cultural identity","Use evaluative language","Write analytical essays","Present complex topics"]', 5, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Migration und Integration (L-C1-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355c70eb', '00000000-0000-4000-a000-000039d10264', 'Migration und Integration', 'Discuss migration policy and integration.', 'Migration & Integration', 'vocabulary', '["Understand and use vocabulary related to Migration & Integration","Apply present_tense correctly","Read and comprehend a text about Migration & Integration","Listen and understand a dialogue about Migration & Integration","Speak about Migration & Integration in simple sentences","Write a short text about Migration & Integration"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-0000355c70eb', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Gleichberechtigung', 'المساواة', 'equality', 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Verantwortung', 'المسؤولية', 'responsibility', 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 11),
  ('00000000-0000-4000-a000-0000355c70eb', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355c70eb', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 18),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 27),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355c70eb', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'What does "die Gesellschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355c70eb', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355c70eb', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355c70eb', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355c70eb', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'What is the main topic of this lesson?', '["Migration & Integration","Sports","Music","Travel"]', 'Migration & Integration', 1, 1),
  ('00000000-0000-4000-a000-0000355c70eb', 'true_false', 'This lesson teaches vocabulary about Migration & Integration.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355c70eb', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355c70eb', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355c70eb', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355c70eb', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355c70eb', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kultur, Identität und Migration', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355c70eb', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kultur, Identität und Migration', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355c70eb', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kultur, Identität und Migration', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355c70eb', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kultur, Identität und Migration', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355c70eb', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355c70eb', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355c70eb', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Migration und Integration — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Migration und Integration — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kultur, Identität und Migration');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Speaking: Migration und Integration', 'Practice talking about Migration & Integration. Answer questions and have a simple conversation.', 'Migration & Integration', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Writing: Migration und Integration', 'Write a short text about Migration & Integration. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Gesellschaft','die Politik','die Integration']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Migration und Integration — Roleplay', 'Migration & Integration', 'Student', 'Teacher', 'Practice conversation about Migration & Integration', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Migration und Integration — Advanced Roleplay', 'Migration & Integration', 'Customer', 'Assistant', 'Extended conversation about Migration & Integration', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Migration und Integration — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Migration und Integration".', 'Creative practice for Migration & Integration', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Homework: Migration und Integration', 'Complete these tasks to reinforce "Migration und Integration".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355c70eb', 'In this lesson you learned about Migration & Integration. You practiced vocabulary related to society and grammar structure present_tense.', '["Mastered vocabulary about Migration & Integration","Applied present_tense correctly","Read and understood a text about Migration & Integration","Practiced speaking about Migration & Integration"]', '[{"title":"Migration und Integration Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Migration & Integration core vocabulary','society key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Culture: Migration & Integration in German-Speaking Countries', 'Learn how Migration & Integration is approached in German culture.

تعلم كيف يتم التعامل مع Migration & Integration في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70eb', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Kulturelle Identität (L-C1-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355c70ec', '00000000-0000-4000-a000-000039d10264', 'Kulturelle Identität', 'Explore concepts of cultural identity.', 'Cultural Identity', 'reading', '["Understand and use vocabulary related to Cultural Identity","Apply present_tense correctly","Read and comprehend a text about Cultural Identity","Listen and understand a dialogue about Cultural Identity","Speak about Cultural Identity in simple sentences","Write a short text about Cultural Identity"]', 55, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-0000355c70ec', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Gleichberechtigung', 'المساواة', 'equality', 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Verantwortung', 'المسؤولية', 'responsibility', 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 11),
  ('00000000-0000-4000-a000-0000355c70ec', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355c70ec', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 18),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 27),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355c70ec', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'What does "die Gesellschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355c70ec', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355c70ec', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355c70ec', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355c70ec', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'What is the main topic of this lesson?', '["Cultural Identity","Sports","Music","Travel"]', 'Cultural Identity', 1, 1),
  ('00000000-0000-4000-a000-0000355c70ec', 'true_false', 'This lesson teaches vocabulary about Cultural Identity.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355c70ec', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355c70ec', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355c70ec', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355c70ec', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355c70ec', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kultur, Identität und Migration', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355c70ec', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kultur, Identität und Migration', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355c70ec', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kultur, Identität und Migration', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355c70ec', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kultur, Identität und Migration', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355c70ec', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355c70ec', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355c70ec', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Kulturelle Identität — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Kulturelle Identität — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kultur, Identität und Migration');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Speaking: Kulturelle Identität', 'Practice talking about Cultural Identity. Answer questions and have a simple conversation.', 'Cultural Identity', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Writing: Kulturelle Identität', 'Write a short text about Cultural Identity. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Gesellschaft','die Politik','die Integration']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Kulturelle Identität — Roleplay', 'Cultural Identity', 'Student', 'Teacher', 'Practice conversation about Cultural Identity', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Kulturelle Identität — Advanced Roleplay', 'Cultural Identity', 'Customer', 'Assistant', 'Extended conversation about Cultural Identity', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Kulturelle Identität — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kulturelle Identität".', 'Creative practice for Cultural Identity', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Homework: Kulturelle Identität', 'Complete these tasks to reinforce "Kulturelle Identität".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355c70ec', 'In this lesson you learned about Cultural Identity. You practiced vocabulary related to society and grammar structure present_tense.', '["Mastered vocabulary about Cultural Identity","Applied present_tense correctly","Read and understood a text about Cultural Identity","Practiced speaking about Cultural Identity"]', '[{"title":"Kulturelle Identität Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Cultural Identity core vocabulary','society key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Culture: Cultural Identity in German-Speaking Countries', 'Learn how Cultural Identity is approached in German culture.

تعلم كيف يتم التعامل مع Cultural Identity في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ec', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Test: Kultur und Identität (L-C1-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355c70ed', '00000000-0000-4000-a000-000039d10264', 'Test: Kultur und Identität', 'Module test on culture and identity.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 45, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'die Gesellschaft', 'المجتمع', 'society', 'die', NULL, 'noun', 'Die Gesellschaft verändert sich.', 'Society is changing.', 'B1', 1),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Politik', 'السياسة', 'politics', 'die', NULL, 'noun', 'Politik ist ein wichtiges Thema.', 'Politics is an important topic.', 'B1', 2),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Integration', 'الاندماج', 'integration', 'die', NULL, 'noun', 'Integration ist wichtig.', 'Integration is important.', 'B1', 3),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Kultur', 'الثقافة', 'culture', 'die', NULL, 'noun', 'Die deutsche Kultur ist vielfältig.', 'German culture is diverse.', 'A2', 4),
  ('00000000-0000-4000-a000-0000355c70ed', 'der Bürger', 'المواطن', 'citizen', 'der', 'die Bürger', 'noun', 'Die Bürger wählen.', 'The citizens vote.', 'B1', 5),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Freiheit', 'الحرية', 'freedom', 'die', NULL, 'noun', 'Freiheit ist ein Grundrecht.', 'Freedom is a basic right.', 'B1', 6),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Gleichberechtigung', 'المساواة', 'equality', 'die', NULL, 'noun', 'Gleichberechtigung für alle.', 'Equality for all.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Verantwortung', 'المسؤولية', 'responsibility', 'die', NULL, 'noun', 'Das ist deine Verantwortung.', 'That is your responsibility.', 'B1', 8),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 10),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 11),
  ('00000000-0000-4000-a000-0000355c70ed', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355c70ed', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der akademische Diskurs ist vielschichtig.', 'The academic discourse is multilayered.', 'C1', 14),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 15),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 17),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 18),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 24),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 27),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 28),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355c70ed', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'What does "die Gesellschaft" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355c70ed', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355c70ed', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355c70ed', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355c70ed', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-0000355c70ed', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355c70ed', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355c70ed', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355c70ed', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355c70ed', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355c70ed', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kultur, Identität und Migration', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355c70ed', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kultur, Identität und Migration', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355c70ed', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kultur, Identität und Migration', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355c70ed', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kultur, Identität und Migration', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355c70ed', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355c70ed', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355c70ed', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Test: Kultur und Identität — Leseübung', 'Die deutsche Gesellschaft ist vielfältig und multikulturell. In den großen Städten wie Berlin, München oder Hamburg leben Menschen aus über 190 Nationen zusammen. Integration ist ein wichtiges Thema. Viele Menschen mit Migrationshintergrund haben sich erfolgreich integriert und tragen zur Gesellschaft bei. Deutschland ist ein Einwanderungsland. Im Jahr 2023 wurden neue Einbürgerungsregeln beschlossen, die den Erwerb der deutschen Staatsbürgerschaft erleichtern sollen.', 'German society is diverse and multicultural. In big cities like Berlin, Munich or Hamburg, people from over 190 nations live together. Integration is an important topic. Many people with a migration background have successfully integrated and contribute to society. Germany is a country of immigration. In 2023, new naturalization rules were passed that aim to make it easier to acquire German citizenship.', 'المجتمع الألماني متنوع ومتعدد الثقافات. في المدن الكبيرة مثل برلين وميونخ وهامبورغ يعيش أناس من أكثر من 190 دولة معاً. الاندماج موضوع مهم. كثير من الأشخاص ذوي خلفية هجرة اندمجوا بنجاح ويساهمون في المجتمع. ألمانيا بلد هجرة. في عام 2023 تم إقرار قواعد تجنيس جديدة تهدف إلى تسهيل الحصول على الجنسية الألمانية.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Test: Kultur und Identität — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kultur, Identität und Migration');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Speaking: Test: Kultur und Identität', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Writing: Test: Kultur und Identität', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Gesellschaft','die Politik','die Integration']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Test: Kultur und Identität — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Test: Kultur und Identität — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['die Gesellschaft','die Politik','die Integration','die Kultur','der Bürger','die Freiheit','die Gleichberechtigung','die Verantwortung']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Test: Kultur und Identität — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Kultur und Identität".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Homework: Test: Kultur und Identität', 'Complete these tasks to reinforce "Test: Kultur und Identität".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355c70ed', 'In this lesson you learned about Module Test. You practiced vocabulary related to society and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Kultur und Identität Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','society key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355c70ed', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 6: Globalisierung, Zukunft und Innovation
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039d10265', 'C1', 'Globalisierung, Zukunft und Innovation', 'Discuss globalization, future trends, and innovation.', '["Analyze globalization effects","Discuss future scenarios","Use irrealis and hypothetical structures","Write policy papers","Present future scenarios"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Globalisierung (L-C1-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355ce54a', '00000000-0000-4000-a000-000039d10265', 'Globalisierung', 'Discuss globalization and its impacts.', 'Globalization', 'vocabulary', '["Understand and use vocabulary related to Globalization","Apply present_tense correctly","Read and comprehend a text about Globalization","Listen and understand a dialogue about Globalization","Speak about Globalization in simple sentences","Write a short text about Globalization"]', 55, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Perspektive', 'المنظور', 'perspective', 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355ce54a', 'der Standpunkt', 'وجهة النظر', 'point of view', 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355ce54a', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355ce54a', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355ce54a', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'What does "der Diskurs" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54a', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54a', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355ce54a', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355ce54a', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'What is the main topic of this lesson?', '["Globalization","Sports","Music","Travel"]', 'Globalization', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54a', 'true_false', 'This lesson teaches vocabulary about Globalization.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54a', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355ce54a', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355ce54a', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355ce54a', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355ce54a', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355ce54a', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Globalisierung, Zukunft und Innovation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355ce54a', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Globalisierung, Zukunft und Innovation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355ce54a', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Globalisierung, Zukunft und Innovation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355ce54a', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355ce54a', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355ce54a', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Globalisierung — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Globalisierung — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Globalisierung, Zukunft und Innovation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Speaking: Globalisierung', 'Practice talking about Globalization. Answer questions and have a simple conversation.', 'Globalization', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Writing: Globalisierung', 'Write a short text about Globalization. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Globalisierung — Roleplay', 'Globalization', 'Student', 'Teacher', 'Practice conversation about Globalization', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Globalisierung — Advanced Roleplay', 'Globalization', 'Customer', 'Assistant', 'Extended conversation about Globalization', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Globalisierung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Globalisierung".', 'Creative practice for Globalization', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Homework: Globalisierung', 'Complete these tasks to reinforce "Globalisierung".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355ce54a', 'In this lesson you learned about Globalization. You practiced vocabulary related to discourse and grammar structure present_tense.', '["Mastered vocabulary about Globalization","Applied present_tense correctly","Read and understood a text about Globalization","Practiced speaking about Globalization"]', '[{"title":"Globalisierung Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Globalization core vocabulary','discourse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Culture: Globalization in German-Speaking Countries', 'Learn how Globalization is approached in German culture.

تعلم كيف يتم التعامل مع Globalization في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54a', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Zukunftsszenarien (L-C1-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355ce54b', '00000000-0000-4000-a000-000039d10265', 'Zukunftsszenarien', 'Discuss future scenarios and predictions.', 'Future Scenarios', 'speaking', '["Understand and use vocabulary related to Future Scenarios","Apply present_tense correctly","Read and comprehend a text about Future Scenarios","Listen and understand a dialogue about Future Scenarios","Speak about Future Scenarios in simple sentences","Write a short text about Future Scenarios"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Perspektive', 'المنظور', 'perspective', 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355ce54b', 'der Standpunkt', 'وجهة النظر', 'point of view', 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355ce54b', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355ce54b', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355ce54b', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'What does "der Diskurs" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54b', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54b', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355ce54b', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355ce54b', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'What is the main topic of this lesson?', '["Future Scenarios","Sports","Music","Travel"]', 'Future Scenarios', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54b', 'true_false', 'This lesson teaches vocabulary about Future Scenarios.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54b', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355ce54b', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355ce54b', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355ce54b', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355ce54b', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355ce54b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Globalisierung, Zukunft und Innovation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355ce54b', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Globalisierung, Zukunft und Innovation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355ce54b', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Globalisierung, Zukunft und Innovation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355ce54b', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355ce54b', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355ce54b', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Zukunftsszenarien — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Zukunftsszenarien — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Globalisierung, Zukunft und Innovation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Speaking: Zukunftsszenarien', 'Practice talking about Future Scenarios. Answer questions and have a simple conversation.', 'Future Scenarios', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Writing: Zukunftsszenarien', 'Write a short text about Future Scenarios. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Zukunftsszenarien — Roleplay', 'Future Scenarios', 'Student', 'Teacher', 'Practice conversation about Future Scenarios', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Zukunftsszenarien — Advanced Roleplay', 'Future Scenarios', 'Customer', 'Assistant', 'Extended conversation about Future Scenarios', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Zukunftsszenarien — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Zukunftsszenarien".', 'Creative practice for Future Scenarios', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Homework: Zukunftsszenarien', 'Complete these tasks to reinforce "Zukunftsszenarien".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355ce54b', 'In this lesson you learned about Future Scenarios. You practiced vocabulary related to discourse and grammar structure present_tense.', '["Mastered vocabulary about Future Scenarios","Applied present_tense correctly","Read and understood a text about Future Scenarios","Practiced speaking about Future Scenarios"]', '[{"title":"Zukunftsszenarien Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Future Scenarios core vocabulary','discourse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Culture: Future Scenarios in German-Speaking Countries', 'Learn how Future Scenarios is approached in German culture.

تعلم كيف يتم التعامل مع Future Scenarios في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54b', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: C1 Abschlusstest (L-C1-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000355ce54c', '00000000-0000-4000-a000-000039d10265', 'C1 Abschlusstest', 'Comprehensive C1 level test.', 'Level Test', 'test', '["Understand and use vocabulary related to Level Test","Apply present_tense correctly","Read and comprehend a text about Level Test","Listen and understand a dialogue about Level Test","Speak about Level Test in simple sentences","Write a short text about Level Test"]', 70, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'der Diskurs', 'الخطاب', 'discourse', 'der', 'die Diskurse', 'noun', 'Der öffentliche Diskurs ist wichtig.', 'Public discourse is important.', 'C1', 1),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Argumentation', 'الجدال', 'argumentation', 'die', NULL, 'noun', 'Die Argumentation ist schlüssig.', 'The argumentation is coherent.', 'C1', 2),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Debatte', 'المناظرة', 'debate', 'die', 'die Debatten', 'noun', 'Die Debatte war kontrovers.', 'The debate was controversial.', 'B2', 3),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Kontroverse', 'الجدل', 'controversy', 'die', 'die Kontroversen', 'noun', 'Die Kontroverse dauert an.', 'The controversy continues.', 'C1', 4),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Perspektive', 'المنظور', 'perspective', 'die', 'die Perspektiven', 'noun', 'Aus meiner Perspektive ist das falsch.', 'From my perspective, that is wrong.', 'B2', 5),
  ('00000000-0000-4000-a000-0000355ce54c', 'der Standpunkt', 'وجهة النظر', 'point of view', 'der', 'die Standpunkte', 'noun', 'Das ist ein anderer Standpunkt.', 'That is a different point of view.', 'B2', 6),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Forschung', 'البحث', 'research', 'die', NULL, 'noun', 'Die Forschung ist interdisziplinär.', 'The research is interdisciplinary.', 'B2', 7),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Analyse', 'التحليل', 'analysis', 'die', 'die Analysen', 'noun', 'Die Analyse der Daten dauert lange.', 'The analysis of the data takes long.', 'B2', 8),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Methode', 'الطريقة', 'method', 'die', 'die Methoden', 'noun', 'Die Methode ist wissenschaftlich anerkannt.', 'The method is scientifically recognized.', 'B2', 9),
  ('00000000-0000-4000-a000-0000355ce54c', 'die These', 'الأطروحة', 'thesis', 'die', 'die Thesen', 'noun', 'Die These wird im Kapitel 3 diskutiert.', 'The thesis is discussed in chapter 3.', 'C1', 10),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Publikation', 'المنشور', 'publication', 'die', 'die Publikationen', 'noun', 'Die Publikation erscheint im Springer Verlag.', 'The publication appears at Springer.', 'C1', 11),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Hypothese', 'الفرضية', 'hypothesis', 'die', 'die Hypothesen', 'noun', 'Die Hypothese wurde bestätigt.', 'The hypothesis was confirmed.', 'C1', 12),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Empirie', 'التجريبية', 'empirical research', 'die', NULL, 'noun', 'Die Empirie liefert Daten.', 'Empirical research provides data.', 'C1', 13),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Studie', 'الدراسة', 'study', 'die', 'die Studien', 'noun', 'Die Studie zeigt interessante Ergebnisse.', 'The study shows interesting results.', 'B2', 14),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Daten', 'البيانات', 'data', 'die', NULL, 'noun', 'Die Daten werden ausgewertet.', 'The data is being evaluated.', 'B2', 15),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Stichprobe', 'العينة', 'sample', 'die', 'die Stichproben', 'noun', 'Die Stichprobe ist repräsentativ.', 'The sample is representative.', 'C1', 16),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Variable', 'المتغير', 'variable', 'die', 'die Variablen', 'noun', 'Die Variable beeinflusst das Ergebnis.', 'The variable influences the result.', 'C1', 17),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Korrelation', 'الارتباط', 'correlation', 'die', 'die Korrelationen', 'noun', 'Die Korrelation ist signifikant.', 'The correlation is significant.', 'C1', 18),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Linguistik', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Linguistik untersucht die menschliche Sprache.', 'Linguistics studies human language.', 'C1', 19),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Syntax', 'النحو/تركيب الجملة', 'syntax', 'die', NULL, 'noun', 'Die Syntax beschreibt die Satzstruktur.', 'Syntax describes sentence structure.', 'C1', 20),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Semantik', 'علم الدلالة', 'semantics', 'die', NULL, 'noun', 'Die Semantik befasst sich mit Bedeutung.', 'Semantics deals with meaning.', 'C1', 21),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Morphologie', 'الصرف', 'morphology', 'die', NULL, 'noun', 'Die Morphologie untersucht Wortformen.', 'Morphology examines word forms.', 'C1', 22),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Phonetik', 'علم الأصوات', 'phonetics', 'die', NULL, 'noun', 'Die Phonetik untersucht Sprachlaute.', 'Phonetics studies speech sounds.', 'C1', 23),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Pragmatik', 'البراغماتية', 'pragmatics', 'die', NULL, 'noun', 'Pragmatik untersucht Sprachgebrauch.', 'Pragmatics studies language use.', 'C2', 24),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Sprachwissenschaft', 'علم اللغة', 'linguistics', 'die', NULL, 'noun', 'Die germanistische Sprachwissenschaft ist vielfältig.', 'German linguistics is diverse.', 'C1', 25),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Rhetorik', 'البلاغة', 'rhetoric', 'die', NULL, 'noun', 'Rhetorik ist die Kunst der Rede.', 'Rhetoric is the art of speech.', 'C1', 26),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Metapher', 'الاستعارة', 'metaphor', 'die', 'die Metaphern', 'noun', 'Die Metapher ist ein Stilmittel.', 'The metaphor is a stylistic device.', 'C1', 27),
  ('00000000-0000-4000-a000-0000355ce54c', 'das Argument', 'الحجة', 'argument', 'das', 'die Argumente', 'noun', 'Das Argument ist überzeugend.', 'The argument is convincing.', 'B1', 28),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Überzeugung', 'الإقناع', 'persuasion', 'die', NULL, 'noun', 'Überzeugung ist das Ziel der Rhetorik.', 'Persuasion is the goal of rhetoric.', 'C1', 29),
  ('00000000-0000-4000-a000-0000355ce54c', 'die Rede', 'الخطاب', 'speech', 'die', 'die Reden', 'noun', 'Die Rede war bewegend.', 'The speech was moving.', 'B2', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'What does "der Diskurs" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54c', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54c', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000355ce54c', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000355ce54c', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'What is the main topic of this lesson?', '["Level Test","Sports","Music","Travel"]', 'Level Test', 1, 1),
  ('00000000-0000-4000-a000-0000355ce54c', 'true_false', 'This lesson teaches vocabulary about Level Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000355ce54c', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000355ce54c', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000355ce54c', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000355ce54c', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000355ce54c', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Globalisierung, Zukunft und Innovation', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000355ce54c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Globalisierung, Zukunft und Innovation', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000355ce54c', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Globalisierung, Zukunft und Innovation', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000355ce54c', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Globalisierung, Zukunft und Innovation', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000355ce54c', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000355ce54c', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000355ce54c', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000355ce54c', 'C1 Abschlusstest — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000355ce54c', 'C1 Abschlusstest — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Globalisierung, Zukunft und Innovation');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Speaking: C1 Abschlusstest', 'Practice talking about Level Test. Answer questions and have a simple conversation.', 'Level Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Writing: C1 Abschlusstest', 'Write a short text about Level Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Diskurs','die Argumentation','die Debatte']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54c', 'C1 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'advanced', 1, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000355ce54c', 'C1 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'advanced', 2, ARRAY['der Diskurs','die Argumentation','die Debatte','die Kontroverse','die Perspektive','der Standpunkt','die Forschung','die Analyse']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000355ce54c', 'C1 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "C1 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Homework: C1 Abschlusstest', 'Complete these tasks to reinforce "C1 Abschlusstest".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000355ce54c', 'In this lesson you learned about Level Test. You practiced vocabulary related to discourse and grammar structure present_tense.', '["Mastered vocabulary about Level Test","Applied present_tense correctly","Read and understood a text about Level Test","Practiced speaking about Level Test"]', '[{"title":"C1 Abschlusstest Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Level Test core vocabulary','discourse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Culture: Level Test in German-Speaking Countries', 'Learn how Level Test is approached in German culture.

تعلم كيف يتم التعامل مع Level Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000355ce54c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

end $$;
