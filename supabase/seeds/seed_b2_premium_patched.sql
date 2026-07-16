-- ============================================================
-- PREMIUM CONTENT SEED — Level B2
-- Generated for 72 lessons across 12 modules
-- ============================================================


INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000010', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000010', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000010', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000010', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000010', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000010', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000010', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('00000000-0000-0000-0000-000000000010', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('00000000-0000-0000-0000-000000000010', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('00000000-0000-0000-0000-000000000010', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('00000000-0000-0000-0000-000000000010', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('00000000-0000-0000-0000-000000000010', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('00000000-0000-0000-0000-000000000010', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('00000000-0000-0000-0000-000000000010', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Homework: Präsentationsstruktur und -technik', 'Complete these tasks to reinforce "Präsentationsstruktur und -technik" (Präsentationen und Vorträge).', 'vocabulary', '[{"description":"Review all vocabulary from \"Präsentationsstruktur und -technik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000010', 'In this lesson on "Präsentationsstruktur und -technik" (Präsentationen und Vorträge), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Präsentationsstruktur und -technik\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Präsentationsstruktur und -technik\""}]', ARRAY['"Präsentationsstruktur und -technik" core vocabulary', 'Präsentationen und Vorträge key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Präsentationsstruktur und -technik — Speaking 1', 'Practice the key vocabulary and phrases from "Präsentationsstruktur und -technik" aloud. Focus on correct pronunciation.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Präsentationsstruktur und -technik — Speaking 2', 'Role-play: Imagine you are in a situation related to Präsentationen und Vorträge. Have a dialogue with a partner.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Präsentationsstruktur und -technik — Writing Task 1', 'Write a short text (50-100 words) about präsentationsstruktur und -technik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Präsentationsstruktur und -technik — Conversation 1', 'Practice a realistic conversation about präsentationsstruktur und -technik in the context of Präsentationen und Vorträge.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präsentationsstruktur und -technik" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Präsentationsstruktur und -technik — Conversation 2', 'Practice a realistic conversation about präsentationsstruktur und -technik in the context of Präsentationen und Vorträge.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präsentationsstruktur und -technik" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Präsentationsstruktur und -technik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präsentationsstruktur und -technik". The dialogue should be realistic and related to Präsentationen und Vorträge.', 'Creative practice for Präsentationsstruktur und -technik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Präsentationsstruktur und -technik — Deep Understanding', 'Explain the most important concepts from "Präsentationsstruktur und -technik" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Präsentationsstruktur und -technik', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Präsentationsstruktur und -technik — Reading Practice', 'This is a B2-level reading passage about präsentationsstruktur und -technik in the context of Präsentationen und Vorträge.

Präsentationsstruktur und -technik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Präsentationen und Vorträge" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Präsentationsstruktur und -technik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Präsentationsstruktur und -technik" aus dem Modul "Präsentationen und Vorträge".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Präsentationen und Vorträge');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000011', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000011', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000011', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000011', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000011', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000011', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('00000000-0000-0000-0000-000000000011', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('00000000-0000-0000-0000-000000000011', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('00000000-0000-0000-0000-000000000011', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('00000000-0000-0000-0000-000000000011', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('00000000-0000-0000-0000-000000000011', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('00000000-0000-0000-0000-000000000011', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('00000000-0000-0000-0000-000000000011', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Homework: Büro und Arbeitsplatz', 'Complete these tasks to reinforce "Büro und Arbeitsplatz" (Berufliche Kommunikation).', 'writing', '[{"description":"Review all vocabulary from \"Büro und Arbeitsplatz\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000011', 'In this lesson on "Büro und Arbeitsplatz" (Berufliche Kommunikation), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Büro und Arbeitsplatz\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Büro und Arbeitsplatz\""}]', ARRAY['"Büro und Arbeitsplatz" core vocabulary', 'Berufliche Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Büro und Arbeitsplatz — Speaking 1', 'Practice the key vocabulary and phrases from "Büro und Arbeitsplatz" aloud. Focus on correct pronunciation.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Büro und Arbeitsplatz — Speaking 2', 'Role-play: Imagine you are in a situation related to Berufliche Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Büro und Arbeitsplatz — Writing Task 1', 'Write a short text (50-100 words) about büro und arbeitsplatz. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Büro und Arbeitsplatz — Conversation 1', 'Practice a realistic conversation about büro und arbeitsplatz in the context of Berufliche Kommunikation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Büro und Arbeitsplatz" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Büro und Arbeitsplatz — Conversation 2', 'Practice a realistic conversation about büro und arbeitsplatz in the context of Berufliche Kommunikation.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Büro und Arbeitsplatz" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Büro und Arbeitsplatz — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Büro und Arbeitsplatz". The dialogue should be realistic and related to Berufliche Kommunikation.', 'Creative practice for Büro und Arbeitsplatz', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Büro und Arbeitsplatz — Deep Understanding', 'Explain the most important concepts from "Büro und Arbeitsplatz" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Büro und Arbeitsplatz', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Büro und Arbeitsplatz — Reading Practice', 'This is a B2-level reading passage about büro und arbeitsplatz in the context of Berufliche Kommunikation.

Büro und Arbeitsplatz is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Berufliche Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Büro und Arbeitsplatz — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Büro und Arbeitsplatz" aus dem Modul "Berufliche Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Berufliche Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000012', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000012', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000012', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000012', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000012', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000012', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000012', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000012', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000012', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('00000000-0000-0000-0000-000000000012', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('00000000-0000-0000-0000-000000000012', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('00000000-0000-0000-0000-000000000012', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('00000000-0000-0000-0000-000000000012', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('00000000-0000-0000-0000-000000000012', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('00000000-0000-0000-0000-000000000012', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('00000000-0000-0000-0000-000000000012', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Homework: Debatte und Meinungsäußerung', 'Complete these tasks to reinforce "Debatte und Meinungsäußerung" (Diskussion und Argumentation).', 'speaking', '[{"description":"Review all vocabulary from \"Debatte und Meinungsäußerung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000012', 'In this lesson on "Debatte und Meinungsäußerung" (Diskussion und Argumentation), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Debatte und Meinungsäußerung\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Debatte und Meinungsäußerung\""}]', ARRAY['"Debatte und Meinungsäußerung" core vocabulary', 'Diskussion und Argumentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Debatte und Meinungsäußerung — Speaking 1', 'Practice the key vocabulary and phrases from "Debatte und Meinungsäußerung" aloud. Focus on correct pronunciation.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Debatte und Meinungsäußerung — Speaking 2', 'Role-play: Imagine you are in a situation related to Diskussion und Argumentation. Have a dialogue with a partner.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Debatte und Meinungsäußerung — Writing Task 1', 'Write a short text (50-100 words) about debatte und meinungsäußerung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Debatte und Meinungsäußerung — Conversation 1', 'Practice a realistic conversation about debatte und meinungsäußerung in the context of Diskussion und Argumentation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Debatte und Meinungsäußerung" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Debatte und Meinungsäußerung — Conversation 2', 'Practice a realistic conversation about debatte und meinungsäußerung in the context of Diskussion und Argumentation.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Debatte und Meinungsäußerung" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Debatte und Meinungsäußerung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Debatte und Meinungsäußerung". The dialogue should be realistic and related to Diskussion und Argumentation.', 'Creative practice for Debatte und Meinungsäußerung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Debatte und Meinungsäußerung — Deep Understanding', 'Explain the most important concepts from "Debatte und Meinungsäußerung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Debatte und Meinungsäußerung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Debatte und Meinungsäußerung — Reading Practice', 'This is a B2-level reading passage about debatte und meinungsäußerung in the context of Diskussion und Argumentation.

Debatte und Meinungsäußerung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diskussion und Argumentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Debatte und Meinungsäußerung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Debatte und Meinungsäußerung" aus dem Modul "Diskussion und Argumentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diskussion und Argumentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 1),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 2),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 3),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 4),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 5),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 6),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 7),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 8),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 9),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Homework: Wirtschaftsgrundlagen', 'Complete these tasks to reinforce "Wirtschaftsgrundlagen" (Wirtschaft und Politik).', 'reading', '[{"description":"Review all vocabulary from \"Wirtschaftsgrundlagen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'In this lesson on "Wirtschaftsgrundlagen" (Wirtschaft und Politik), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsgrundlagen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsgrundlagen\""}]', ARRAY['"Wirtschaftsgrundlagen" core vocabulary', 'Wirtschaft und Politik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wirtschaftsgrundlagen — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsgrundlagen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wirtschaftsgrundlagen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaft und Politik. Have a dialogue with a partner.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wirtschaftsgrundlagen — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsgrundlagen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wirtschaftsgrundlagen — Conversation 1', 'Practice a realistic conversation about wirtschaftsgrundlagen in the context of Wirtschaft und Politik.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsgrundlagen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wirtschaftsgrundlagen — Conversation 2', 'Practice a realistic conversation about wirtschaftsgrundlagen in the context of Wirtschaft und Politik.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsgrundlagen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wirtschaftsgrundlagen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsgrundlagen". The dialogue should be realistic and related to Wirtschaft und Politik.', 'Creative practice for Wirtschaftsgrundlagen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wirtschaftsgrundlagen — Deep Understanding', 'Explain the most important concepts from "Wirtschaftsgrundlagen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wirtschaftsgrundlagen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wirtschaftsgrundlagen — Reading Practice', 'This is a B2-level reading passage about wirtschaftsgrundlagen in the context of Wirtschaft und Politik.

Wirtschaftsgrundlagen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaft und Politik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wirtschaftsgrundlagen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsgrundlagen" aus dem Modul "Wirtschaft und Politik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaft und Politik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 1),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 2),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 3),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 4),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 5),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 6),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 7),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 8),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 9),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Homework: Präsentationsstruktur und -technik', 'Complete these tasks to reinforce "Präsentationsstruktur und -technik" (Präsentationen und Vorträge).', 'grammar', '[{"description":"Review all vocabulary from \"Präsentationsstruktur und -technik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'In this lesson on "Präsentationsstruktur und -technik" (Präsentationen und Vorträge), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Präsentationsstruktur und -technik\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Präsentationsstruktur und -technik\""}]', ARRAY['"Präsentationsstruktur und -technik" core vocabulary', 'Präsentationen und Vorträge key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Präsentationsstruktur und -technik — Speaking 1', 'Practice the key vocabulary and phrases from "Präsentationsstruktur und -technik" aloud. Focus on correct pronunciation.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Präsentationsstruktur und -technik — Speaking 2', 'Role-play: Imagine you are in a situation related to Präsentationen und Vorträge. Have a dialogue with a partner.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Präsentationsstruktur und -technik — Writing Task 1', 'Write a short text (50-100 words) about präsentationsstruktur und -technik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Präsentationsstruktur und -technik — Conversation 1', 'Practice a realistic conversation about präsentationsstruktur und -technik in the context of Präsentationen und Vorträge.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präsentationsstruktur und -technik" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Präsentationsstruktur und -technik — Conversation 2', 'Practice a realistic conversation about präsentationsstruktur und -technik in the context of Präsentationen und Vorträge.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präsentationsstruktur und -technik" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Präsentationsstruktur und -technik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präsentationsstruktur und -technik". The dialogue should be realistic and related to Präsentationen und Vorträge.', 'Creative practice for Präsentationsstruktur und -technik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Präsentationsstruktur und -technik — Deep Understanding', 'Explain the most important concepts from "Präsentationsstruktur und -technik" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Präsentationsstruktur und -technik', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Präsentationsstruktur und -technik — Reading Practice', 'This is a B2-level reading passage about präsentationsstruktur und -technik in the context of Präsentationen und Vorträge.

Präsentationsstruktur und -technik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Präsentationen und Vorträge" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Präsentationsstruktur und -technik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Präsentationsstruktur und -technik" aus dem Modul "Präsentationen und Vorträge".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Präsentationen und Vorträge');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 1),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 2),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 3),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 4),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 5),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 6),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 7),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 8),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 9),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Homework: Gesellschaftliche Themen', 'Complete these tasks to reinforce "Gesellschaftliche Themen" (Kultur und Gesellschaft).', 'mixed', '[{"description":"Review all vocabulary from \"Gesellschaftliche Themen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'In this lesson on "Gesellschaftliche Themen" (Kultur und Gesellschaft), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Gesellschaftliche Themen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Gesellschaftliche Themen\""}]', ARRAY['"Gesellschaftliche Themen" core vocabulary', 'Kultur und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Gesellschaftliche Themen — Speaking 1', 'Practice the key vocabulary and phrases from "Gesellschaftliche Themen" aloud. Focus on correct pronunciation.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Gesellschaftliche Themen — Speaking 2', 'Role-play: Imagine you are in a situation related to Kultur und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Gesellschaftliche Themen — Writing Task 1', 'Write a short text (50-100 words) about gesellschaftliche themen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Gesellschaftliche Themen — Conversation 1', 'Practice a realistic conversation about gesellschaftliche themen in the context of Kultur und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesellschaftliche Themen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Gesellschaftliche Themen — Conversation 2', 'Practice a realistic conversation about gesellschaftliche themen in the context of Kultur und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesellschaftliche Themen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Gesellschaftliche Themen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesellschaftliche Themen". The dialogue should be realistic and related to Kultur und Gesellschaft.', 'Creative practice for Gesellschaftliche Themen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Gesellschaftliche Themen — Deep Understanding', 'Explain the most important concepts from "Gesellschaftliche Themen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Gesellschaftliche Themen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Gesellschaftliche Themen — Reading Practice', 'This is a B2-level reading passage about gesellschaftliche themen in the context of Kultur und Gesellschaft.

Gesellschaftliche Themen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kultur und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Gesellschaftliche Themen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Gesellschaftliche Themen" aus dem Modul "Kultur und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kultur und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 1),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 2),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 3),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 4),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 5),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 6),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 7),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 8),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 9),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Homework: Wissenschaftliche Fachsprache', 'Complete these tasks to reinforce "Wissenschaftliche Fachsprache" (Fachsprache und Terminologie).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wissenschaftliche Fachsprache\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'In this lesson on "Wissenschaftliche Fachsprache" (Fachsprache und Terminologie), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Fachsprache\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Fachsprache\""}]', ARRAY['"Wissenschaftliche Fachsprache" core vocabulary', 'Fachsprache und Terminologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Fachsprache — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Fachsprache" aloud. Focus on correct pronunciation.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Fachsprache — Speaking 2', 'Role-play: Imagine you are in a situation related to Fachsprache und Terminologie. Have a dialogue with a partner.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Fachsprache — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche fachsprache. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Fachsprache — Conversation 1', 'Practice a realistic conversation about wissenschaftliche fachsprache in the context of Fachsprache und Terminologie.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Fachsprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Fachsprache — Conversation 2', 'Practice a realistic conversation about wissenschaftliche fachsprache in the context of Fachsprache und Terminologie.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Fachsprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Fachsprache — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Fachsprache". The dialogue should be realistic and related to Fachsprache und Terminologie.', 'Creative practice for Wissenschaftliche Fachsprache', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Fachsprache — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Fachsprache" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Fachsprache', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Fachsprache — Reading Practice', 'This is a B2-level reading passage about wissenschaftliche fachsprache in the context of Fachsprache und Terminologie.

Wissenschaftliche Fachsprache is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Fachsprache und Terminologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Fachsprache — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Fachsprache" aus dem Modul "Fachsprache und Terminologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Fachsprache und Terminologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 1),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 2),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 3),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 4),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 5),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 6),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 7),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 8),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 9),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Homework: Gesellschaftliche Themen', 'Complete these tasks to reinforce "Gesellschaftliche Themen" (Kultur und Gesellschaft).', 'writing', '[{"description":"Review all vocabulary from \"Gesellschaftliche Themen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'In this lesson on "Gesellschaftliche Themen" (Kultur und Gesellschaft), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Gesellschaftliche Themen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Gesellschaftliche Themen\""}]', ARRAY['"Gesellschaftliche Themen" core vocabulary', 'Kultur und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Gesellschaftliche Themen — Speaking 1', 'Practice the key vocabulary and phrases from "Gesellschaftliche Themen" aloud. Focus on correct pronunciation.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Gesellschaftliche Themen — Speaking 2', 'Role-play: Imagine you are in a situation related to Kultur und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Gesellschaftliche Themen — Writing Task 1', 'Write a short text (50-100 words) about gesellschaftliche themen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Gesellschaftliche Themen — Conversation 1', 'Practice a realistic conversation about gesellschaftliche themen in the context of Kultur und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesellschaftliche Themen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Gesellschaftliche Themen — Conversation 2', 'Practice a realistic conversation about gesellschaftliche themen in the context of Kultur und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesellschaftliche Themen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Gesellschaftliche Themen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesellschaftliche Themen". The dialogue should be realistic and related to Kultur und Gesellschaft.', 'Creative practice for Gesellschaftliche Themen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Gesellschaftliche Themen — Deep Understanding', 'Explain the most important concepts from "Gesellschaftliche Themen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Gesellschaftliche Themen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Gesellschaftliche Themen — Reading Practice', 'This is a B2-level reading passage about gesellschaftliche themen in the context of Kultur und Gesellschaft.

Gesellschaftliche Themen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kultur und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Gesellschaftliche Themen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Gesellschaftliche Themen" aus dem Modul "Kultur und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kultur und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 1),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 2),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 3),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 4),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 5),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 6),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 7),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 8),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 9),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Homework: Wissenschaftliche Fachsprache', 'Complete these tasks to reinforce "Wissenschaftliche Fachsprache" (Fachsprache und Terminologie).', 'speaking', '[{"description":"Review all vocabulary from \"Wissenschaftliche Fachsprache\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'In this lesson on "Wissenschaftliche Fachsprache" (Fachsprache und Terminologie), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Fachsprache\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Fachsprache\""}]', ARRAY['"Wissenschaftliche Fachsprache" core vocabulary', 'Fachsprache und Terminologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wissenschaftliche Fachsprache — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Fachsprache" aloud. Focus on correct pronunciation.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wissenschaftliche Fachsprache — Speaking 2', 'Role-play: Imagine you are in a situation related to Fachsprache und Terminologie. Have a dialogue with a partner.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wissenschaftliche Fachsprache — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche fachsprache. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wissenschaftliche Fachsprache — Conversation 1', 'Practice a realistic conversation about wissenschaftliche fachsprache in the context of Fachsprache und Terminologie.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Fachsprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wissenschaftliche Fachsprache — Conversation 2', 'Practice a realistic conversation about wissenschaftliche fachsprache in the context of Fachsprache und Terminologie.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Fachsprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wissenschaftliche Fachsprache — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Fachsprache". The dialogue should be realistic and related to Fachsprache und Terminologie.', 'Creative practice for Wissenschaftliche Fachsprache', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wissenschaftliche Fachsprache — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Fachsprache" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Fachsprache', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wissenschaftliche Fachsprache — Reading Practice', 'This is a B2-level reading passage about wissenschaftliche fachsprache in the context of Fachsprache und Terminologie.

Wissenschaftliche Fachsprache is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Fachsprache und Terminologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wissenschaftliche Fachsprache — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Fachsprache" aus dem Modul "Fachsprache und Terminologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Fachsprache und Terminologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 1),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 2),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 3),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 4),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 5),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 6),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 7),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 8),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 9),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Homework: Wirtschaftsgrundlagen', 'Complete these tasks to reinforce "Wirtschaftsgrundlagen" (Wirtschaft und Politik).', 'reading', '[{"description":"Review all vocabulary from \"Wirtschaftsgrundlagen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'In this lesson on "Wirtschaftsgrundlagen" (Wirtschaft und Politik), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsgrundlagen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsgrundlagen\""}]', ARRAY['"Wirtschaftsgrundlagen" core vocabulary', 'Wirtschaft und Politik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wirtschaftsgrundlagen — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsgrundlagen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wirtschaftsgrundlagen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaft und Politik. Have a dialogue with a partner.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wirtschaftsgrundlagen — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsgrundlagen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wirtschaftsgrundlagen — Conversation 1', 'Practice a realistic conversation about wirtschaftsgrundlagen in the context of Wirtschaft und Politik.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsgrundlagen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wirtschaftsgrundlagen — Conversation 2', 'Practice a realistic conversation about wirtschaftsgrundlagen in the context of Wirtschaft und Politik.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsgrundlagen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wirtschaftsgrundlagen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsgrundlagen". The dialogue should be realistic and related to Wirtschaft und Politik.', 'Creative practice for Wirtschaftsgrundlagen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wirtschaftsgrundlagen — Deep Understanding', 'Explain the most important concepts from "Wirtschaftsgrundlagen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wirtschaftsgrundlagen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wirtschaftsgrundlagen — Reading Practice', 'This is a B2-level reading passage about wirtschaftsgrundlagen in the context of Wirtschaft und Politik.

Wirtschaftsgrundlagen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaft und Politik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wirtschaftsgrundlagen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsgrundlagen" aus dem Modul "Wirtschaft und Politik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaft und Politik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 1),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 2),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 3),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 4),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 5),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 6),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 7),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 8),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 9),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Homework: Debatte und Meinungsäußerung', 'Complete these tasks to reinforce "Debatte und Meinungsäußerung" (Diskussion und Argumentation).', 'grammar', '[{"description":"Review all vocabulary from \"Debatte und Meinungsäußerung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'In this lesson on "Debatte und Meinungsäußerung" (Diskussion und Argumentation), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Debatte und Meinungsäußerung\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Debatte und Meinungsäußerung\""}]', ARRAY['"Debatte und Meinungsäußerung" core vocabulary', 'Diskussion und Argumentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Debatte und Meinungsäußerung — Speaking 1', 'Practice the key vocabulary and phrases from "Debatte und Meinungsäußerung" aloud. Focus on correct pronunciation.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Debatte und Meinungsäußerung — Speaking 2', 'Role-play: Imagine you are in a situation related to Diskussion und Argumentation. Have a dialogue with a partner.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Debatte und Meinungsäußerung — Writing Task 1', 'Write a short text (50-100 words) about debatte und meinungsäußerung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Debatte und Meinungsäußerung — Conversation 1', 'Practice a realistic conversation about debatte und meinungsäußerung in the context of Diskussion und Argumentation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Debatte und Meinungsäußerung" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Debatte und Meinungsäußerung — Conversation 2', 'Practice a realistic conversation about debatte und meinungsäußerung in the context of Diskussion und Argumentation.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Debatte und Meinungsäußerung" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Debatte und Meinungsäußerung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Debatte und Meinungsäußerung". The dialogue should be realistic and related to Diskussion und Argumentation.', 'Creative practice for Debatte und Meinungsäußerung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Debatte und Meinungsäußerung — Deep Understanding', 'Explain the most important concepts from "Debatte und Meinungsäußerung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Debatte und Meinungsäußerung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Debatte und Meinungsäußerung — Reading Practice', 'This is a B2-level reading passage about debatte und meinungsäußerung in the context of Diskussion und Argumentation.

Debatte und Meinungsäußerung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diskussion und Argumentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Debatte und Meinungsäußerung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Debatte und Meinungsäußerung" aus dem Modul "Diskussion und Argumentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diskussion und Argumentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Homework: Büro und Arbeitsplatz', 'Complete these tasks to reinforce "Büro und Arbeitsplatz" (Berufliche Kommunikation).', 'mixed', '[{"description":"Review all vocabulary from \"Büro und Arbeitsplatz\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'In this lesson on "Büro und Arbeitsplatz" (Berufliche Kommunikation), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Büro und Arbeitsplatz\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Büro und Arbeitsplatz\""}]', ARRAY['"Büro und Arbeitsplatz" core vocabulary', 'Berufliche Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Büro und Arbeitsplatz — Speaking 1', 'Practice the key vocabulary and phrases from "Büro und Arbeitsplatz" aloud. Focus on correct pronunciation.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Büro und Arbeitsplatz — Speaking 2', 'Role-play: Imagine you are in a situation related to Berufliche Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Büro und Arbeitsplatz — Writing Task 1', 'Write a short text (50-100 words) about büro und arbeitsplatz. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Büro und Arbeitsplatz — Conversation 1', 'Practice a realistic conversation about büro und arbeitsplatz in the context of Berufliche Kommunikation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Büro und Arbeitsplatz" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Büro und Arbeitsplatz — Conversation 2', 'Practice a realistic conversation about büro und arbeitsplatz in the context of Berufliche Kommunikation.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Büro und Arbeitsplatz" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Büro und Arbeitsplatz — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Büro und Arbeitsplatz". The dialogue should be realistic and related to Berufliche Kommunikation.', 'Creative practice for Büro und Arbeitsplatz', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Büro und Arbeitsplatz — Deep Understanding', 'Explain the most important concepts from "Büro und Arbeitsplatz" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Büro und Arbeitsplatz', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Büro und Arbeitsplatz — Reading Practice', 'This is a B2-level reading passage about büro und arbeitsplatz in the context of Berufliche Kommunikation.

Büro und Arbeitsplatz is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Berufliche Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Büro und Arbeitsplatz — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Büro und Arbeitsplatz" aus dem Modul "Berufliche Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Berufliche Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 1),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 2),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 3),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 4),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 5),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 6),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 7),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 8),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 9),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Homework: Politisches System und Prozesse', 'Complete these tasks to reinforce "Politisches System und Prozesse" (Wirtschaft und Politik).', 'vocabulary', '[{"description":"Review all vocabulary from \"Politisches System und Prozesse\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'In this lesson on "Politisches System und Prozesse" (Wirtschaft und Politik), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politisches System und Prozesse\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politisches System und Prozesse\""}]', ARRAY['"Politisches System und Prozesse" core vocabulary', 'Wirtschaft und Politik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politisches System und Prozesse — Speaking 1', 'Practice the key vocabulary and phrases from "Politisches System und Prozesse" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politisches System und Prozesse — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaft und Politik. Have a dialogue with a partner.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politisches System und Prozesse — Writing Task 1', 'Write a short text (50-100 words) about politisches system und prozesse. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politisches System und Prozesse — Conversation 1', 'Practice a realistic conversation about politisches system und prozesse in the context of Wirtschaft und Politik.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politisches System und Prozesse" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politisches System und Prozesse — Conversation 2', 'Practice a realistic conversation about politisches system und prozesse in the context of Wirtschaft und Politik.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politisches System und Prozesse" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politisches System und Prozesse — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politisches System und Prozesse". The dialogue should be realistic and related to Wirtschaft und Politik.', 'Creative practice for Politisches System und Prozesse', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politisches System und Prozesse — Deep Understanding', 'Explain the most important concepts from "Politisches System und Prozesse" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Politisches System und Prozesse', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politisches System und Prozesse — Reading Practice', 'This is a B2-level reading passage about politisches system und prozesse in the context of Wirtschaft und Politik.

Politisches System und Prozesse is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaft und Politik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politisches System und Prozesse — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politisches System und Prozesse" aus dem Modul "Wirtschaft und Politik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaft und Politik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Homework: Geschäftskorrespondenz', 'Complete these tasks to reinforce "Geschäftskorrespondenz" (Berufliche Kommunikation).', 'writing', '[{"description":"Review all vocabulary from \"Geschäftskorrespondenz\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'In this lesson on "Geschäftskorrespondenz" (Berufliche Kommunikation), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Geschäftskorrespondenz\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Geschäftskorrespondenz\""}]', ARRAY['"Geschäftskorrespondenz" core vocabulary', 'Berufliche Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Geschäftskorrespondenz — Speaking 1', 'Practice the key vocabulary and phrases from "Geschäftskorrespondenz" aloud. Focus on correct pronunciation.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Geschäftskorrespondenz — Speaking 2', 'Role-play: Imagine you are in a situation related to Berufliche Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Geschäftskorrespondenz — Writing Task 1', 'Write a short text (50-100 words) about geschäftskorrespondenz. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Geschäftskorrespondenz — Conversation 1', 'Practice a realistic conversation about geschäftskorrespondenz in the context of Berufliche Kommunikation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Geschäftskorrespondenz" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Geschäftskorrespondenz — Conversation 2', 'Practice a realistic conversation about geschäftskorrespondenz in the context of Berufliche Kommunikation.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Geschäftskorrespondenz" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Geschäftskorrespondenz — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Geschäftskorrespondenz". The dialogue should be realistic and related to Berufliche Kommunikation.', 'Creative practice for Geschäftskorrespondenz', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Geschäftskorrespondenz — Deep Understanding', 'Explain the most important concepts from "Geschäftskorrespondenz" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Geschäftskorrespondenz', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Geschäftskorrespondenz — Reading Practice', 'This is a B2-level reading passage about geschäftskorrespondenz in the context of Berufliche Kommunikation.

Geschäftskorrespondenz is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Berufliche Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Geschäftskorrespondenz — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Geschäftskorrespondenz" aus dem Modul "Berufliche Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Berufliche Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 1),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 2),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 3),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 4),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 5),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 6),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 7),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 8),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 9),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Homework: Visualisierung und Datenpräsentation', 'Complete these tasks to reinforce "Visualisierung und Datenpräsentation" (Präsentationen und Vorträge).', 'speaking', '[{"description":"Review all vocabulary from \"Visualisierung und Datenpräsentation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'In this lesson on "Visualisierung und Datenpräsentation" (Präsentationen und Vorträge), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Visualisierung und Datenpräsentation\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Visualisierung und Datenpräsentation\""}]', ARRAY['"Visualisierung und Datenpräsentation" core vocabulary', 'Präsentationen und Vorträge key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Visualisierung und Datenpräsentation — Speaking 1', 'Practice the key vocabulary and phrases from "Visualisierung und Datenpräsentation" aloud. Focus on correct pronunciation.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Visualisierung und Datenpräsentation — Speaking 2', 'Role-play: Imagine you are in a situation related to Präsentationen und Vorträge. Have a dialogue with a partner.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Visualisierung und Datenpräsentation — Writing Task 1', 'Write a short text (50-100 words) about visualisierung und datenpräsentation. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Visualisierung und Datenpräsentation — Conversation 1', 'Practice a realistic conversation about visualisierung und datenpräsentation in the context of Präsentationen und Vorträge.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Visualisierung und Datenpräsentation" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Visualisierung und Datenpräsentation — Conversation 2', 'Practice a realistic conversation about visualisierung und datenpräsentation in the context of Präsentationen und Vorträge.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Visualisierung und Datenpräsentation" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Visualisierung und Datenpräsentation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Visualisierung und Datenpräsentation". The dialogue should be realistic and related to Präsentationen und Vorträge.', 'Creative practice for Visualisierung und Datenpräsentation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Visualisierung und Datenpräsentation — Deep Understanding', 'Explain the most important concepts from "Visualisierung und Datenpräsentation" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Visualisierung und Datenpräsentation', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Visualisierung und Datenpräsentation — Reading Practice', 'This is a B2-level reading passage about visualisierung und datenpräsentation in the context of Präsentationen und Vorträge.

Visualisierung und Datenpräsentation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Präsentationen und Vorträge" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Visualisierung und Datenpräsentation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Visualisierung und Datenpräsentation" aus dem Modul "Präsentationen und Vorträge".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Präsentationen und Vorträge');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 1),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 2),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 3),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 4),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 5),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 6),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 7),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 8),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 9),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Homework: Wunschvorstellungen und Zukunftspläne', 'Complete these tasks to reinforce "Wunschvorstellungen und Zukunftspläne" (Diskussion und Argumentation).', 'reading', '[{"description":"Review all vocabulary from \"Wunschvorstellungen und Zukunftspläne\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'In this lesson on "Wunschvorstellungen und Zukunftspläne" (Diskussion und Argumentation), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wunschvorstellungen und Zukunftspläne\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wunschvorstellungen und Zukunftspläne\""}]', ARRAY['"Wunschvorstellungen und Zukunftspläne" core vocabulary', 'Diskussion und Argumentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wunschvorstellungen und Zukunftspläne — Speaking 1', 'Practice the key vocabulary and phrases from "Wunschvorstellungen und Zukunftspläne" aloud. Focus on correct pronunciation.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wunschvorstellungen und Zukunftspläne — Speaking 2', 'Role-play: Imagine you are in a situation related to Diskussion und Argumentation. Have a dialogue with a partner.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wunschvorstellungen und Zukunftspläne — Writing Task 1', 'Write a short text (50-100 words) about wunschvorstellungen und zukunftspläne. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wunschvorstellungen und Zukunftspläne — Conversation 1', 'Practice a realistic conversation about wunschvorstellungen und zukunftspläne in the context of Diskussion und Argumentation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wunschvorstellungen und Zukunftspläne" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wunschvorstellungen und Zukunftspläne — Conversation 2', 'Practice a realistic conversation about wunschvorstellungen und zukunftspläne in the context of Diskussion und Argumentation.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wunschvorstellungen und Zukunftspläne" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wunschvorstellungen und Zukunftspläne — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wunschvorstellungen und Zukunftspläne". The dialogue should be realistic and related to Diskussion und Argumentation.', 'Creative practice for Wunschvorstellungen und Zukunftspläne', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wunschvorstellungen und Zukunftspläne — Deep Understanding', 'Explain the most important concepts from "Wunschvorstellungen und Zukunftspläne" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wunschvorstellungen und Zukunftspläne', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wunschvorstellungen und Zukunftspläne — Reading Practice', 'This is a B2-level reading passage about wunschvorstellungen und zukunftspläne in the context of Diskussion und Argumentation.

Wunschvorstellungen und Zukunftspläne is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diskussion und Argumentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wunschvorstellungen und Zukunftspläne — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wunschvorstellungen und Zukunftspläne" aus dem Modul "Diskussion und Argumentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diskussion und Argumentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 1),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 2),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 3),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 4),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 5),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 6),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 7),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 8),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 9),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Homework: Kulturelle Ereignisse und Traditionen', 'Complete these tasks to reinforce "Kulturelle Ereignisse und Traditionen" (Kultur und Gesellschaft).', 'grammar', '[{"description":"Review all vocabulary from \"Kulturelle Ereignisse und Traditionen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'In this lesson on "Kulturelle Ereignisse und Traditionen" (Kultur und Gesellschaft), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kulturelle Ereignisse und Traditionen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kulturelle Ereignisse und Traditionen\""}]', ARRAY['"Kulturelle Ereignisse und Traditionen" core vocabulary', 'Kultur und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kulturelle Ereignisse und Traditionen — Speaking 1', 'Practice the key vocabulary and phrases from "Kulturelle Ereignisse und Traditionen" aloud. Focus on correct pronunciation.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kulturelle Ereignisse und Traditionen — Speaking 2', 'Role-play: Imagine you are in a situation related to Kultur und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kulturelle Ereignisse und Traditionen — Writing Task 1', 'Write a short text (50-100 words) about kulturelle ereignisse und traditionen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kulturelle Ereignisse und Traditionen — Conversation 1', 'Practice a realistic conversation about kulturelle ereignisse und traditionen in the context of Kultur und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kulturelle Ereignisse und Traditionen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kulturelle Ereignisse und Traditionen — Conversation 2', 'Practice a realistic conversation about kulturelle ereignisse und traditionen in the context of Kultur und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kulturelle Ereignisse und Traditionen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kulturelle Ereignisse und Traditionen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kulturelle Ereignisse und Traditionen". The dialogue should be realistic and related to Kultur und Gesellschaft.', 'Creative practice for Kulturelle Ereignisse und Traditionen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kulturelle Ereignisse und Traditionen — Deep Understanding', 'Explain the most important concepts from "Kulturelle Ereignisse und Traditionen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kulturelle Ereignisse und Traditionen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kulturelle Ereignisse und Traditionen — Reading Practice', 'This is a B2-level reading passage about kulturelle ereignisse und traditionen in the context of Kultur und Gesellschaft.

Kulturelle Ereignisse und Traditionen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kultur und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kulturelle Ereignisse und Traditionen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kulturelle Ereignisse und Traditionen" aus dem Modul "Kultur und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kultur und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 1),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 2),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 3),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 4),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 5),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 6),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 7),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 8),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 9),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Homework: Technische Prozesse und Abläufe', 'Complete these tasks to reinforce "Technische Prozesse und Abläufe" (Fachsprache und Terminologie).', 'mixed', '[{"description":"Review all vocabulary from \"Technische Prozesse und Abläufe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'In this lesson on "Technische Prozesse und Abläufe" (Fachsprache und Terminologie), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Technische Prozesse und Abläufe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Technische Prozesse und Abläufe\""}]', ARRAY['"Technische Prozesse und Abläufe" core vocabulary', 'Fachsprache und Terminologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Technische Prozesse und Abläufe — Speaking 1', 'Practice the key vocabulary and phrases from "Technische Prozesse und Abläufe" aloud. Focus on correct pronunciation.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Technische Prozesse und Abläufe — Speaking 2', 'Role-play: Imagine you are in a situation related to Fachsprache und Terminologie. Have a dialogue with a partner.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Technische Prozesse und Abläufe — Writing Task 1', 'Write a short text (50-100 words) about technische prozesse und abläufe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Technische Prozesse und Abläufe — Conversation 1', 'Practice a realistic conversation about technische prozesse und abläufe in the context of Fachsprache und Terminologie.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Technische Prozesse und Abläufe" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Technische Prozesse und Abläufe — Conversation 2', 'Practice a realistic conversation about technische prozesse und abläufe in the context of Fachsprache und Terminologie.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Technische Prozesse und Abläufe" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Technische Prozesse und Abläufe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Technische Prozesse und Abläufe". The dialogue should be realistic and related to Fachsprache und Terminologie.', 'Creative practice for Technische Prozesse und Abläufe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Technische Prozesse und Abläufe — Deep Understanding', 'Explain the most important concepts from "Technische Prozesse und Abläufe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Technische Prozesse und Abläufe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Technische Prozesse und Abläufe — Reading Practice', 'This is a B2-level reading passage about technische prozesse und abläufe in the context of Fachsprache und Terminologie.

Technische Prozesse und Abläufe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Fachsprache und Terminologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Technische Prozesse und Abläufe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Technische Prozesse und Abläufe" aus dem Modul "Fachsprache und Terminologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Fachsprache und Terminologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Homework: Geschäftskorrespondenz', 'Complete these tasks to reinforce "Geschäftskorrespondenz" (Berufliche Kommunikation).', 'vocabulary', '[{"description":"Review all vocabulary from \"Geschäftskorrespondenz\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'In this lesson on "Geschäftskorrespondenz" (Berufliche Kommunikation), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Geschäftskorrespondenz\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Geschäftskorrespondenz\""}]', ARRAY['"Geschäftskorrespondenz" core vocabulary', 'Berufliche Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Geschäftskorrespondenz — Speaking 1', 'Practice the key vocabulary and phrases from "Geschäftskorrespondenz" aloud. Focus on correct pronunciation.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Geschäftskorrespondenz — Speaking 2', 'Role-play: Imagine you are in a situation related to Berufliche Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Geschäftskorrespondenz — Writing Task 1', 'Write a short text (50-100 words) about geschäftskorrespondenz. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Geschäftskorrespondenz — Conversation 1', 'Practice a realistic conversation about geschäftskorrespondenz in the context of Berufliche Kommunikation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Geschäftskorrespondenz" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Geschäftskorrespondenz — Conversation 2', 'Practice a realistic conversation about geschäftskorrespondenz in the context of Berufliche Kommunikation.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Geschäftskorrespondenz" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Geschäftskorrespondenz — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Geschäftskorrespondenz". The dialogue should be realistic and related to Berufliche Kommunikation.', 'Creative practice for Geschäftskorrespondenz', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Geschäftskorrespondenz — Deep Understanding', 'Explain the most important concepts from "Geschäftskorrespondenz" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Geschäftskorrespondenz', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Geschäftskorrespondenz — Reading Practice', 'This is a B2-level reading passage about geschäftskorrespondenz in the context of Berufliche Kommunikation.

Geschäftskorrespondenz is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Berufliche Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Geschäftskorrespondenz — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Geschäftskorrespondenz" aus dem Modul "Berufliche Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Berufliche Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 1),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 2),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 3),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 4),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 5),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 6),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 7),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 8),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 9),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Homework: Wunschvorstellungen und Zukunftspläne', 'Complete these tasks to reinforce "Wunschvorstellungen und Zukunftspläne" (Diskussion und Argumentation).', 'writing', '[{"description":"Review all vocabulary from \"Wunschvorstellungen und Zukunftspläne\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'In this lesson on "Wunschvorstellungen und Zukunftspläne" (Diskussion und Argumentation), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wunschvorstellungen und Zukunftspläne\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wunschvorstellungen und Zukunftspläne\""}]', ARRAY['"Wunschvorstellungen und Zukunftspläne" core vocabulary', 'Diskussion und Argumentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wunschvorstellungen und Zukunftspläne — Speaking 1', 'Practice the key vocabulary and phrases from "Wunschvorstellungen und Zukunftspläne" aloud. Focus on correct pronunciation.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wunschvorstellungen und Zukunftspläne — Speaking 2', 'Role-play: Imagine you are in a situation related to Diskussion und Argumentation. Have a dialogue with a partner.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wunschvorstellungen und Zukunftspläne — Writing Task 1', 'Write a short text (50-100 words) about wunschvorstellungen und zukunftspläne. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wunschvorstellungen und Zukunftspläne — Conversation 1', 'Practice a realistic conversation about wunschvorstellungen und zukunftspläne in the context of Diskussion und Argumentation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wunschvorstellungen und Zukunftspläne" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wunschvorstellungen und Zukunftspläne — Conversation 2', 'Practice a realistic conversation about wunschvorstellungen und zukunftspläne in the context of Diskussion und Argumentation.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wunschvorstellungen und Zukunftspläne" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wunschvorstellungen und Zukunftspläne — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wunschvorstellungen und Zukunftspläne". The dialogue should be realistic and related to Diskussion und Argumentation.', 'Creative practice for Wunschvorstellungen und Zukunftspläne', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wunschvorstellungen und Zukunftspläne — Deep Understanding', 'Explain the most important concepts from "Wunschvorstellungen und Zukunftspläne" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wunschvorstellungen und Zukunftspläne', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wunschvorstellungen und Zukunftspläne — Reading Practice', 'This is a B2-level reading passage about wunschvorstellungen und zukunftspläne in the context of Diskussion und Argumentation.

Wunschvorstellungen und Zukunftspläne is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diskussion und Argumentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wunschvorstellungen und Zukunftspläne — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wunschvorstellungen und Zukunftspläne" aus dem Modul "Diskussion und Argumentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diskussion und Argumentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 1),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 2),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 3),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 4),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 5),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 6),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 7),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 8),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 9),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Homework: Kulturelle Ereignisse und Traditionen', 'Complete these tasks to reinforce "Kulturelle Ereignisse und Traditionen" (Kultur und Gesellschaft).', 'speaking', '[{"description":"Review all vocabulary from \"Kulturelle Ereignisse und Traditionen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'In this lesson on "Kulturelle Ereignisse und Traditionen" (Kultur und Gesellschaft), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kulturelle Ereignisse und Traditionen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kulturelle Ereignisse und Traditionen\""}]', ARRAY['"Kulturelle Ereignisse und Traditionen" core vocabulary', 'Kultur und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Kulturelle Ereignisse und Traditionen — Speaking 1', 'Practice the key vocabulary and phrases from "Kulturelle Ereignisse und Traditionen" aloud. Focus on correct pronunciation.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Kulturelle Ereignisse und Traditionen — Speaking 2', 'Role-play: Imagine you are in a situation related to Kultur und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Kulturelle Ereignisse und Traditionen — Writing Task 1', 'Write a short text (50-100 words) about kulturelle ereignisse und traditionen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Kulturelle Ereignisse und Traditionen — Conversation 1', 'Practice a realistic conversation about kulturelle ereignisse und traditionen in the context of Kultur und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kulturelle Ereignisse und Traditionen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Kulturelle Ereignisse und Traditionen — Conversation 2', 'Practice a realistic conversation about kulturelle ereignisse und traditionen in the context of Kultur und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kulturelle Ereignisse und Traditionen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Kulturelle Ereignisse und Traditionen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kulturelle Ereignisse und Traditionen". The dialogue should be realistic and related to Kultur und Gesellschaft.', 'Creative practice for Kulturelle Ereignisse und Traditionen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Kulturelle Ereignisse und Traditionen — Deep Understanding', 'Explain the most important concepts from "Kulturelle Ereignisse und Traditionen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kulturelle Ereignisse und Traditionen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Kulturelle Ereignisse und Traditionen — Reading Practice', 'This is a B2-level reading passage about kulturelle ereignisse und traditionen in the context of Kultur und Gesellschaft.

Kulturelle Ereignisse und Traditionen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kultur und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Kulturelle Ereignisse und Traditionen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kulturelle Ereignisse und Traditionen" aus dem Modul "Kultur und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kultur und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 1),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 2),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 3),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 4),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 5),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 6),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 7),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 8),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 9),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Homework: Visualisierung und Datenpräsentation', 'Complete these tasks to reinforce "Visualisierung und Datenpräsentation" (Präsentationen und Vorträge).', 'reading', '[{"description":"Review all vocabulary from \"Visualisierung und Datenpräsentation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'In this lesson on "Visualisierung und Datenpräsentation" (Präsentationen und Vorträge), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Visualisierung und Datenpräsentation\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Visualisierung und Datenpräsentation\""}]', ARRAY['"Visualisierung und Datenpräsentation" core vocabulary', 'Präsentationen und Vorträge key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Visualisierung und Datenpräsentation — Speaking 1', 'Practice the key vocabulary and phrases from "Visualisierung und Datenpräsentation" aloud. Focus on correct pronunciation.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Visualisierung und Datenpräsentation — Speaking 2', 'Role-play: Imagine you are in a situation related to Präsentationen und Vorträge. Have a dialogue with a partner.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Visualisierung und Datenpräsentation — Writing Task 1', 'Write a short text (50-100 words) about visualisierung und datenpräsentation. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Visualisierung und Datenpräsentation — Conversation 1', 'Practice a realistic conversation about visualisierung und datenpräsentation in the context of Präsentationen und Vorträge.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Visualisierung und Datenpräsentation" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Visualisierung und Datenpräsentation — Conversation 2', 'Practice a realistic conversation about visualisierung und datenpräsentation in the context of Präsentationen und Vorträge.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Visualisierung und Datenpräsentation" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Visualisierung und Datenpräsentation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Visualisierung und Datenpräsentation". The dialogue should be realistic and related to Präsentationen und Vorträge.', 'Creative practice for Visualisierung und Datenpräsentation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Visualisierung und Datenpräsentation — Deep Understanding', 'Explain the most important concepts from "Visualisierung und Datenpräsentation" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Visualisierung und Datenpräsentation', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Visualisierung und Datenpräsentation — Reading Practice', 'This is a B2-level reading passage about visualisierung und datenpräsentation in the context of Präsentationen und Vorträge.

Visualisierung und Datenpräsentation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Präsentationen und Vorträge" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Visualisierung und Datenpräsentation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Visualisierung und Datenpräsentation" aus dem Modul "Präsentationen und Vorträge".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Präsentationen und Vorträge');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 1),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 2),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 3),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 4),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 5),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 6),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 7),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 8),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 9),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Homework: Politisches System und Prozesse', 'Complete these tasks to reinforce "Politisches System und Prozesse" (Wirtschaft und Politik).', 'grammar', '[{"description":"Review all vocabulary from \"Politisches System und Prozesse\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'In this lesson on "Politisches System und Prozesse" (Wirtschaft und Politik), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politisches System und Prozesse\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politisches System und Prozesse\""}]', ARRAY['"Politisches System und Prozesse" core vocabulary', 'Wirtschaft und Politik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Politisches System und Prozesse — Speaking 1', 'Practice the key vocabulary and phrases from "Politisches System und Prozesse" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Politisches System und Prozesse — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaft und Politik. Have a dialogue with a partner.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Politisches System und Prozesse — Writing Task 1', 'Write a short text (50-100 words) about politisches system und prozesse. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Politisches System und Prozesse — Conversation 1', 'Practice a realistic conversation about politisches system und prozesse in the context of Wirtschaft und Politik.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politisches System und Prozesse" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Politisches System und Prozesse — Conversation 2', 'Practice a realistic conversation about politisches system und prozesse in the context of Wirtschaft und Politik.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politisches System und Prozesse" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Politisches System und Prozesse — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politisches System und Prozesse". The dialogue should be realistic and related to Wirtschaft und Politik.', 'Creative practice for Politisches System und Prozesse', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Politisches System und Prozesse — Deep Understanding', 'Explain the most important concepts from "Politisches System und Prozesse" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Politisches System und Prozesse', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Politisches System und Prozesse — Reading Practice', 'This is a B2-level reading passage about politisches system und prozesse in the context of Wirtschaft und Politik.

Politisches System und Prozesse is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaft und Politik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Politisches System und Prozesse — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politisches System und Prozesse" aus dem Modul "Wirtschaft und Politik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaft und Politik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 1),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 2),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 3),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 4),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 5),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 6),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 7),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 8),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 9),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Homework: Technische Prozesse und Abläufe', 'Complete these tasks to reinforce "Technische Prozesse und Abläufe" (Fachsprache und Terminologie).', 'mixed', '[{"description":"Review all vocabulary from \"Technische Prozesse und Abläufe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'In this lesson on "Technische Prozesse und Abläufe" (Fachsprache und Terminologie), you learned key vocabulary concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Technische Prozesse und Abläufe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Technische Prozesse und Abläufe\""}]', ARRAY['"Technische Prozesse und Abläufe" core vocabulary', 'Fachsprache und Terminologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technische Prozesse und Abläufe — Speaking 1', 'Practice the key vocabulary and phrases from "Technische Prozesse und Abläufe" aloud. Focus on correct pronunciation.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technische Prozesse und Abläufe — Speaking 2', 'Role-play: Imagine you are in a situation related to Fachsprache und Terminologie. Have a dialogue with a partner.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technische Prozesse und Abläufe — Writing Task 1', 'Write a short text (50-100 words) about technische prozesse und abläufe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technische Prozesse und Abläufe — Conversation 1', 'Practice a realistic conversation about technische prozesse und abläufe in the context of Fachsprache und Terminologie.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Technische Prozesse und Abläufe" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technische Prozesse und Abläufe — Conversation 2', 'Practice a realistic conversation about technische prozesse und abläufe in the context of Fachsprache und Terminologie.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Technische Prozesse und Abläufe" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technische Prozesse und Abläufe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Technische Prozesse und Abläufe". The dialogue should be realistic and related to Fachsprache und Terminologie.', 'Creative practice for Technische Prozesse und Abläufe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technische Prozesse und Abläufe — Deep Understanding', 'Explain the most important concepts from "Technische Prozesse und Abläufe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Technische Prozesse und Abläufe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technische Prozesse und Abläufe — Reading Practice', 'This is a B2-level reading passage about technische prozesse und abläufe in the context of Fachsprache und Terminologie.

Technische Prozesse und Abläufe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Fachsprache und Terminologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technische Prozesse und Abläufe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Technische Prozesse und Abläufe" aus dem Modul "Fachsprache und Terminologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Fachsprache und Terminologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 5),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 6),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 7),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Homework: Grammatik: Nomen-Verb-Verbindungen und Stilebenen', 'Complete these tasks to reinforce "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" (Kultur und Gesellschaft).', 'vocabulary', '[{"description":"Review all vocabulary from \"Grammatik: Nomen-Verb-Verbindungen und Stilebenen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'In this lesson on "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" (Kultur und Gesellschaft), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Nomen-Verb-Verbindungen und Stilebenen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Nomen-Verb-Verbindungen und Stilebenen\""}]', ARRAY['"Grammatik: Nomen-Verb-Verbindungen und Stilebenen" core vocabulary', 'Kultur und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" aloud. Focus on correct pronunciation.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Speaking 2', 'Role-play: Imagine you are in a situation related to Kultur und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Writing Task 1', 'Write a short text (50-100 words) about grammatik: nomen-verb-verbindungen und stilebenen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Conversation 1', 'Practice a realistic conversation about grammatik: nomen-verb-verbindungen und stilebenen in the context of Kultur und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Nomen-Verb-Verbindungen und Stilebenen". The dialogue should be realistic and related to Kultur und Gesellschaft.', 'Creative practice for Grammatik: Nomen-Verb-Verbindungen und Stilebenen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Deep Understanding', 'Explain the most important concepts from "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Nomen-Verb-Verbindungen und Stilebenen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Reading Practice', 'This is a B2-level reading passage about grammatik: nomen-verb-verbindungen und stilebenen in the context of Kultur und Gesellschaft.

Grammatik: Nomen-Verb-Verbindungen und Stilebenen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kultur und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" aus dem Modul "Kultur und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kultur und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 1),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 2),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 3),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 4),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 5),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 6),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 7),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Homework: Grammatik: Textverknüpfung und Konnektoren', 'Complete these tasks to reinforce "Grammatik: Textverknüpfung und Konnektoren" (Präsentationen und Vorträge).', 'writing', '[{"description":"Review all vocabulary from \"Grammatik: Textverknüpfung und Konnektoren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'In this lesson on "Grammatik: Textverknüpfung und Konnektoren" (Präsentationen und Vorträge), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Textverknüpfung und Konnektoren\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Textverknüpfung und Konnektoren\""}]', ARRAY['"Grammatik: Textverknüpfung und Konnektoren" core vocabulary', 'Präsentationen und Vorträge key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Grammatik: Textverknüpfung und Konnektoren — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Textverknüpfung und Konnektoren" aloud. Focus on correct pronunciation.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Grammatik: Textverknüpfung und Konnektoren — Speaking 2', 'Role-play: Imagine you are in a situation related to Präsentationen und Vorträge. Have a dialogue with a partner.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Grammatik: Textverknüpfung und Konnektoren — Writing Task 1', 'Write a short text (50-100 words) about grammatik: textverknüpfung und konnektoren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Grammatik: Textverknüpfung und Konnektoren — Conversation 1', 'Practice a realistic conversation about grammatik: textverknüpfung und konnektoren in the context of Präsentationen und Vorträge.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Textverknüpfung und Konnektoren" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Grammatik: Textverknüpfung und Konnektoren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Textverknüpfung und Konnektoren". The dialogue should be realistic and related to Präsentationen und Vorträge.', 'Creative practice for Grammatik: Textverknüpfung und Konnektoren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Grammatik: Textverknüpfung und Konnektoren — Deep Understanding', 'Explain the most important concepts from "Grammatik: Textverknüpfung und Konnektoren" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Textverknüpfung und Konnektoren', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Grammatik: Textverknüpfung und Konnektoren — Reading Practice', 'This is a B2-level reading passage about grammatik: textverknüpfung und konnektoren in the context of Präsentationen und Vorträge.

Grammatik: Textverknüpfung und Konnektoren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Präsentationen und Vorträge" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Grammatik: Textverknüpfung und Konnektoren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Textverknüpfung und Konnektoren" aus dem Modul "Präsentationen und Vorträge".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Präsentationen und Vorträge');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 1),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 2),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 3),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 4),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 5),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 6),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 7),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Homework: Grammatik: Textverknüpfung und Konnektoren', 'Complete these tasks to reinforce "Grammatik: Textverknüpfung und Konnektoren" (Präsentationen und Vorträge).', 'speaking', '[{"description":"Review all vocabulary from \"Grammatik: Textverknüpfung und Konnektoren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'In this lesson on "Grammatik: Textverknüpfung und Konnektoren" (Präsentationen und Vorträge), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Textverknüpfung und Konnektoren\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Textverknüpfung und Konnektoren\""}]', ARRAY['"Grammatik: Textverknüpfung und Konnektoren" core vocabulary', 'Präsentationen und Vorträge key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Grammatik: Textverknüpfung und Konnektoren — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Textverknüpfung und Konnektoren" aloud. Focus on correct pronunciation.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Grammatik: Textverknüpfung und Konnektoren — Speaking 2', 'Role-play: Imagine you are in a situation related to Präsentationen und Vorträge. Have a dialogue with a partner.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Grammatik: Textverknüpfung und Konnektoren — Writing Task 1', 'Write a short text (50-100 words) about grammatik: textverknüpfung und konnektoren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Grammatik: Textverknüpfung und Konnektoren — Conversation 1', 'Practice a realistic conversation about grammatik: textverknüpfung und konnektoren in the context of Präsentationen und Vorträge.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Textverknüpfung und Konnektoren" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Grammatik: Textverknüpfung und Konnektoren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Textverknüpfung und Konnektoren". The dialogue should be realistic and related to Präsentationen und Vorträge.', 'Creative practice for Grammatik: Textverknüpfung und Konnektoren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Grammatik: Textverknüpfung und Konnektoren — Deep Understanding', 'Explain the most important concepts from "Grammatik: Textverknüpfung und Konnektoren" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Textverknüpfung und Konnektoren', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Grammatik: Textverknüpfung und Konnektoren — Reading Practice', 'This is a B2-level reading passage about grammatik: textverknüpfung und konnektoren in the context of Präsentationen und Vorträge.

Grammatik: Textverknüpfung und Konnektoren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Präsentationen und Vorträge" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Grammatik: Textverknüpfung und Konnektoren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Textverknüpfung und Konnektoren" aus dem Modul "Präsentationen und Vorträge".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Präsentationen und Vorträge');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 1),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 2),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 3),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 4),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 5),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 6),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 7),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Homework: Grammatik: Komplexe Nominalphrasen', 'Complete these tasks to reinforce "Grammatik: Komplexe Nominalphrasen" (Fachsprache und Terminologie).', 'reading', '[{"description":"Review all vocabulary from \"Grammatik: Komplexe Nominalphrasen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'In this lesson on "Grammatik: Komplexe Nominalphrasen" (Fachsprache und Terminologie), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Komplexe Nominalphrasen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Komplexe Nominalphrasen\""}]', ARRAY['"Grammatik: Komplexe Nominalphrasen" core vocabulary', 'Fachsprache und Terminologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Grammatik: Komplexe Nominalphrasen — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Komplexe Nominalphrasen" aloud. Focus on correct pronunciation.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Grammatik: Komplexe Nominalphrasen — Speaking 2', 'Role-play: Imagine you are in a situation related to Fachsprache und Terminologie. Have a dialogue with a partner.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Grammatik: Komplexe Nominalphrasen — Writing Task 1', 'Write a short text (50-100 words) about grammatik: komplexe nominalphrasen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Grammatik: Komplexe Nominalphrasen — Conversation 1', 'Practice a realistic conversation about grammatik: komplexe nominalphrasen in the context of Fachsprache und Terminologie.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Komplexe Nominalphrasen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Grammatik: Komplexe Nominalphrasen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Komplexe Nominalphrasen". The dialogue should be realistic and related to Fachsprache und Terminologie.', 'Creative practice for Grammatik: Komplexe Nominalphrasen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Grammatik: Komplexe Nominalphrasen — Deep Understanding', 'Explain the most important concepts from "Grammatik: Komplexe Nominalphrasen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Komplexe Nominalphrasen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Grammatik: Komplexe Nominalphrasen — Reading Practice', 'This is a B2-level reading passage about grammatik: komplexe nominalphrasen in the context of Fachsprache und Terminologie.

Grammatik: Komplexe Nominalphrasen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Fachsprache und Terminologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Grammatik: Komplexe Nominalphrasen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Komplexe Nominalphrasen" aus dem Modul "Fachsprache und Terminologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Fachsprache und Terminologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 1),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 2),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 3),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 4),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 5),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 6),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 7),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Homework: Grammatik: Vergleiche mit als, als ob und als wenn', 'Complete these tasks to reinforce "Grammatik: Vergleiche mit als, als ob und als wenn" (Wirtschaft und Politik).', 'grammar', '[{"description":"Review all vocabulary from \"Grammatik: Vergleiche mit als, als ob und als wenn\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'In this lesson on "Grammatik: Vergleiche mit als, als ob und als wenn" (Wirtschaft und Politik), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Vergleiche mit als, als ob und als wenn\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Vergleiche mit als, als ob und als wenn\""}]', ARRAY['"Grammatik: Vergleiche mit als, als ob und als wenn" core vocabulary', 'Wirtschaft und Politik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Grammatik: Vergleiche mit als, als ob und als wenn — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Vergleiche mit als, als ob und als wenn" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Grammatik: Vergleiche mit als, als ob und als wenn — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaft und Politik. Have a dialogue with a partner.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Grammatik: Vergleiche mit als, als ob und als wenn — Writing Task 1', 'Write a short text (50-100 words) about grammatik: vergleiche mit als, als ob und als wenn. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Grammatik: Vergleiche mit als, als ob und als wenn — Conversation 1', 'Practice a realistic conversation about grammatik: vergleiche mit als, als ob und als wenn in the context of Wirtschaft und Politik.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Vergleiche mit als, als ob und als wenn" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Grammatik: Vergleiche mit als, als ob und als wenn — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Vergleiche mit als, als ob und als wenn". The dialogue should be realistic and related to Wirtschaft und Politik.', 'Creative practice for Grammatik: Vergleiche mit als, als ob und als wenn', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Grammatik: Vergleiche mit als, als ob und als wenn — Deep Understanding', 'Explain the most important concepts from "Grammatik: Vergleiche mit als, als ob und als wenn" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Vergleiche mit als, als ob und als wenn', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Grammatik: Vergleiche mit als, als ob und als wenn — Reading Practice', 'This is a B2-level reading passage about grammatik: vergleiche mit als, als ob und als wenn in the context of Wirtschaft und Politik.

Grammatik: Vergleiche mit als, als ob und als wenn is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaft und Politik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 114, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Grammatik: Vergleiche mit als, als ob und als wenn — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Vergleiche mit als, als ob und als wenn" aus dem Modul "Wirtschaft und Politik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaft und Politik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 1),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 2),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 3),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 4),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 5),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 6),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 7),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Homework: Grammatik: Komplexe Nominalphrasen', 'Complete these tasks to reinforce "Grammatik: Komplexe Nominalphrasen" (Fachsprache und Terminologie).', 'mixed', '[{"description":"Review all vocabulary from \"Grammatik: Komplexe Nominalphrasen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'In this lesson on "Grammatik: Komplexe Nominalphrasen" (Fachsprache und Terminologie), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Komplexe Nominalphrasen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Komplexe Nominalphrasen\""}]', ARRAY['"Grammatik: Komplexe Nominalphrasen" core vocabulary', 'Fachsprache und Terminologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Grammatik: Komplexe Nominalphrasen — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Komplexe Nominalphrasen" aloud. Focus on correct pronunciation.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Grammatik: Komplexe Nominalphrasen — Speaking 2', 'Role-play: Imagine you are in a situation related to Fachsprache und Terminologie. Have a dialogue with a partner.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Grammatik: Komplexe Nominalphrasen — Writing Task 1', 'Write a short text (50-100 words) about grammatik: komplexe nominalphrasen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Grammatik: Komplexe Nominalphrasen — Conversation 1', 'Practice a realistic conversation about grammatik: komplexe nominalphrasen in the context of Fachsprache und Terminologie.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Komplexe Nominalphrasen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Grammatik: Komplexe Nominalphrasen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Komplexe Nominalphrasen". The dialogue should be realistic and related to Fachsprache und Terminologie.', 'Creative practice for Grammatik: Komplexe Nominalphrasen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Grammatik: Komplexe Nominalphrasen — Deep Understanding', 'Explain the most important concepts from "Grammatik: Komplexe Nominalphrasen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Komplexe Nominalphrasen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Grammatik: Komplexe Nominalphrasen — Reading Practice', 'This is a B2-level reading passage about grammatik: komplexe nominalphrasen in the context of Fachsprache und Terminologie.

Grammatik: Komplexe Nominalphrasen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Fachsprache und Terminologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Grammatik: Komplexe Nominalphrasen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Komplexe Nominalphrasen" aus dem Modul "Fachsprache und Terminologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Fachsprache und Terminologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Homework: Grammatik: Konnektoren und Satzverbindungen', 'Complete these tasks to reinforce "Grammatik: Konnektoren und Satzverbindungen" (Berufliche Kommunikation).', 'vocabulary', '[{"description":"Review all vocabulary from \"Grammatik: Konnektoren und Satzverbindungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'In this lesson on "Grammatik: Konnektoren und Satzverbindungen" (Berufliche Kommunikation), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Konnektoren und Satzverbindungen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Konnektoren und Satzverbindungen\""}]', ARRAY['"Grammatik: Konnektoren und Satzverbindungen" core vocabulary', 'Berufliche Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Grammatik: Konnektoren und Satzverbindungen — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Konnektoren und Satzverbindungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Grammatik: Konnektoren und Satzverbindungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Berufliche Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Grammatik: Konnektoren und Satzverbindungen — Writing Task 1', 'Write a short text (50-100 words) about grammatik: konnektoren und satzverbindungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Grammatik: Konnektoren und Satzverbindungen — Conversation 1', 'Practice a realistic conversation about grammatik: konnektoren und satzverbindungen in the context of Berufliche Kommunikation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Konnektoren und Satzverbindungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Grammatik: Konnektoren und Satzverbindungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Konnektoren und Satzverbindungen". The dialogue should be realistic and related to Berufliche Kommunikation.', 'Creative practice for Grammatik: Konnektoren und Satzverbindungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Grammatik: Konnektoren und Satzverbindungen — Deep Understanding', 'Explain the most important concepts from "Grammatik: Konnektoren und Satzverbindungen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Konnektoren und Satzverbindungen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Grammatik: Konnektoren und Satzverbindungen — Reading Practice', 'This is a B2-level reading passage about grammatik: konnektoren und satzverbindungen in the context of Berufliche Kommunikation.

Grammatik: Konnektoren und Satzverbindungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Berufliche Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Grammatik: Konnektoren und Satzverbindungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Konnektoren und Satzverbindungen" aus dem Modul "Berufliche Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Berufliche Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 1),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 2),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 3),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 4),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 5),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 6),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 7),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Homework: Grammatik: Je...desto/umso und erweiterte Infinitivsätze', 'Complete these tasks to reinforce "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" (Diskussion und Argumentation).', 'writing', '[{"description":"Review all vocabulary from \"Grammatik: Je...desto/umso und erweiterte Infinitivsätze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'In this lesson on "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" (Diskussion und Argumentation), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Je...desto/umso und erweiterte Infinitivsätze\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Je...desto/umso und erweiterte Infinitivsätze\""}]', ARRAY['"Grammatik: Je...desto/umso und erweiterte Infinitivsätze" core vocabulary', 'Diskussion und Argumentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" aloud. Focus on correct pronunciation.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Speaking 2', 'Role-play: Imagine you are in a situation related to Diskussion und Argumentation. Have a dialogue with a partner.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Writing Task 1', 'Write a short text (50-100 words) about grammatik: je...desto/umso und erweiterte infinitivsätze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Conversation 1', 'Practice a realistic conversation about grammatik: je...desto/umso und erweiterte infinitivsätze in the context of Diskussion und Argumentation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Je...desto/umso und erweiterte Infinitivsätze". The dialogue should be realistic and related to Diskussion und Argumentation.', 'Creative practice for Grammatik: Je...desto/umso und erweiterte Infinitivsätze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Deep Understanding', 'Explain the most important concepts from "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Je...desto/umso und erweiterte Infinitivsätze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Reading Practice', 'This is a B2-level reading passage about grammatik: je...desto/umso und erweiterte infinitivsätze in the context of Diskussion und Argumentation.

Grammatik: Je...desto/umso und erweiterte Infinitivsätze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diskussion und Argumentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" aus dem Modul "Diskussion und Argumentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diskussion und Argumentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 1),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 2),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 3),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 4),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 5),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 6),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 7),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Homework: Grammatik: Nomen-Verb-Verbindungen und Stilebenen', 'Complete these tasks to reinforce "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" (Kultur und Gesellschaft).', 'speaking', '[{"description":"Review all vocabulary from \"Grammatik: Nomen-Verb-Verbindungen und Stilebenen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'In this lesson on "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" (Kultur und Gesellschaft), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Nomen-Verb-Verbindungen und Stilebenen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Nomen-Verb-Verbindungen und Stilebenen\""}]', ARRAY['"Grammatik: Nomen-Verb-Verbindungen und Stilebenen" core vocabulary', 'Kultur und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" aloud. Focus on correct pronunciation.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Speaking 2', 'Role-play: Imagine you are in a situation related to Kultur und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Writing Task 1', 'Write a short text (50-100 words) about grammatik: nomen-verb-verbindungen und stilebenen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Conversation 1', 'Practice a realistic conversation about grammatik: nomen-verb-verbindungen und stilebenen in the context of Kultur und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Nomen-Verb-Verbindungen und Stilebenen". The dialogue should be realistic and related to Kultur und Gesellschaft.', 'Creative practice for Grammatik: Nomen-Verb-Verbindungen und Stilebenen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Deep Understanding', 'Explain the most important concepts from "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Nomen-Verb-Verbindungen und Stilebenen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Reading Practice', 'This is a B2-level reading passage about grammatik: nomen-verb-verbindungen und stilebenen in the context of Kultur und Gesellschaft.

Grammatik: Nomen-Verb-Verbindungen und Stilebenen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kultur und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Grammatik: Nomen-Verb-Verbindungen und Stilebenen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Nomen-Verb-Verbindungen und Stilebenen" aus dem Modul "Kultur und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kultur und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 1),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 2),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 3),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 4),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 5),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 6),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 7),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Homework: Grammatik: Je...desto/umso und erweiterte Infinitivsätze', 'Complete these tasks to reinforce "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" (Diskussion und Argumentation).', 'reading', '[{"description":"Review all vocabulary from \"Grammatik: Je...desto/umso und erweiterte Infinitivsätze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'In this lesson on "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" (Diskussion und Argumentation), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Je...desto/umso und erweiterte Infinitivsätze\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Je...desto/umso und erweiterte Infinitivsätze\""}]', ARRAY['"Grammatik: Je...desto/umso und erweiterte Infinitivsätze" core vocabulary', 'Diskussion und Argumentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" aloud. Focus on correct pronunciation.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Speaking 2', 'Role-play: Imagine you are in a situation related to Diskussion und Argumentation. Have a dialogue with a partner.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Writing Task 1', 'Write a short text (50-100 words) about grammatik: je...desto/umso und erweiterte infinitivsätze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Conversation 1', 'Practice a realistic conversation about grammatik: je...desto/umso und erweiterte infinitivsätze in the context of Diskussion und Argumentation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Je...desto/umso und erweiterte Infinitivsätze". The dialogue should be realistic and related to Diskussion und Argumentation.', 'Creative practice for Grammatik: Je...desto/umso und erweiterte Infinitivsätze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Deep Understanding', 'Explain the most important concepts from "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Je...desto/umso und erweiterte Infinitivsätze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Reading Practice', 'This is a B2-level reading passage about grammatik: je...desto/umso und erweiterte infinitivsätze in the context of Diskussion und Argumentation.

Grammatik: Je...desto/umso und erweiterte Infinitivsätze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diskussion und Argumentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Grammatik: Je...desto/umso und erweiterte Infinitivsätze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Je...desto/umso und erweiterte Infinitivsätze" aus dem Modul "Diskussion und Argumentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diskussion und Argumentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Homework: Grammatik: Konnektoren und Satzverbindungen', 'Complete these tasks to reinforce "Grammatik: Konnektoren und Satzverbindungen" (Berufliche Kommunikation).', 'grammar', '[{"description":"Review all vocabulary from \"Grammatik: Konnektoren und Satzverbindungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'In this lesson on "Grammatik: Konnektoren und Satzverbindungen" (Berufliche Kommunikation), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Konnektoren und Satzverbindungen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Konnektoren und Satzverbindungen\""}]', ARRAY['"Grammatik: Konnektoren und Satzverbindungen" core vocabulary', 'Berufliche Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Grammatik: Konnektoren und Satzverbindungen — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Konnektoren und Satzverbindungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Grammatik: Konnektoren und Satzverbindungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Berufliche Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Grammatik: Konnektoren und Satzverbindungen — Writing Task 1', 'Write a short text (50-100 words) about grammatik: konnektoren und satzverbindungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Grammatik: Konnektoren und Satzverbindungen — Conversation 1', 'Practice a realistic conversation about grammatik: konnektoren und satzverbindungen in the context of Berufliche Kommunikation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Konnektoren und Satzverbindungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Grammatik: Konnektoren und Satzverbindungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Konnektoren und Satzverbindungen". The dialogue should be realistic and related to Berufliche Kommunikation.', 'Creative practice for Grammatik: Konnektoren und Satzverbindungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Grammatik: Konnektoren und Satzverbindungen — Deep Understanding', 'Explain the most important concepts from "Grammatik: Konnektoren und Satzverbindungen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Konnektoren und Satzverbindungen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Grammatik: Konnektoren und Satzverbindungen — Reading Practice', 'This is a B2-level reading passage about grammatik: konnektoren und satzverbindungen in the context of Berufliche Kommunikation.

Grammatik: Konnektoren und Satzverbindungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Berufliche Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Grammatik: Konnektoren und Satzverbindungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Konnektoren und Satzverbindungen" aus dem Modul "Berufliche Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Berufliche Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 1),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 2),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 3),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 4),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 5),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 6),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 7),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Homework: Grammatik: Vergleiche mit als, als ob und als wenn', 'Complete these tasks to reinforce "Grammatik: Vergleiche mit als, als ob und als wenn" (Wirtschaft und Politik).', 'mixed', '[{"description":"Review all vocabulary from \"Grammatik: Vergleiche mit als, als ob und als wenn\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'In this lesson on "Grammatik: Vergleiche mit als, als ob und als wenn" (Wirtschaft und Politik), you learned key grammar concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Grammatik: Vergleiche mit als, als ob und als wenn\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Grammatik: Vergleiche mit als, als ob und als wenn\""}]', ARRAY['"Grammatik: Vergleiche mit als, als ob und als wenn" core vocabulary', 'Wirtschaft und Politik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Grammatik: Vergleiche mit als, als ob und als wenn — Speaking 1', 'Practice the key vocabulary and phrases from "Grammatik: Vergleiche mit als, als ob und als wenn" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Grammatik: Vergleiche mit als, als ob und als wenn — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaft und Politik. Have a dialogue with a partner.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Grammatik: Vergleiche mit als, als ob und als wenn — Writing Task 1', 'Write a short text (50-100 words) about grammatik: vergleiche mit als, als ob und als wenn. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Grammatik: Vergleiche mit als, als ob und als wenn — Conversation 1', 'Practice a realistic conversation about grammatik: vergleiche mit als, als ob und als wenn in the context of Wirtschaft und Politik.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Grammatik: Vergleiche mit als, als ob und als wenn" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Grammatik: Vergleiche mit als, als ob und als wenn — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Grammatik: Vergleiche mit als, als ob und als wenn". The dialogue should be realistic and related to Wirtschaft und Politik.', 'Creative practice for Grammatik: Vergleiche mit als, als ob und als wenn', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Grammatik: Vergleiche mit als, als ob und als wenn — Deep Understanding', 'Explain the most important concepts from "Grammatik: Vergleiche mit als, als ob und als wenn" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Grammatik: Vergleiche mit als, als ob und als wenn', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Grammatik: Vergleiche mit als, als ob und als wenn — Reading Practice', 'This is a B2-level reading passage about grammatik: vergleiche mit als, als ob und als wenn in the context of Wirtschaft und Politik.

Grammatik: Vergleiche mit als, als ob und als wenn is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaft und Politik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 114, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Grammatik: Vergleiche mit als, als ob und als wenn — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Grammatik: Vergleiche mit als, als ob und als wenn" aus dem Modul "Wirtschaft und Politik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaft und Politik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 1),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 2),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 3),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 4),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 5),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 6),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 7),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 8),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 9),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Homework: Diskussion führen', 'Complete these tasks to reinforce "Diskussion führen" (Diskussion und Argumentation).', 'vocabulary', '[{"description":"Review all vocabulary from \"Diskussion führen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'In this lesson on "Diskussion führen" (Diskussion und Argumentation), you learned key reading concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Diskussion führen\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Diskussion führen\""}]', ARRAY['"Diskussion führen" core vocabulary', 'Diskussion und Argumentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Diskussion führen — Speaking 1', 'Practice the key vocabulary and phrases from "Diskussion führen" aloud. Focus on correct pronunciation.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Diskussion führen — Speaking 2', 'Role-play: Imagine you are in a situation related to Diskussion und Argumentation. Have a dialogue with a partner.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Diskussion führen — Writing Task 1', 'Write a short text (50-100 words) about diskussion führen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Diskussion führen — Conversation 1', 'Practice a realistic conversation about diskussion führen in the context of Diskussion und Argumentation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Diskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Diskussion führen — Conversation 2', 'Practice a realistic conversation about diskussion führen in the context of Diskussion und Argumentation.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Diskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Diskussion führen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Diskussion führen". The dialogue should be realistic and related to Diskussion und Argumentation.', 'Creative practice for Diskussion führen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Diskussion führen — Reading Practice', 'This is a B2-level reading passage about diskussion führen in the context of Diskussion und Argumentation.

Diskussion führen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diskussion und Argumentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Diskussion führen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Diskussion führen" aus dem Modul "Diskussion und Argumentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diskussion und Argumentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Homework: Meetings und Verhandlungen', 'Complete these tasks to reinforce "Meetings und Verhandlungen" (Berufliche Kommunikation).', 'writing', '[{"description":"Review all vocabulary from \"Meetings und Verhandlungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'In this lesson on "Meetings und Verhandlungen" (Berufliche Kommunikation), you learned key listening concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meetings und Verhandlungen\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meetings und Verhandlungen\""}]', ARRAY['"Meetings und Verhandlungen" core vocabulary', 'Berufliche Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Meetings und Verhandlungen — Speaking 1', 'Practice the key vocabulary and phrases from "Meetings und Verhandlungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Meetings und Verhandlungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Berufliche Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Meetings und Verhandlungen — Writing Task 1', 'Write a short text (50-100 words) about meetings und verhandlungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Meetings und Verhandlungen — Conversation 1', 'Practice a realistic conversation about meetings und verhandlungen in the context of Berufliche Kommunikation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meetings und Verhandlungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Meetings und Verhandlungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meetings und Verhandlungen". The dialogue should be realistic and related to Berufliche Kommunikation.', 'Creative practice for Meetings und Verhandlungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Meetings und Verhandlungen — Reading Practice', 'This is a B2-level reading passage about meetings und verhandlungen in the context of Berufliche Kommunikation.

Meetings und Verhandlungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Berufliche Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Meetings und Verhandlungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meetings und Verhandlungen" aus dem Modul "Berufliche Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Berufliche Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 1),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 2),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 3),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 4),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 5),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 6),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 7),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 8),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 9),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Diskussion und Argumentation', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Homework: Diskussion führen', 'Complete these tasks to reinforce "Diskussion führen" (Diskussion und Argumentation).', 'speaking', '[{"description":"Review all vocabulary from \"Diskussion führen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'In this lesson on "Diskussion führen" (Diskussion und Argumentation), you learned key reading concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Diskussion führen\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Diskussion führen\""}]', ARRAY['"Diskussion führen" core vocabulary', 'Diskussion und Argumentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Diskussion führen — Speaking 1', 'Practice the key vocabulary and phrases from "Diskussion führen" aloud. Focus on correct pronunciation.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Diskussion führen — Speaking 2', 'Role-play: Imagine you are in a situation related to Diskussion und Argumentation. Have a dialogue with a partner.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Diskussion führen — Writing Task 1', 'Write a short text (50-100 words) about diskussion führen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Diskussion führen — Conversation 1', 'Practice a realistic conversation about diskussion führen in the context of Diskussion und Argumentation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Diskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Diskussion führen — Conversation 2', 'Practice a realistic conversation about diskussion führen in the context of Diskussion und Argumentation.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Diskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Diskussion führen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Diskussion führen". The dialogue should be realistic and related to Diskussion und Argumentation.', 'Creative practice for Diskussion führen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Diskussion führen — Reading Practice', 'This is a B2-level reading passage about diskussion führen in the context of Diskussion und Argumentation.

Diskussion führen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diskussion und Argumentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Diskussion führen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Diskussion führen" aus dem Modul "Diskussion und Argumentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diskussion und Argumentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 1),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 2),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 3),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 4),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 5),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 6),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 7),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 8),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 9),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Homework: Vortrag halten', 'Complete these tasks to reinforce "Vortrag halten" (Präsentationen und Vorträge).', 'reading', '[{"description":"Review all vocabulary from \"Vortrag halten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'In this lesson on "Vortrag halten" (Präsentationen und Vorträge), you learned key speaking concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Vortrag halten\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Vortrag halten\""}]', ARRAY['"Vortrag halten" core vocabulary', 'Präsentationen und Vorträge key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Vortrag halten — Speaking 1', 'Practice the key vocabulary and phrases from "Vortrag halten" aloud. Focus on correct pronunciation.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Vortrag halten — Speaking 2', 'Role-play: Imagine you are in a situation related to Präsentationen und Vorträge. Have a dialogue with a partner.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Vortrag halten — Writing Task 1', 'Write a short text (50-100 words) about vortrag halten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Vortrag halten — Conversation 1', 'Practice a realistic conversation about vortrag halten in the context of Präsentationen und Vorträge.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Vortrag halten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Vortrag halten — Conversation 2', 'Practice a realistic conversation about vortrag halten in the context of Präsentationen und Vorträge.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Vortrag halten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Vortrag halten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Vortrag halten". The dialogue should be realistic and related to Präsentationen und Vorträge.', 'Creative practice for Vortrag halten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Vortrag halten — Reading Practice', 'This is a B2-level reading passage about vortrag halten in the context of Präsentationen und Vorträge.

Vortrag halten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Präsentationen und Vorträge" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Vortrag halten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Vortrag halten" aus dem Modul "Präsentationen und Vorträge".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Präsentationen und Vorträge');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 1),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 2),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 3),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 4),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 5),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 6),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Homework: Fachtexte lesen und verstehen', 'Complete these tasks to reinforce "Fachtexte lesen und verstehen" (Fachsprache und Terminologie).', 'grammar', '[{"description":"Review all vocabulary from \"Fachtexte lesen und verstehen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'In this lesson on "Fachtexte lesen und verstehen" (Fachsprache und Terminologie), you learned key reading concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Fachtexte lesen und verstehen\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Fachtexte lesen und verstehen\""}]', ARRAY['"Fachtexte lesen und verstehen" core vocabulary', 'Fachsprache und Terminologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Fachtexte lesen und verstehen — Speaking 1', 'Practice the key vocabulary and phrases from "Fachtexte lesen und verstehen" aloud. Focus on correct pronunciation.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Fachtexte lesen und verstehen — Speaking 2', 'Role-play: Imagine you are in a situation related to Fachsprache und Terminologie. Have a dialogue with a partner.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Fachtexte lesen und verstehen — Writing Task 1', 'Write a short text (50-100 words) about fachtexte lesen und verstehen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Fachtexte lesen und verstehen — Conversation 1', 'Practice a realistic conversation about fachtexte lesen und verstehen in the context of Fachsprache und Terminologie.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Fachtexte lesen und verstehen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Fachtexte lesen und verstehen — Conversation 2', 'Practice a realistic conversation about fachtexte lesen und verstehen in the context of Fachsprache und Terminologie.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Fachtexte lesen und verstehen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Fachtexte lesen und verstehen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Fachtexte lesen und verstehen". The dialogue should be realistic and related to Fachsprache und Terminologie.', 'Creative practice for Fachtexte lesen und verstehen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Fachtexte lesen und verstehen — Reading Practice', 'This is a B2-level reading passage about fachtexte lesen und verstehen in the context of Fachsprache und Terminologie.

Fachtexte lesen und verstehen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Fachsprache und Terminologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Fachtexte lesen und verstehen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Fachtexte lesen und verstehen" aus dem Modul "Fachsprache und Terminologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Fachsprache und Terminologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 1),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 2),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 3),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 4),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 5),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 6),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 7),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 8),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 9),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Homework: Kulturelle Berichte verstehen', 'Complete these tasks to reinforce "Kulturelle Berichte verstehen" (Kultur und Gesellschaft).', 'mixed', '[{"description":"Review all vocabulary from \"Kulturelle Berichte verstehen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'In this lesson on "Kulturelle Berichte verstehen" (Kultur und Gesellschaft), you learned key reading concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kulturelle Berichte verstehen\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kulturelle Berichte verstehen\""}]', ARRAY['"Kulturelle Berichte verstehen" core vocabulary', 'Kultur und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Kulturelle Berichte verstehen — Speaking 1', 'Practice the key vocabulary and phrases from "Kulturelle Berichte verstehen" aloud. Focus on correct pronunciation.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Kulturelle Berichte verstehen — Speaking 2', 'Role-play: Imagine you are in a situation related to Kultur und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Kulturelle Berichte verstehen — Writing Task 1', 'Write a short text (50-100 words) about kulturelle berichte verstehen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Kulturelle Berichte verstehen — Conversation 1', 'Practice a realistic conversation about kulturelle berichte verstehen in the context of Kultur und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kulturelle Berichte verstehen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Kulturelle Berichte verstehen — Conversation 2', 'Practice a realistic conversation about kulturelle berichte verstehen in the context of Kultur und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kulturelle Berichte verstehen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Kulturelle Berichte verstehen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kulturelle Berichte verstehen". The dialogue should be realistic and related to Kultur und Gesellschaft.', 'Creative practice for Kulturelle Berichte verstehen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Kulturelle Berichte verstehen — Reading Practice', 'This is a B2-level reading passage about kulturelle berichte verstehen in the context of Kultur und Gesellschaft.

Kulturelle Berichte verstehen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kultur und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Kulturelle Berichte verstehen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kulturelle Berichte verstehen" aus dem Modul "Kultur und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kultur und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 1),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 2),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 3),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 4),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 5),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 6),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 7),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 8),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 9),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Homework: Wirtschaftsnachrichten verstehen', 'Complete these tasks to reinforce "Wirtschaftsnachrichten verstehen" (Wirtschaft und Politik).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wirtschaftsnachrichten verstehen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'In this lesson on "Wirtschaftsnachrichten verstehen" (Wirtschaft und Politik), you learned key listening concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsnachrichten verstehen\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsnachrichten verstehen\""}]', ARRAY['"Wirtschaftsnachrichten verstehen" core vocabulary', 'Wirtschaft und Politik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wirtschaftsnachrichten verstehen — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsnachrichten verstehen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wirtschaftsnachrichten verstehen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaft und Politik. Have a dialogue with a partner.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wirtschaftsnachrichten verstehen — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsnachrichten verstehen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wirtschaftsnachrichten verstehen — Conversation 1', 'Practice a realistic conversation about wirtschaftsnachrichten verstehen in the context of Wirtschaft und Politik.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsnachrichten verstehen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wirtschaftsnachrichten verstehen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsnachrichten verstehen". The dialogue should be realistic and related to Wirtschaft und Politik.', 'Creative practice for Wirtschaftsnachrichten verstehen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wirtschaftsnachrichten verstehen — Reading Practice', 'This is a B2-level reading passage about wirtschaftsnachrichten verstehen in the context of Wirtschaft und Politik.

Wirtschaftsnachrichten verstehen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaft und Politik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wirtschaftsnachrichten verstehen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsnachrichten verstehen" aus dem Modul "Wirtschaft und Politik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaft und Politik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Homework: Meetings und Verhandlungen', 'Complete these tasks to reinforce "Meetings und Verhandlungen" (Berufliche Kommunikation).', 'writing', '[{"description":"Review all vocabulary from \"Meetings und Verhandlungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'In this lesson on "Meetings und Verhandlungen" (Berufliche Kommunikation), you learned key listening concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meetings und Verhandlungen\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meetings und Verhandlungen\""}]', ARRAY['"Meetings und Verhandlungen" core vocabulary', 'Berufliche Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meetings und Verhandlungen — Speaking 1', 'Practice the key vocabulary and phrases from "Meetings und Verhandlungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meetings und Verhandlungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Berufliche Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meetings und Verhandlungen — Writing Task 1', 'Write a short text (50-100 words) about meetings und verhandlungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meetings und Verhandlungen — Conversation 1', 'Practice a realistic conversation about meetings und verhandlungen in the context of Berufliche Kommunikation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meetings und Verhandlungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meetings und Verhandlungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meetings und Verhandlungen". The dialogue should be realistic and related to Berufliche Kommunikation.', 'Creative practice for Meetings und Verhandlungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meetings und Verhandlungen — Reading Practice', 'This is a B2-level reading passage about meetings und verhandlungen in the context of Berufliche Kommunikation.

Meetings und Verhandlungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Berufliche Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meetings und Verhandlungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meetings und Verhandlungen" aus dem Modul "Berufliche Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Berufliche Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 1),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 2),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 3),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 4),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 5),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 6),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 7),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 8),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 9),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Präsentationen und Vorträge', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Homework: Vortrag halten', 'Complete these tasks to reinforce "Vortrag halten" (Präsentationen und Vorträge).', 'speaking', '[{"description":"Review all vocabulary from \"Vortrag halten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'In this lesson on "Vortrag halten" (Präsentationen und Vorträge), you learned key speaking concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Vortrag halten\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Vortrag halten\""}]', ARRAY['"Vortrag halten" core vocabulary', 'Präsentationen und Vorträge key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Vortrag halten — Speaking 1', 'Practice the key vocabulary and phrases from "Vortrag halten" aloud. Focus on correct pronunciation.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Vortrag halten — Speaking 2', 'Role-play: Imagine you are in a situation related to Präsentationen und Vorträge. Have a dialogue with a partner.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Vortrag halten — Writing Task 1', 'Write a short text (50-100 words) about vortrag halten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Vortrag halten — Conversation 1', 'Practice a realistic conversation about vortrag halten in the context of Präsentationen und Vorträge.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Vortrag halten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Vortrag halten — Conversation 2', 'Practice a realistic conversation about vortrag halten in the context of Präsentationen und Vorträge.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Vortrag halten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Vortrag halten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Vortrag halten". The dialogue should be realistic and related to Präsentationen und Vorträge.', 'Creative practice for Vortrag halten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Vortrag halten — Reading Practice', 'This is a B2-level reading passage about vortrag halten in the context of Präsentationen und Vorträge.

Vortrag halten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Präsentationen und Vorträge" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Vortrag halten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Vortrag halten" aus dem Modul "Präsentationen und Vorträge".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Präsentationen und Vorträge');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 1),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 2),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 3),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 4),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 5),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 6),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Fachsprache und Terminologie', 'informal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Homework: Fachtexte lesen und verstehen', 'Complete these tasks to reinforce "Fachtexte lesen und verstehen" (Fachsprache und Terminologie).', 'reading', '[{"description":"Review all vocabulary from \"Fachtexte lesen und verstehen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'In this lesson on "Fachtexte lesen und verstehen" (Fachsprache und Terminologie), you learned key reading concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Fachtexte lesen und verstehen\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Fachtexte lesen und verstehen\""}]', ARRAY['"Fachtexte lesen und verstehen" core vocabulary', 'Fachsprache und Terminologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Fachtexte lesen und verstehen — Speaking 1', 'Practice the key vocabulary and phrases from "Fachtexte lesen und verstehen" aloud. Focus on correct pronunciation.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Fachtexte lesen und verstehen — Speaking 2', 'Role-play: Imagine you are in a situation related to Fachsprache und Terminologie. Have a dialogue with a partner.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Fachtexte lesen und verstehen — Writing Task 1', 'Write a short text (50-100 words) about fachtexte lesen und verstehen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Fachtexte lesen und verstehen — Conversation 1', 'Practice a realistic conversation about fachtexte lesen und verstehen in the context of Fachsprache und Terminologie.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Fachtexte lesen und verstehen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Fachtexte lesen und verstehen — Conversation 2', 'Practice a realistic conversation about fachtexte lesen und verstehen in the context of Fachsprache und Terminologie.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Fachtexte lesen und verstehen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Fachtexte lesen und verstehen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Fachtexte lesen und verstehen". The dialogue should be realistic and related to Fachsprache und Terminologie.', 'Creative practice for Fachtexte lesen und verstehen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Fachtexte lesen und verstehen — Reading Practice', 'This is a B2-level reading passage about fachtexte lesen und verstehen in the context of Fachsprache und Terminologie.

Fachtexte lesen und verstehen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Fachsprache und Terminologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Fachtexte lesen und verstehen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Fachtexte lesen und verstehen" aus dem Modul "Fachsprache und Terminologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Fachsprache und Terminologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 1),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 2),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 3),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 4),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 5),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 6),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 7),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 8),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 9),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kultur und Gesellschaft', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Homework: Kulturelle Berichte verstehen', 'Complete these tasks to reinforce "Kulturelle Berichte verstehen" (Kultur und Gesellschaft).', 'grammar', '[{"description":"Review all vocabulary from \"Kulturelle Berichte verstehen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'In this lesson on "Kulturelle Berichte verstehen" (Kultur und Gesellschaft), you learned key reading concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kulturelle Berichte verstehen\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kulturelle Berichte verstehen\""}]', ARRAY['"Kulturelle Berichte verstehen" core vocabulary', 'Kultur und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Kulturelle Berichte verstehen — Speaking 1', 'Practice the key vocabulary and phrases from "Kulturelle Berichte verstehen" aloud. Focus on correct pronunciation.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Kulturelle Berichte verstehen — Speaking 2', 'Role-play: Imagine you are in a situation related to Kultur und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Kulturelle Berichte verstehen — Writing Task 1', 'Write a short text (50-100 words) about kulturelle berichte verstehen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Kulturelle Berichte verstehen — Conversation 1', 'Practice a realistic conversation about kulturelle berichte verstehen in the context of Kultur und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kulturelle Berichte verstehen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Kulturelle Berichte verstehen — Conversation 2', 'Practice a realistic conversation about kulturelle berichte verstehen in the context of Kultur und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kulturelle Berichte verstehen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Kulturelle Berichte verstehen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kulturelle Berichte verstehen". The dialogue should be realistic and related to Kultur und Gesellschaft.', 'Creative practice for Kulturelle Berichte verstehen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Kulturelle Berichte verstehen — Reading Practice', 'This is a B2-level reading passage about kulturelle berichte verstehen in the context of Kultur und Gesellschaft.

Kulturelle Berichte verstehen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kultur und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Kulturelle Berichte verstehen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kulturelle Berichte verstehen" aus dem Modul "Kultur und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kultur und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 1),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 2),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 3),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 4),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 5),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 6),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 7),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 8),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 9),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaft und Politik', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Homework: Wirtschaftsnachrichten verstehen', 'Complete these tasks to reinforce "Wirtschaftsnachrichten verstehen" (Wirtschaft und Politik).', 'mixed', '[{"description":"Review all vocabulary from \"Wirtschaftsnachrichten verstehen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'In this lesson on "Wirtschaftsnachrichten verstehen" (Wirtschaft und Politik), you learned key listening concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsnachrichten verstehen\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsnachrichten verstehen\""}]', ARRAY['"Wirtschaftsnachrichten verstehen" core vocabulary', 'Wirtschaft und Politik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wirtschaftsnachrichten verstehen — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsnachrichten verstehen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wirtschaftsnachrichten verstehen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaft und Politik. Have a dialogue with a partner.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wirtschaftsnachrichten verstehen — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsnachrichten verstehen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wirtschaftsnachrichten verstehen — Conversation 1', 'Practice a realistic conversation about wirtschaftsnachrichten verstehen in the context of Wirtschaft und Politik.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsnachrichten verstehen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wirtschaftsnachrichten verstehen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsnachrichten verstehen". The dialogue should be realistic and related to Wirtschaft und Politik.', 'Creative practice for Wirtschaftsnachrichten verstehen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wirtschaftsnachrichten verstehen — Reading Practice', 'This is a B2-level reading passage about wirtschaftsnachrichten verstehen in the context of Wirtschaft und Politik.

Wirtschaftsnachrichten verstehen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaft und Politik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wirtschaftsnachrichten verstehen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsnachrichten verstehen" aus dem Modul "Wirtschaft und Politik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaft und Politik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 1),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 2),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 3),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 4),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Homework: Wiederholung: Kultur und Gesellschaft', 'Complete these tasks to reinforce "Wiederholung: Kultur und Gesellschaft" (Kultur und Gesellschaft).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Kultur und Gesellschaft\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'In this lesson on "Wiederholung: Kultur und Gesellschaft" (Kultur und Gesellschaft), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Kultur und Gesellschaft\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Kultur und Gesellschaft\""}]', ARRAY['"Wiederholung: Kultur und Gesellschaft" core vocabulary', 'Kultur und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Kultur und Gesellschaft — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Kultur und Gesellschaft" aloud. Focus on correct pronunciation.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Kultur und Gesellschaft — Speaking 2', 'Role-play: Imagine you are in a situation related to Kultur und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Kultur und Gesellschaft — Conversation 1', 'Practice a realistic conversation about wiederholung: kultur und gesellschaft in the context of Kultur und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Kultur und Gesellschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Kultur und Gesellschaft — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Kultur und Gesellschaft". The dialogue should be realistic and related to Kultur und Gesellschaft.', 'Creative practice for Wiederholung: Kultur und Gesellschaft', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Kultur und Gesellschaft — Reading Practice', 'This is a B2-level reading passage about wiederholung: kultur und gesellschaft in the context of Kultur und Gesellschaft.

Wiederholung: Kultur und Gesellschaft is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kultur und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Kultur und Gesellschaft — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Kultur und Gesellschaft" aus dem Modul "Kultur und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kultur und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 1),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 2),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 3),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 4),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Homework: Wiederholung: Präsentationen und Vorträge', 'Complete these tasks to reinforce "Wiederholung: Präsentationen und Vorträge" (Präsentationen und Vorträge).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Präsentationen und Vorträge\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'In this lesson on "Wiederholung: Präsentationen und Vorträge" (Präsentationen und Vorträge), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Präsentationen und Vorträge\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Präsentationen und Vorträge\""}]', ARRAY['"Wiederholung: Präsentationen und Vorträge" core vocabulary', 'Präsentationen und Vorträge key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Präsentationen und Vorträge — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Präsentationen und Vorträge" aloud. Focus on correct pronunciation.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Präsentationen und Vorträge — Speaking 2', 'Role-play: Imagine you are in a situation related to Präsentationen und Vorträge. Have a dialogue with a partner.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Präsentationen und Vorträge — Conversation 1', 'Practice a realistic conversation about wiederholung: präsentationen und vorträge in the context of Präsentationen und Vorträge.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Präsentationen und Vorträge" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Präsentationen und Vorträge — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Präsentationen und Vorträge". The dialogue should be realistic and related to Präsentationen und Vorträge.', 'Creative practice for Wiederholung: Präsentationen und Vorträge', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Präsentationen und Vorträge — Reading Practice', 'This is a B2-level reading passage about wiederholung: präsentationen und vorträge in the context of Präsentationen und Vorträge.

Wiederholung: Präsentationen und Vorträge is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Präsentationen und Vorträge" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Präsentationen und Vorträge — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Präsentationen und Vorträge" aus dem Modul "Präsentationen und Vorträge".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Präsentationen und Vorträge');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Homework: Wiederholung: Berufliche Kommunikation', 'Complete these tasks to reinforce "Wiederholung: Berufliche Kommunikation" (Berufliche Kommunikation).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Berufliche Kommunikation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'In this lesson on "Wiederholung: Berufliche Kommunikation" (Berufliche Kommunikation), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Berufliche Kommunikation\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Berufliche Kommunikation\""}]', ARRAY['"Wiederholung: Berufliche Kommunikation" core vocabulary', 'Berufliche Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Berufliche Kommunikation — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Berufliche Kommunikation" aloud. Focus on correct pronunciation.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Berufliche Kommunikation — Speaking 2', 'Role-play: Imagine you are in a situation related to Berufliche Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Berufliche Kommunikation — Conversation 1', 'Practice a realistic conversation about wiederholung: berufliche kommunikation in the context of Berufliche Kommunikation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Berufliche Kommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Berufliche Kommunikation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Berufliche Kommunikation". The dialogue should be realistic and related to Berufliche Kommunikation.', 'Creative practice for Wiederholung: Berufliche Kommunikation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Berufliche Kommunikation — Reading Practice', 'This is a B2-level reading passage about wiederholung: berufliche kommunikation in the context of Berufliche Kommunikation.

Wiederholung: Berufliche Kommunikation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Berufliche Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Berufliche Kommunikation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Berufliche Kommunikation" aus dem Modul "Berufliche Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Berufliche Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 1),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 2),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 3),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 4),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Homework: Wiederholung: Wirtschaft und Politik', 'Complete these tasks to reinforce "Wiederholung: Wirtschaft und Politik" (Wirtschaft und Politik).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Wirtschaft und Politik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'In this lesson on "Wiederholung: Wirtschaft und Politik" (Wirtschaft und Politik), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wirtschaft und Politik\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wirtschaft und Politik\""}]', ARRAY['"Wiederholung: Wirtschaft und Politik" core vocabulary', 'Wirtschaft und Politik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Wirtschaft und Politik — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wirtschaft und Politik" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Wirtschaft und Politik — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaft und Politik. Have a dialogue with a partner.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Wirtschaft und Politik — Conversation 1', 'Practice a realistic conversation about wiederholung: wirtschaft und politik in the context of Wirtschaft und Politik.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wirtschaft und Politik" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Wirtschaft und Politik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wirtschaft und Politik". The dialogue should be realistic and related to Wirtschaft und Politik.', 'Creative practice for Wiederholung: Wirtschaft und Politik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Wirtschaft und Politik — Reading Practice', 'This is a B2-level reading passage about wiederholung: wirtschaft und politik in the context of Wirtschaft und Politik.

Wiederholung: Wirtschaft und Politik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaft und Politik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Wirtschaft und Politik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wirtschaft und Politik" aus dem Modul "Wirtschaft und Politik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaft und Politik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 1),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 2),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 3),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 4),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Homework: Wiederholung: Kultur und Gesellschaft', 'Complete these tasks to reinforce "Wiederholung: Kultur und Gesellschaft" (Kultur und Gesellschaft).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Kultur und Gesellschaft\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'In this lesson on "Wiederholung: Kultur und Gesellschaft" (Kultur und Gesellschaft), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Kultur und Gesellschaft\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Kultur und Gesellschaft\""}]', ARRAY['"Wiederholung: Kultur und Gesellschaft" core vocabulary', 'Kultur und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Kultur und Gesellschaft — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Kultur und Gesellschaft" aloud. Focus on correct pronunciation.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Kultur und Gesellschaft — Speaking 2', 'Role-play: Imagine you are in a situation related to Kultur und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Kultur und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Kultur und Gesellschaft — Conversation 1', 'Practice a realistic conversation about wiederholung: kultur und gesellschaft in the context of Kultur und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Kultur und Gesellschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Kultur und Gesellschaft — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Kultur und Gesellschaft". The dialogue should be realistic and related to Kultur und Gesellschaft.', 'Creative practice for Wiederholung: Kultur und Gesellschaft', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Kultur und Gesellschaft — Reading Practice', 'This is a B2-level reading passage about wiederholung: kultur und gesellschaft in the context of Kultur und Gesellschaft.

Wiederholung: Kultur und Gesellschaft is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kultur und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Kultur und Gesellschaft — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Kultur und Gesellschaft" aus dem Modul "Kultur und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kultur und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 1),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 2),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 3),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 4),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Homework: Wiederholung: Fachsprache und Terminologie', 'Complete these tasks to reinforce "Wiederholung: Fachsprache und Terminologie" (Fachsprache und Terminologie).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Fachsprache und Terminologie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'In this lesson on "Wiederholung: Fachsprache und Terminologie" (Fachsprache und Terminologie), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Fachsprache und Terminologie\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Fachsprache und Terminologie\""}]', ARRAY['"Wiederholung: Fachsprache und Terminologie" core vocabulary', 'Fachsprache und Terminologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Fachsprache und Terminologie — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Fachsprache und Terminologie" aloud. Focus on correct pronunciation.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Fachsprache und Terminologie — Speaking 2', 'Role-play: Imagine you are in a situation related to Fachsprache und Terminologie. Have a dialogue with a partner.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Fachsprache und Terminologie — Conversation 1', 'Practice a realistic conversation about wiederholung: fachsprache und terminologie in the context of Fachsprache und Terminologie.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Fachsprache und Terminologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Fachsprache und Terminologie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Fachsprache und Terminologie". The dialogue should be realistic and related to Fachsprache und Terminologie.', 'Creative practice for Wiederholung: Fachsprache und Terminologie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Fachsprache und Terminologie — Reading Practice', 'This is a B2-level reading passage about wiederholung: fachsprache und terminologie in the context of Fachsprache und Terminologie.

Wiederholung: Fachsprache und Terminologie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Fachsprache und Terminologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Fachsprache und Terminologie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Fachsprache und Terminologie" aus dem Modul "Fachsprache und Terminologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Fachsprache und Terminologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 1),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 2),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 3),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 4),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Homework: Wiederholung: Diskussion und Argumentation', 'Complete these tasks to reinforce "Wiederholung: Diskussion und Argumentation" (Diskussion und Argumentation).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Diskussion und Argumentation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'In this lesson on "Wiederholung: Diskussion und Argumentation" (Diskussion und Argumentation), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Diskussion und Argumentation\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Diskussion und Argumentation\""}]', ARRAY['"Wiederholung: Diskussion und Argumentation" core vocabulary', 'Diskussion und Argumentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Diskussion und Argumentation — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Diskussion und Argumentation" aloud. Focus on correct pronunciation.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Diskussion und Argumentation — Speaking 2', 'Role-play: Imagine you are in a situation related to Diskussion und Argumentation. Have a dialogue with a partner.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Diskussion und Argumentation — Conversation 1', 'Practice a realistic conversation about wiederholung: diskussion und argumentation in the context of Diskussion und Argumentation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Diskussion und Argumentation" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Diskussion und Argumentation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Diskussion und Argumentation". The dialogue should be realistic and related to Diskussion und Argumentation.', 'Creative practice for Wiederholung: Diskussion und Argumentation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Diskussion und Argumentation — Reading Practice', 'This is a B2-level reading passage about wiederholung: diskussion und argumentation in the context of Diskussion und Argumentation.

Wiederholung: Diskussion und Argumentation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diskussion und Argumentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Diskussion und Argumentation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Diskussion und Argumentation" aus dem Modul "Diskussion und Argumentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diskussion und Argumentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 1),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 2),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 3),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 4),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Homework: Wiederholung: Präsentationen und Vorträge', 'Complete these tasks to reinforce "Wiederholung: Präsentationen und Vorträge" (Präsentationen und Vorträge).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Präsentationen und Vorträge\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'In this lesson on "Wiederholung: Präsentationen und Vorträge" (Präsentationen und Vorträge), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Präsentationen und Vorträge\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Präsentationen und Vorträge\""}]', ARRAY['"Wiederholung: Präsentationen und Vorträge" core vocabulary', 'Präsentationen und Vorträge key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Präsentationen und Vorträge — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Präsentationen und Vorträge" aloud. Focus on correct pronunciation.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Präsentationen und Vorträge — Speaking 2', 'Role-play: Imagine you are in a situation related to Präsentationen und Vorträge. Have a dialogue with a partner.', 'Speaking practice for Präsentationen und Vorträge', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Präsentationen und Vorträge — Conversation 1', 'Practice a realistic conversation about wiederholung: präsentationen und vorträge in the context of Präsentationen und Vorträge.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Präsentationen und Vorträge" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Präsentationen und Vorträge — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Präsentationen und Vorträge". The dialogue should be realistic and related to Präsentationen und Vorträge.', 'Creative practice for Wiederholung: Präsentationen und Vorträge', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Präsentationen und Vorträge — Reading Practice', 'This is a B2-level reading passage about wiederholung: präsentationen und vorträge in the context of Präsentationen und Vorträge.

Wiederholung: Präsentationen und Vorträge is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Präsentationen und Vorträge" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Präsentationen und Vorträge — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Präsentationen und Vorträge" aus dem Modul "Präsentationen und Vorträge".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Präsentationen und Vorträge');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 1),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 2),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 3),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 4),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Homework: Wiederholung: Fachsprache und Terminologie', 'Complete these tasks to reinforce "Wiederholung: Fachsprache und Terminologie" (Fachsprache und Terminologie).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Fachsprache und Terminologie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'In this lesson on "Wiederholung: Fachsprache und Terminologie" (Fachsprache und Terminologie), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Fachsprache und Terminologie\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Fachsprache und Terminologie\""}]', ARRAY['"Wiederholung: Fachsprache und Terminologie" core vocabulary', 'Fachsprache und Terminologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Fachsprache und Terminologie — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Fachsprache und Terminologie" aloud. Focus on correct pronunciation.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Fachsprache und Terminologie — Speaking 2', 'Role-play: Imagine you are in a situation related to Fachsprache und Terminologie. Have a dialogue with a partner.', 'Speaking practice for Fachsprache und Terminologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Fachsprache und Terminologie — Conversation 1', 'Practice a realistic conversation about wiederholung: fachsprache und terminologie in the context of Fachsprache und Terminologie.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Fachsprache und Terminologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Fachsprache und Terminologie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Fachsprache und Terminologie". The dialogue should be realistic and related to Fachsprache und Terminologie.', 'Creative practice for Wiederholung: Fachsprache und Terminologie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Fachsprache und Terminologie — Reading Practice', 'This is a B2-level reading passage about wiederholung: fachsprache und terminologie in the context of Fachsprache und Terminologie.

Wiederholung: Fachsprache und Terminologie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Fachsprache und Terminologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Fachsprache und Terminologie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Fachsprache und Terminologie" aus dem Modul "Fachsprache und Terminologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Fachsprache und Terminologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Homework: Wiederholung: Berufliche Kommunikation', 'Complete these tasks to reinforce "Wiederholung: Berufliche Kommunikation" (Berufliche Kommunikation).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Berufliche Kommunikation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'In this lesson on "Wiederholung: Berufliche Kommunikation" (Berufliche Kommunikation), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Berufliche Kommunikation\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Berufliche Kommunikation\""}]', ARRAY['"Wiederholung: Berufliche Kommunikation" core vocabulary', 'Berufliche Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Berufliche Kommunikation — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Berufliche Kommunikation" aloud. Focus on correct pronunciation.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Berufliche Kommunikation — Speaking 2', 'Role-play: Imagine you are in a situation related to Berufliche Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Berufliche Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Berufliche Kommunikation — Conversation 1', 'Practice a realistic conversation about wiederholung: berufliche kommunikation in the context of Berufliche Kommunikation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Berufliche Kommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Berufliche Kommunikation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Berufliche Kommunikation". The dialogue should be realistic and related to Berufliche Kommunikation.', 'Creative practice for Wiederholung: Berufliche Kommunikation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Berufliche Kommunikation — Reading Practice', 'This is a B2-level reading passage about wiederholung: berufliche kommunikation in the context of Berufliche Kommunikation.

Wiederholung: Berufliche Kommunikation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Berufliche Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Berufliche Kommunikation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Berufliche Kommunikation" aus dem Modul "Berufliche Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Berufliche Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 1),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 2),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 3),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 4),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Homework: Wiederholung: Diskussion und Argumentation', 'Complete these tasks to reinforce "Wiederholung: Diskussion und Argumentation" (Diskussion und Argumentation).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Diskussion und Argumentation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'In this lesson on "Wiederholung: Diskussion und Argumentation" (Diskussion und Argumentation), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Diskussion und Argumentation\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Diskussion und Argumentation\""}]', ARRAY['"Wiederholung: Diskussion und Argumentation" core vocabulary', 'Diskussion und Argumentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Diskussion und Argumentation — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Diskussion und Argumentation" aloud. Focus on correct pronunciation.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Diskussion und Argumentation — Speaking 2', 'Role-play: Imagine you are in a situation related to Diskussion und Argumentation. Have a dialogue with a partner.', 'Speaking practice for Diskussion und Argumentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Diskussion und Argumentation — Conversation 1', 'Practice a realistic conversation about wiederholung: diskussion und argumentation in the context of Diskussion und Argumentation.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Diskussion und Argumentation" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Diskussion und Argumentation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Diskussion und Argumentation". The dialogue should be realistic and related to Diskussion und Argumentation.', 'Creative practice for Wiederholung: Diskussion und Argumentation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Diskussion und Argumentation — Reading Practice', 'This is a B2-level reading passage about wiederholung: diskussion und argumentation in the context of Diskussion und Argumentation.

Wiederholung: Diskussion und Argumentation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diskussion und Argumentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Diskussion und Argumentation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Diskussion und Argumentation" aus dem Modul "Diskussion und Argumentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diskussion und Argumentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 1),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 2),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 3),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 4),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Homework: Wiederholung: Wirtschaft und Politik', 'Complete these tasks to reinforce "Wiederholung: Wirtschaft und Politik" (Wirtschaft und Politik).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Wirtschaft und Politik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'In this lesson on "Wiederholung: Wirtschaft und Politik" (Wirtschaft und Politik), you learned key review concepts at B2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wirtschaft und Politik\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wirtschaft und Politik\""}]', ARRAY['"Wiederholung: Wirtschaft und Politik" core vocabulary', 'Wirtschaft und Politik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wirtschaft und Politik — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wirtschaft und Politik" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wirtschaft und Politik — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaft und Politik. Have a dialogue with a partner.', 'Speaking practice for Wirtschaft und Politik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wirtschaft und Politik — Conversation 1', 'Practice a realistic conversation about wiederholung: wirtschaft und politik in the context of Wirtschaft und Politik.', 'Student', 'Teacher', 'You are a student at B2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wirtschaft und Politik" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wirtschaft und Politik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wirtschaft und Politik". The dialogue should be realistic and related to Wirtschaft und Politik.', 'Creative practice for Wiederholung: Wirtschaft und Politik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wirtschaft und Politik — Reading Practice', 'This is a B2-level reading passage about wiederholung: wirtschaft und politik in the context of Wirtschaft und Politik.

Wiederholung: Wirtschaft und Politik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaft und Politik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wirtschaft und Politik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wirtschaft und Politik" aus dem Modul "Wirtschaft und Politik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaft und Politik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 1),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 2),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 3),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 4),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 1),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 2),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 3),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 4),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 1),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 2),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 3),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 4),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 1),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 2),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 3),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 4),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 1),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 2),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 3),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 4),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 1),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 2),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 3),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Fachsprache und Terminologie', 'neutral', false, NULL, 4),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Fachsprache und Terminologie', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 1),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 2),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 3),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Präsentationen und Vorträge', 'neutral', false, NULL, 4),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Präsentationen und Vorträge', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 1),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 2),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 3),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Diskussion und Argumentation', 'neutral', false, NULL, 4),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Diskussion und Argumentation', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 1),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 2),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 3),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kultur und Gesellschaft', 'neutral', false, NULL, 4),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kultur und Gesellschaft', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 1),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 2),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Berufliche Kommunikation', 'formal', false, NULL, 3),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 4),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 5),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 6),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Berufliche Kommunikation', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 1),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 2),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 3),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaft und Politik', 'neutral', false, NULL, 4),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaft und Politik', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);