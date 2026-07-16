-- ============================================================
-- PREMIUM CONTENT SEED — Level C2
-- Generated for 36 lessons across 6 modules
-- ============================================================


INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000010', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000010', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000010', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000010', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000010', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000010', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000010', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 10);

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
  ('00000000-0000-0000-0000-000000000010', 'Homework: Wortbildung: Komposition, Derivation, Konversion', 'Complete these tasks to reinforce "Wortbildung: Komposition, Derivation, Konversion" (Linguistik und Stilistik).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wortbildung: Komposition, Derivation, Konversion\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000010', 'In this lesson on "Wortbildung: Komposition, Derivation, Konversion" (Linguistik und Stilistik), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wortbildung: Komposition, Derivation, Konversion\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wortbildung: Komposition, Derivation, Konversion\""}]', ARRAY['"Wortbildung: Komposition, Derivation, Konversion" core vocabulary', 'Linguistik und Stilistik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Wortbildung: Komposition, Derivation, Konversion — Speaking 1', 'Practice the key vocabulary and phrases from "Wortbildung: Komposition, Derivation, Konversion" aloud. Focus on correct pronunciation.', 'Speaking practice for Linguistik und Stilistik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Wortbildung: Komposition, Derivation, Konversion — Speaking 2', 'Role-play: Imagine you are in a situation related to Linguistik und Stilistik. Have a dialogue with a partner.', 'Speaking practice for Linguistik und Stilistik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Wortbildung: Komposition, Derivation, Konversion — Writing Task 1', 'Write a short text (50-100 words) about wortbildung: komposition, derivation, konversion. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Wortbildung: Komposition, Derivation, Konversion — Conversation 1', 'Practice a realistic conversation about wortbildung: komposition, derivation, konversion in the context of Linguistik und Stilistik.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wortbildung: Komposition, Derivation, Konversion" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Wortbildung: Komposition, Derivation, Konversion — Conversation 2', 'Practice a realistic conversation about wortbildung: komposition, derivation, konversion in the context of Linguistik und Stilistik.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wortbildung: Komposition, Derivation, Konversion" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Wortbildung: Komposition, Derivation, Konversion — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wortbildung: Komposition, Derivation, Konversion". The dialogue should be realistic and related to Linguistik und Stilistik.', 'Creative practice for Wortbildung: Komposition, Derivation, Konversion', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Wortbildung: Komposition, Derivation, Konversion — Deep Understanding', 'Explain the most important concepts from "Wortbildung: Komposition, Derivation, Konversion" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wortbildung: Komposition, Derivation, Konversion', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Wortbildung: Komposition, Derivation, Konversion — Reading Practice', 'This is a C2-level reading passage about wortbildung: komposition, derivation, konversion in the context of Linguistik und Stilistik.

Wortbildung: Komposition, Derivation, Konversion is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Linguistik und Stilistik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Wortbildung: Komposition, Derivation, Konversion — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wortbildung: Komposition, Derivation, Konversion" aus dem Modul "Linguistik und Stilistik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Linguistik und Stilistik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000011', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000011', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000011', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000011', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000011', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000011', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000011', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000011', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000011', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('00000000-0000-0000-0000-000000000011', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('00000000-0000-0000-0000-000000000011', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('00000000-0000-0000-0000-000000000011', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('00000000-0000-0000-0000-000000000011', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('00000000-0000-0000-0000-000000000011', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('00000000-0000-0000-0000-000000000011', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('00000000-0000-0000-0000-000000000011', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Homework: Wissenschaftlicher Wortschatz: Grundbegriffe', 'Complete these tasks to reinforce "Wissenschaftlicher Wortschatz: Grundbegriffe" (Wissenschaftliche Publikationen).', 'writing', '[{"description":"Review all vocabulary from \"Wissenschaftlicher Wortschatz: Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000011', 'In this lesson on "Wissenschaftlicher Wortschatz: Grundbegriffe" (Wissenschaftliche Publikationen), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftlicher Wortschatz: Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftlicher Wortschatz: Grundbegriffe\""}]', ARRAY['"Wissenschaftlicher Wortschatz: Grundbegriffe" core vocabulary', 'Wissenschaftliche Publikationen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftlicher Wortschatz: Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftlicher Wortschatz: Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaftliche Publikationen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftlicher Wortschatz: Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaftliche Publikationen. Have a dialogue with a partner.', 'Speaking practice for Wissenschaftliche Publikationen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftlicher Wortschatz: Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftlicher wortschatz: grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftlicher Wortschatz: Grundbegriffe — Conversation 1', 'Practice a realistic conversation about wissenschaftlicher wortschatz: grundbegriffe in the context of Wissenschaftliche Publikationen.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftlicher Wortschatz: Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftlicher Wortschatz: Grundbegriffe — Conversation 2', 'Practice a realistic conversation about wissenschaftlicher wortschatz: grundbegriffe in the context of Wissenschaftliche Publikationen.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftlicher Wortschatz: Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftlicher Wortschatz: Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftlicher Wortschatz: Grundbegriffe". The dialogue should be realistic and related to Wissenschaftliche Publikationen.', 'Creative practice for Wissenschaftlicher Wortschatz: Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftlicher Wortschatz: Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Wissenschaftlicher Wortschatz: Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftlicher Wortschatz: Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftlicher Wortschatz: Grundbegriffe — Reading Practice', 'This is a C2-level reading passage about wissenschaftlicher wortschatz: grundbegriffe in the context of Wissenschaftliche Publikationen.

Wissenschaftlicher Wortschatz: Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaftliche Publikationen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftlicher Wortschatz: Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftlicher Wortschatz: Grundbegriffe" aus dem Modul "Wissenschaftliche Publikationen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaftliche Publikationen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Rechtssprache', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000012', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Rechtssprache', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000012', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Rechtssprache', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000012', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Rechtssprache', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000012', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Rechtssprache', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000012', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Rechtssprache', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000012', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Rechtssprache', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000012', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Rechtssprache', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000012', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Rechtssprache', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000012', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Rechtssprache', 'informal', false, NULL, 10);

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
  ('00000000-0000-0000-0000-000000000012', 'Homework: Juristische Grundbegriffe', 'Complete these tasks to reinforce "Juristische Grundbegriffe" (Rechtssprache).', 'speaking', '[{"description":"Review all vocabulary from \"Juristische Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000012', 'In this lesson on "Juristische Grundbegriffe" (Rechtssprache), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Juristische Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Juristische Grundbegriffe\""}]', ARRAY['"Juristische Grundbegriffe" core vocabulary', 'Rechtssprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Juristische Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Juristische Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Rechtssprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Juristische Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Rechtssprache. Have a dialogue with a partner.', 'Speaking practice for Rechtssprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Juristische Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about juristische grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Juristische Grundbegriffe — Conversation 1', 'Practice a realistic conversation about juristische grundbegriffe in the context of Rechtssprache.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Juristische Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Juristische Grundbegriffe — Conversation 2', 'Practice a realistic conversation about juristische grundbegriffe in the context of Rechtssprache.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Juristische Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Juristische Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Juristische Grundbegriffe". The dialogue should be realistic and related to Rechtssprache.', 'Creative practice for Juristische Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Juristische Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Juristische Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Juristische Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Juristische Grundbegriffe — Reading Practice', 'This is a C2-level reading passage about juristische grundbegriffe in the context of Rechtssprache.

Juristische Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Rechtssprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Juristische Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Juristische Grundbegriffe" aus dem Modul "Rechtssprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Rechtssprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 1),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 2),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 3),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 4),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 5),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 6),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 7),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 8),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 9),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 10);

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
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Homework: Diplomatischer Wortschatz', 'Complete these tasks to reinforce "Diplomatischer Wortschatz" (Diplomatie und Verhandlung).', 'reading', '[{"description":"Review all vocabulary from \"Diplomatischer Wortschatz\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'In this lesson on "Diplomatischer Wortschatz" (Diplomatie und Verhandlung), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Diplomatischer Wortschatz\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Diplomatischer Wortschatz\""}]', ARRAY['"Diplomatischer Wortschatz" core vocabulary', 'Diplomatie und Verhandlung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Diplomatischer Wortschatz — Speaking 1', 'Practice the key vocabulary and phrases from "Diplomatischer Wortschatz" aloud. Focus on correct pronunciation.', 'Speaking practice for Diplomatie und Verhandlung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Diplomatischer Wortschatz — Speaking 2', 'Role-play: Imagine you are in a situation related to Diplomatie und Verhandlung. Have a dialogue with a partner.', 'Speaking practice for Diplomatie und Verhandlung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Diplomatischer Wortschatz — Writing Task 1', 'Write a short text (50-100 words) about diplomatischer wortschatz. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Diplomatischer Wortschatz — Conversation 1', 'Practice a realistic conversation about diplomatischer wortschatz in the context of Diplomatie und Verhandlung.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Diplomatischer Wortschatz" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Diplomatischer Wortschatz — Conversation 2', 'Practice a realistic conversation about diplomatischer wortschatz in the context of Diplomatie und Verhandlung.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Diplomatischer Wortschatz" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Diplomatischer Wortschatz — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Diplomatischer Wortschatz". The dialogue should be realistic and related to Diplomatie und Verhandlung.', 'Creative practice for Diplomatischer Wortschatz', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Diplomatischer Wortschatz — Deep Understanding', 'Explain the most important concepts from "Diplomatischer Wortschatz" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Diplomatischer Wortschatz', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Diplomatischer Wortschatz — Reading Practice', 'This is a C2-level reading passage about diplomatischer wortschatz in the context of Diplomatie und Verhandlung.

Diplomatischer Wortschatz is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diplomatie und Verhandlung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Diplomatischer Wortschatz — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Diplomatischer Wortschatz" aus dem Modul "Diplomatie und Verhandlung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diplomatie und Verhandlung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 1),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 2),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Philosophie und Ethik', 'informal', false, NULL, 3),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Philosophie und Ethik', 'informal', false, NULL, 4),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 5),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Philosophie und Ethik', 'formal', false, NULL, 6),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Philosophie und Ethik', 'informal', false, NULL, 7),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 8),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 9),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Philosophie und Ethik', 'informal', false, NULL, 10);

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
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Homework: Philosophische Grundbegriffe', 'Complete these tasks to reinforce "Philosophische Grundbegriffe" (Philosophie und Ethik).', 'grammar', '[{"description":"Review all vocabulary from \"Philosophische Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'In this lesson on "Philosophische Grundbegriffe" (Philosophie und Ethik), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Philosophische Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Philosophische Grundbegriffe\""}]', ARRAY['"Philosophische Grundbegriffe" core vocabulary', 'Philosophie und Ethik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Philosophische Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Philosophische Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Philosophie und Ethik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Philosophische Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Philosophie und Ethik. Have a dialogue with a partner.', 'Speaking practice for Philosophie und Ethik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Philosophische Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about philosophische grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Philosophische Grundbegriffe — Conversation 1', 'Practice a realistic conversation about philosophische grundbegriffe in the context of Philosophie und Ethik.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Philosophische Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Philosophische Grundbegriffe — Conversation 2', 'Practice a realistic conversation about philosophische grundbegriffe in the context of Philosophie und Ethik.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Philosophische Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Philosophische Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Philosophische Grundbegriffe". The dialogue should be realistic and related to Philosophie und Ethik.', 'Creative practice for Philosophische Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Philosophische Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Philosophische Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Philosophische Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Philosophische Grundbegriffe — Reading Practice', 'This is a C2-level reading passage about philosophische grundbegriffe in the context of Philosophie und Ethik.

Philosophische Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Philosophie und Ethik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Philosophische Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Philosophische Grundbegriffe" aus dem Modul "Philosophie und Ethik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Philosophie und Ethik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Das Wetter ist heute schön.', 'The weather is nice today.', 'الطقس جميل اليوم.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 1),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Es regnet.', 'It is raining.', 'إنها تمطر.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 2),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Die Sonne scheint.', 'The sun is shining.', 'الشمس مشرقة.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 3),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Es ist kalt draußen.', 'It is cold outside.', 'الجو بارد في الخارج.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 4),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wie wird das Wetter morgen?', 'What will the weather be like tomorrow?', 'كيف سيكون الطقس غداً؟', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 5);

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
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Homework: Rhetorische Mittel: Anapher, Klimax, Antithese', 'Complete these tasks to reinforce "Rhetorische Mittel: Anapher, Klimax, Antithese" (Rhetorik und Präsentation).', 'mixed', '[{"description":"Review all vocabulary from \"Rhetorische Mittel: Anapher, Klimax, Antithese\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'In this lesson on "Rhetorische Mittel: Anapher, Klimax, Antithese" (Rhetorik und Präsentation), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Rhetorische Mittel: Anapher, Klimax, Antithese\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Rhetorische Mittel: Anapher, Klimax, Antithese\""}]', ARRAY['"Rhetorische Mittel: Anapher, Klimax, Antithese" core vocabulary', 'Rhetorik und Präsentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Rhetorische Mittel: Anapher, Klimax, Antithese — Speaking 1', 'Practice the key vocabulary and phrases from "Rhetorische Mittel: Anapher, Klimax, Antithese" aloud. Focus on correct pronunciation.', 'Speaking practice for Rhetorik und Präsentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Rhetorische Mittel: Anapher, Klimax, Antithese — Speaking 2', 'Role-play: Imagine you are in a situation related to Rhetorik und Präsentation. Have a dialogue with a partner.', 'Speaking practice for Rhetorik und Präsentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Rhetorische Mittel: Anapher, Klimax, Antithese — Writing Task 1', 'Write a short text (50-100 words) about rhetorische mittel: anapher, klimax, antithese. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Rhetorische Mittel: Anapher, Klimax, Antithese — Conversation 1', 'Practice a realistic conversation about rhetorische mittel: anapher, klimax, antithese in the context of Rhetorik und Präsentation.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Rhetorische Mittel: Anapher, Klimax, Antithese" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Rhetorische Mittel: Anapher, Klimax, Antithese — Conversation 2', 'Practice a realistic conversation about rhetorische mittel: anapher, klimax, antithese in the context of Rhetorik und Präsentation.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Rhetorische Mittel: Anapher, Klimax, Antithese" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Rhetorische Mittel: Anapher, Klimax, Antithese — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Rhetorische Mittel: Anapher, Klimax, Antithese". The dialogue should be realistic and related to Rhetorik und Präsentation.', 'Creative practice for Rhetorische Mittel: Anapher, Klimax, Antithese', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Rhetorische Mittel: Anapher, Klimax, Antithese — Deep Understanding', 'Explain the most important concepts from "Rhetorische Mittel: Anapher, Klimax, Antithese" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Rhetorische Mittel: Anapher, Klimax, Antithese', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Rhetorische Mittel: Anapher, Klimax, Antithese — Reading Practice', 'This is a C2-level reading passage about rhetorische mittel: anapher, klimax, antithese in the context of Rhetorik und Präsentation.

Rhetorische Mittel: Anapher, Klimax, Antithese is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Rhetorik und Präsentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Rhetorische Mittel: Anapher, Klimax, Antithese — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Rhetorische Mittel: Anapher, Klimax, Antithese" aus dem Modul "Rhetorik und Präsentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Rhetorik und Präsentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 1),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 2),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 3),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 4),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 5),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 6),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 7),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 8),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 9),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 10);

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
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Homework: Wissenschaftliche Textsorten', 'Complete these tasks to reinforce "Wissenschaftliche Textsorten" (Wissenschaftliche Publikationen).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wissenschaftliche Textsorten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'In this lesson on "Wissenschaftliche Textsorten" (Wissenschaftliche Publikationen), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Textsorten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Textsorten\""}]', ARRAY['"Wissenschaftliche Textsorten" core vocabulary', 'Wissenschaftliche Publikationen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Textsorten — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Textsorten" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaftliche Publikationen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Textsorten — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaftliche Publikationen. Have a dialogue with a partner.', 'Speaking practice for Wissenschaftliche Publikationen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Textsorten — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche textsorten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Textsorten — Conversation 1', 'Practice a realistic conversation about wissenschaftliche textsorten in the context of Wissenschaftliche Publikationen.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Textsorten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Textsorten — Conversation 2', 'Practice a realistic conversation about wissenschaftliche textsorten in the context of Wissenschaftliche Publikationen.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Textsorten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Textsorten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Textsorten". The dialogue should be realistic and related to Wissenschaftliche Publikationen.', 'Creative practice for Wissenschaftliche Textsorten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Textsorten — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Textsorten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Textsorten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Textsorten — Reading Practice', 'This is a C2-level reading passage about wissenschaftliche textsorten in the context of Wissenschaftliche Publikationen.

Wissenschaftliche Textsorten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaftliche Publikationen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wissenschaftliche Textsorten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Textsorten" aus dem Modul "Wissenschaftliche Publikationen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaftliche Publikationen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 1),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 2),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 3),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 4),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 5),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 6),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 7),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 8),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 9),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 10);

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
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Homework: Verhandlungsstrategien', 'Complete these tasks to reinforce "Verhandlungsstrategien" (Diplomatie und Verhandlung).', 'writing', '[{"description":"Review all vocabulary from \"Verhandlungsstrategien\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'In this lesson on "Verhandlungsstrategien" (Diplomatie und Verhandlung), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Verhandlungsstrategien\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Verhandlungsstrategien\""}]', ARRAY['"Verhandlungsstrategien" core vocabulary', 'Diplomatie und Verhandlung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Verhandlungsstrategien — Speaking 1', 'Practice the key vocabulary and phrases from "Verhandlungsstrategien" aloud. Focus on correct pronunciation.', 'Speaking practice for Diplomatie und Verhandlung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Verhandlungsstrategien — Speaking 2', 'Role-play: Imagine you are in a situation related to Diplomatie und Verhandlung. Have a dialogue with a partner.', 'Speaking practice for Diplomatie und Verhandlung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Verhandlungsstrategien — Writing Task 1', 'Write a short text (50-100 words) about verhandlungsstrategien. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Verhandlungsstrategien — Conversation 1', 'Practice a realistic conversation about verhandlungsstrategien in the context of Diplomatie und Verhandlung.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verhandlungsstrategien" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Verhandlungsstrategien — Conversation 2', 'Practice a realistic conversation about verhandlungsstrategien in the context of Diplomatie und Verhandlung.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verhandlungsstrategien" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Verhandlungsstrategien — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Verhandlungsstrategien". The dialogue should be realistic and related to Diplomatie und Verhandlung.', 'Creative practice for Verhandlungsstrategien', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Verhandlungsstrategien — Deep Understanding', 'Explain the most important concepts from "Verhandlungsstrategien" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Verhandlungsstrategien', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Verhandlungsstrategien — Reading Practice', 'This is a C2-level reading passage about verhandlungsstrategien in the context of Diplomatie und Verhandlung.

Verhandlungsstrategien is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diplomatie und Verhandlung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Verhandlungsstrategien — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Verhandlungsstrategien" aus dem Modul "Diplomatie und Verhandlung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diplomatie und Verhandlung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 1),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 2),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Rhetorik und Präsentation', 'informal', false, NULL, 3),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Rhetorik und Präsentation', 'informal', false, NULL, 4),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 5),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 6),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Rhetorik und Präsentation', 'informal', false, NULL, 7),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 8),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 9),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Rhetorik und Präsentation', 'informal', false, NULL, 10);

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
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Homework: Präsentationstechniken', 'Complete these tasks to reinforce "Präsentationstechniken" (Rhetorik und Präsentation).', 'speaking', '[{"description":"Review all vocabulary from \"Präsentationstechniken\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'In this lesson on "Präsentationstechniken" (Rhetorik und Präsentation), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Präsentationstechniken\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Präsentationstechniken\""}]', ARRAY['"Präsentationstechniken" core vocabulary', 'Rhetorik und Präsentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Präsentationstechniken — Speaking 1', 'Practice the key vocabulary and phrases from "Präsentationstechniken" aloud. Focus on correct pronunciation.', 'Speaking practice for Rhetorik und Präsentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Präsentationstechniken — Speaking 2', 'Role-play: Imagine you are in a situation related to Rhetorik und Präsentation. Have a dialogue with a partner.', 'Speaking practice for Rhetorik und Präsentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Präsentationstechniken — Writing Task 1', 'Write a short text (50-100 words) about präsentationstechniken. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Präsentationstechniken — Conversation 1', 'Practice a realistic conversation about präsentationstechniken in the context of Rhetorik und Präsentation.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präsentationstechniken" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Präsentationstechniken — Conversation 2', 'Practice a realistic conversation about präsentationstechniken in the context of Rhetorik und Präsentation.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präsentationstechniken" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Präsentationstechniken — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präsentationstechniken". The dialogue should be realistic and related to Rhetorik und Präsentation.', 'Creative practice for Präsentationstechniken', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Präsentationstechniken — Deep Understanding', 'Explain the most important concepts from "Präsentationstechniken" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Präsentationstechniken', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Präsentationstechniken — Reading Practice', 'This is a C2-level reading passage about präsentationstechniken in the context of Rhetorik und Präsentation.

Präsentationstechniken is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Rhetorik und Präsentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Präsentationstechniken — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Präsentationstechniken" aus dem Modul "Rhetorik und Präsentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Rhetorik und Präsentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 1),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 2),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 3),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 4),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 5),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 6),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 7),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 8),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 9),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 10);

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
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Homework: Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie', 'Complete these tasks to reinforce "Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie" (Linguistik und Stilistik).', 'reading', '[{"description":"Review all vocabulary from \"Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'In this lesson on "Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie" (Linguistik und Stilistik), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie\""}]', ARRAY['"Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie" core vocabulary', 'Linguistik und Stilistik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie — Speaking 1', 'Practice the key vocabulary and phrases from "Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie" aloud. Focus on correct pronunciation.', 'Speaking practice for Linguistik und Stilistik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie — Speaking 2', 'Role-play: Imagine you are in a situation related to Linguistik und Stilistik. Have a dialogue with a partner.', 'Speaking practice for Linguistik und Stilistik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie — Writing Task 1', 'Write a short text (50-100 words) about stilfiguren: metapher, metonymie, synekdoche, ironie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie — Conversation 1', 'Practice a realistic conversation about stilfiguren: metapher, metonymie, synekdoche, ironie in the context of Linguistik und Stilistik.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie — Conversation 2', 'Practice a realistic conversation about stilfiguren: metapher, metonymie, synekdoche, ironie in the context of Linguistik und Stilistik.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie". The dialogue should be realistic and related to Linguistik und Stilistik.', 'Creative practice for Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie — Deep Understanding', 'Explain the most important concepts from "Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie — Reading Practice', 'This is a C2-level reading passage about stilfiguren: metapher, metonymie, synekdoche, ironie in the context of Linguistik und Stilistik.

Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Linguistik und Stilistik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Stilfiguren: Metapher, Metonymie, Synekdoche, Ironie" aus dem Modul "Linguistik und Stilistik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Linguistik und Stilistik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Rechtssprache', 'formal', false, NULL, 1),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Rechtssprache', 'formal', false, NULL, 2),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Rechtssprache', 'informal', false, NULL, 3),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Rechtssprache', 'informal', false, NULL, 4),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Rechtssprache', 'formal', false, NULL, 5),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Rechtssprache', 'formal', false, NULL, 6),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Rechtssprache', 'informal', false, NULL, 7),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Rechtssprache', 'neutral', false, NULL, 8),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Rechtssprache', 'neutral', false, NULL, 9),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Rechtssprache', 'informal', false, NULL, 10);

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
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Homework: Rechtsbereiche und Institutionen', 'Complete these tasks to reinforce "Rechtsbereiche und Institutionen" (Rechtssprache).', 'grammar', '[{"description":"Review all vocabulary from \"Rechtsbereiche und Institutionen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'In this lesson on "Rechtsbereiche und Institutionen" (Rechtssprache), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Rechtsbereiche und Institutionen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Rechtsbereiche und Institutionen\""}]', ARRAY['"Rechtsbereiche und Institutionen" core vocabulary', 'Rechtssprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Rechtsbereiche und Institutionen — Speaking 1', 'Practice the key vocabulary and phrases from "Rechtsbereiche und Institutionen" aloud. Focus on correct pronunciation.', 'Speaking practice for Rechtssprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Rechtsbereiche und Institutionen — Speaking 2', 'Role-play: Imagine you are in a situation related to Rechtssprache. Have a dialogue with a partner.', 'Speaking practice for Rechtssprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Rechtsbereiche und Institutionen — Writing Task 1', 'Write a short text (50-100 words) about rechtsbereiche und institutionen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Rechtsbereiche und Institutionen — Conversation 1', 'Practice a realistic conversation about rechtsbereiche und institutionen in the context of Rechtssprache.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Rechtsbereiche und Institutionen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Rechtsbereiche und Institutionen — Conversation 2', 'Practice a realistic conversation about rechtsbereiche und institutionen in the context of Rechtssprache.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Rechtsbereiche und Institutionen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Rechtsbereiche und Institutionen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Rechtsbereiche und Institutionen". The dialogue should be realistic and related to Rechtssprache.', 'Creative practice for Rechtsbereiche und Institutionen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Rechtsbereiche und Institutionen — Deep Understanding', 'Explain the most important concepts from "Rechtsbereiche und Institutionen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Rechtsbereiche und Institutionen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Rechtsbereiche und Institutionen — Reading Practice', 'This is a C2-level reading passage about rechtsbereiche und institutionen in the context of Rechtssprache.

Rechtsbereiche und Institutionen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Rechtssprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Rechtsbereiche und Institutionen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Rechtsbereiche und Institutionen" aus dem Modul "Rechtssprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Rechtssprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 1),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 2),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Philosophie und Ethik', 'informal', false, NULL, 3),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Philosophie und Ethik', 'informal', false, NULL, 4),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 5),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Philosophie und Ethik', 'formal', false, NULL, 6),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Philosophie und Ethik', 'informal', false, NULL, 7),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 8),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 9),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Philosophie und Ethik', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Homework: Ethische Konzepte', 'Complete these tasks to reinforce "Ethische Konzepte" (Philosophie und Ethik).', 'mixed', '[{"description":"Review all vocabulary from \"Ethische Konzepte\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'In this lesson on "Ethische Konzepte" (Philosophie und Ethik), you learned key vocabulary concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Ethische Konzepte\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Ethische Konzepte\""}]', ARRAY['"Ethische Konzepte" core vocabulary', 'Philosophie und Ethik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ethische Konzepte — Speaking 1', 'Practice the key vocabulary and phrases from "Ethische Konzepte" aloud. Focus on correct pronunciation.', 'Speaking practice for Philosophie und Ethik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ethische Konzepte — Speaking 2', 'Role-play: Imagine you are in a situation related to Philosophie und Ethik. Have a dialogue with a partner.', 'Speaking practice for Philosophie und Ethik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ethische Konzepte — Writing Task 1', 'Write a short text (50-100 words) about ethische konzepte. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ethische Konzepte — Conversation 1', 'Practice a realistic conversation about ethische konzepte in the context of Philosophie und Ethik.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Ethische Konzepte" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ethische Konzepte — Conversation 2', 'Practice a realistic conversation about ethische konzepte in the context of Philosophie und Ethik.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Ethische Konzepte" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ethische Konzepte — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Ethische Konzepte". The dialogue should be realistic and related to Philosophie und Ethik.', 'Creative practice for Ethische Konzepte', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ethische Konzepte — Deep Understanding', 'Explain the most important concepts from "Ethische Konzepte" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Ethische Konzepte', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ethische Konzepte — Reading Practice', 'This is a C2-level reading passage about ethische konzepte in the context of Philosophie und Ethik.

Ethische Konzepte is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Philosophie und Ethik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ethische Konzepte — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Ethische Konzepte" aus dem Modul "Philosophie und Ethik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Philosophie und Ethik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 1),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 2),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 3),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 4),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Rhetorik und Präsentation', 'informal', false, NULL, 5),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 6),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 7),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Homework: Satzmelodie und Betonung', 'Complete these tasks to reinforce "Satzmelodie und Betonung" (Rhetorik und Präsentation).', 'vocabulary', '[{"description":"Review all vocabulary from \"Satzmelodie und Betonung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'In this lesson on "Satzmelodie und Betonung" (Rhetorik und Präsentation), you learned key grammar concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Satzmelodie und Betonung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Satzmelodie und Betonung\""}]', ARRAY['"Satzmelodie und Betonung" core vocabulary', 'Rhetorik und Präsentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Satzmelodie und Betonung — Speaking 1', 'Practice the key vocabulary and phrases from "Satzmelodie und Betonung" aloud. Focus on correct pronunciation.', 'Speaking practice for Rhetorik und Präsentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Satzmelodie und Betonung — Speaking 2', 'Role-play: Imagine you are in a situation related to Rhetorik und Präsentation. Have a dialogue with a partner.', 'Speaking practice for Rhetorik und Präsentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Satzmelodie und Betonung — Writing Task 1', 'Write a short text (50-100 words) about satzmelodie und betonung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Satzmelodie und Betonung — Conversation 1', 'Practice a realistic conversation about satzmelodie und betonung in the context of Rhetorik und Präsentation.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Satzmelodie und Betonung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Satzmelodie und Betonung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Satzmelodie und Betonung". The dialogue should be realistic and related to Rhetorik und Präsentation.', 'Creative practice for Satzmelodie und Betonung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Satzmelodie und Betonung — Deep Understanding', 'Explain the most important concepts from "Satzmelodie und Betonung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Satzmelodie und Betonung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Satzmelodie und Betonung — Reading Practice', 'This is a C2-level reading passage about satzmelodie und betonung in the context of Rhetorik und Präsentation.

Satzmelodie und Betonung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Rhetorik und Präsentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Satzmelodie und Betonung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Satzmelodie und Betonung" aus dem Modul "Rhetorik und Präsentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Rhetorik und Präsentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Philosophie und Ethik', 'informal', false, NULL, 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 7),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Homework: Argumentationsstrategien: These–Antithese–Synthese', 'Complete these tasks to reinforce "Argumentationsstrategien: These–Antithese–Synthese" (Philosophie und Ethik).', 'writing', '[{"description":"Review all vocabulary from \"Argumentationsstrategien: These–Antithese–Synthese\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'In this lesson on "Argumentationsstrategien: These–Antithese–Synthese" (Philosophie und Ethik), you learned key grammar concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Argumentationsstrategien: These–Antithese–Synthese\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Argumentationsstrategien: These–Antithese–Synthese\""}]', ARRAY['"Argumentationsstrategien: These–Antithese–Synthese" core vocabulary', 'Philosophie und Ethik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Argumentationsstrategien: These–Antithese–Synthese — Speaking 1', 'Practice the key vocabulary and phrases from "Argumentationsstrategien: These–Antithese–Synthese" aloud. Focus on correct pronunciation.', 'Speaking practice for Philosophie und Ethik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Argumentationsstrategien: These–Antithese–Synthese — Speaking 2', 'Role-play: Imagine you are in a situation related to Philosophie und Ethik. Have a dialogue with a partner.', 'Speaking practice for Philosophie und Ethik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Argumentationsstrategien: These–Antithese–Synthese — Writing Task 1', 'Write a short text (50-100 words) about argumentationsstrategien: these–antithese–synthese. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Argumentationsstrategien: These–Antithese–Synthese — Conversation 1', 'Practice a realistic conversation about argumentationsstrategien: these–antithese–synthese in the context of Philosophie und Ethik.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Argumentationsstrategien: These–Antithese–Synthese" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Argumentationsstrategien: These–Antithese–Synthese — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Argumentationsstrategien: These–Antithese–Synthese". The dialogue should be realistic and related to Philosophie und Ethik.', 'Creative practice for Argumentationsstrategien: These–Antithese–Synthese', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Argumentationsstrategien: These–Antithese–Synthese — Deep Understanding', 'Explain the most important concepts from "Argumentationsstrategien: These–Antithese–Synthese" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Argumentationsstrategien: These–Antithese–Synthese', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Argumentationsstrategien: These–Antithese–Synthese — Reading Practice', 'This is a C2-level reading passage about argumentationsstrategien: these–antithese–synthese in the context of Philosophie und Ethik.

Argumentationsstrategien: These–Antithese–Synthese is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Philosophie und Ethik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Argumentationsstrategien: These–Antithese–Synthese — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Argumentationsstrategien: These–Antithese–Synthese" aus dem Modul "Philosophie und Ethik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Philosophie und Ethik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 1),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 2),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 3),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 4),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 5),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 6),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 7),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Homework: Indirektheit und Vagheit in der Diplomatie', 'Complete these tasks to reinforce "Indirektheit und Vagheit in der Diplomatie" (Diplomatie und Verhandlung).', 'speaking', '[{"description":"Review all vocabulary from \"Indirektheit und Vagheit in der Diplomatie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'In this lesson on "Indirektheit und Vagheit in der Diplomatie" (Diplomatie und Verhandlung), you learned key grammar concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Indirektheit und Vagheit in der Diplomatie\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Indirektheit und Vagheit in der Diplomatie\""}]', ARRAY['"Indirektheit und Vagheit in der Diplomatie" core vocabulary', 'Diplomatie und Verhandlung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Indirektheit und Vagheit in der Diplomatie — Speaking 1', 'Practice the key vocabulary and phrases from "Indirektheit und Vagheit in der Diplomatie" aloud. Focus on correct pronunciation.', 'Speaking practice for Diplomatie und Verhandlung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Indirektheit und Vagheit in der Diplomatie — Speaking 2', 'Role-play: Imagine you are in a situation related to Diplomatie und Verhandlung. Have a dialogue with a partner.', 'Speaking practice for Diplomatie und Verhandlung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Indirektheit und Vagheit in der Diplomatie — Writing Task 1', 'Write a short text (50-100 words) about indirektheit und vagheit in der diplomatie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Indirektheit und Vagheit in der Diplomatie — Conversation 1', 'Practice a realistic conversation about indirektheit und vagheit in der diplomatie in the context of Diplomatie und Verhandlung.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Indirektheit und Vagheit in der Diplomatie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Indirektheit und Vagheit in der Diplomatie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Indirektheit und Vagheit in der Diplomatie". The dialogue should be realistic and related to Diplomatie und Verhandlung.', 'Creative practice for Indirektheit und Vagheit in der Diplomatie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Indirektheit und Vagheit in der Diplomatie — Deep Understanding', 'Explain the most important concepts from "Indirektheit und Vagheit in der Diplomatie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Indirektheit und Vagheit in der Diplomatie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Indirektheit und Vagheit in der Diplomatie — Reading Practice', 'This is a C2-level reading passage about indirektheit und vagheit in der diplomatie in the context of Diplomatie und Verhandlung.

Indirektheit und Vagheit in der Diplomatie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diplomatie und Verhandlung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 108, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Indirektheit und Vagheit in der Diplomatie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Indirektheit und Vagheit in der Diplomatie" aus dem Modul "Diplomatie und Verhandlung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diplomatie und Verhandlung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Rechtssprache', 'neutral', false, NULL, 1),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Rechtssprache', 'neutral', false, NULL, 2),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Rechtssprache', 'neutral', false, NULL, 3),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Rechtssprache', 'neutral', false, NULL, 4),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Rechtssprache', 'informal', false, NULL, 5),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Rechtssprache', 'neutral', false, NULL, 6),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Rechtssprache', 'neutral', false, NULL, 7),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Rechtssprache', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Homework: Konditionale Gefüge in der Rechtssprache', 'Complete these tasks to reinforce "Konditionale Gefüge in der Rechtssprache" (Rechtssprache).', 'reading', '[{"description":"Review all vocabulary from \"Konditionale Gefüge in der Rechtssprache\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'In this lesson on "Konditionale Gefüge in der Rechtssprache" (Rechtssprache), you learned key grammar concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Konditionale Gefüge in der Rechtssprache\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Konditionale Gefüge in der Rechtssprache\""}]', ARRAY['"Konditionale Gefüge in der Rechtssprache" core vocabulary', 'Rechtssprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Konditionale Gefüge in der Rechtssprache — Speaking 1', 'Practice the key vocabulary and phrases from "Konditionale Gefüge in der Rechtssprache" aloud. Focus on correct pronunciation.', 'Speaking practice for Rechtssprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Konditionale Gefüge in der Rechtssprache — Speaking 2', 'Role-play: Imagine you are in a situation related to Rechtssprache. Have a dialogue with a partner.', 'Speaking practice for Rechtssprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Konditionale Gefüge in der Rechtssprache — Writing Task 1', 'Write a short text (50-100 words) about konditionale gefüge in der rechtssprache. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Konditionale Gefüge in der Rechtssprache — Conversation 1', 'Practice a realistic conversation about konditionale gefüge in der rechtssprache in the context of Rechtssprache.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Konditionale Gefüge in der Rechtssprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Konditionale Gefüge in der Rechtssprache — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konditionale Gefüge in der Rechtssprache". The dialogue should be realistic and related to Rechtssprache.', 'Creative practice for Konditionale Gefüge in der Rechtssprache', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Konditionale Gefüge in der Rechtssprache — Deep Understanding', 'Explain the most important concepts from "Konditionale Gefüge in der Rechtssprache" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Konditionale Gefüge in der Rechtssprache', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Konditionale Gefüge in der Rechtssprache — Reading Practice', 'This is a C2-level reading passage about konditionale gefüge in der rechtssprache in the context of Rechtssprache.

Konditionale Gefüge in der Rechtssprache is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Rechtssprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Konditionale Gefüge in der Rechtssprache — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Konditionale Gefüge in der Rechtssprache" aus dem Modul "Rechtssprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Rechtssprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 1),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 2),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 3),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 4),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 5),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 6),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 7),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Homework: Sprachvarietäten und Register', 'Complete these tasks to reinforce "Sprachvarietäten und Register" (Linguistik und Stilistik).', 'grammar', '[{"description":"Review all vocabulary from \"Sprachvarietäten und Register\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'In this lesson on "Sprachvarietäten und Register" (Linguistik und Stilistik), you learned key grammar concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Sprachvarietäten und Register\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Sprachvarietäten und Register\""}]', ARRAY['"Sprachvarietäten und Register" core vocabulary', 'Linguistik und Stilistik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Sprachvarietäten und Register — Speaking 1', 'Practice the key vocabulary and phrases from "Sprachvarietäten und Register" aloud. Focus on correct pronunciation.', 'Speaking practice for Linguistik und Stilistik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Sprachvarietäten und Register — Speaking 2', 'Role-play: Imagine you are in a situation related to Linguistik und Stilistik. Have a dialogue with a partner.', 'Speaking practice for Linguistik und Stilistik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Sprachvarietäten und Register — Writing Task 1', 'Write a short text (50-100 words) about sprachvarietäten und register. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Sprachvarietäten und Register — Conversation 1', 'Practice a realistic conversation about sprachvarietäten und register in the context of Linguistik und Stilistik.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Sprachvarietäten und Register" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Sprachvarietäten und Register — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sprachvarietäten und Register". The dialogue should be realistic and related to Linguistik und Stilistik.', 'Creative practice for Sprachvarietäten und Register', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Sprachvarietäten und Register — Deep Understanding', 'Explain the most important concepts from "Sprachvarietäten und Register" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Sprachvarietäten und Register', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Sprachvarietäten und Register — Reading Practice', 'This is a C2-level reading passage about sprachvarietäten und register in the context of Linguistik und Stilistik.

Sprachvarietäten und Register is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Linguistik und Stilistik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Sprachvarietäten und Register — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Sprachvarietäten und Register" aus dem Modul "Linguistik und Stilistik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Linguistik und Stilistik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 1),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 2),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 3),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 4),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 5),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 6),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 7),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Homework: Komplexe Nominalphrasen mit erweiterten Attributen', 'Complete these tasks to reinforce "Komplexe Nominalphrasen mit erweiterten Attributen" (Wissenschaftliche Publikationen).', 'mixed', '[{"description":"Review all vocabulary from \"Komplexe Nominalphrasen mit erweiterten Attributen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'In this lesson on "Komplexe Nominalphrasen mit erweiterten Attributen" (Wissenschaftliche Publikationen), you learned key grammar concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Komplexe Nominalphrasen mit erweiterten Attributen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Komplexe Nominalphrasen mit erweiterten Attributen\""}]', ARRAY['"Komplexe Nominalphrasen mit erweiterten Attributen" core vocabulary', 'Wissenschaftliche Publikationen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Komplexe Nominalphrasen mit erweiterten Attributen — Speaking 1', 'Practice the key vocabulary and phrases from "Komplexe Nominalphrasen mit erweiterten Attributen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaftliche Publikationen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Komplexe Nominalphrasen mit erweiterten Attributen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaftliche Publikationen. Have a dialogue with a partner.', 'Speaking practice for Wissenschaftliche Publikationen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Komplexe Nominalphrasen mit erweiterten Attributen — Writing Task 1', 'Write a short text (50-100 words) about komplexe nominalphrasen mit erweiterten attributen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Komplexe Nominalphrasen mit erweiterten Attributen — Conversation 1', 'Practice a realistic conversation about komplexe nominalphrasen mit erweiterten attributen in the context of Wissenschaftliche Publikationen.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Komplexe Nominalphrasen mit erweiterten Attributen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Komplexe Nominalphrasen mit erweiterten Attributen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Komplexe Nominalphrasen mit erweiterten Attributen". The dialogue should be realistic and related to Wissenschaftliche Publikationen.', 'Creative practice for Komplexe Nominalphrasen mit erweiterten Attributen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Komplexe Nominalphrasen mit erweiterten Attributen — Deep Understanding', 'Explain the most important concepts from "Komplexe Nominalphrasen mit erweiterten Attributen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Komplexe Nominalphrasen mit erweiterten Attributen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Komplexe Nominalphrasen mit erweiterten Attributen — Reading Practice', 'This is a C2-level reading passage about komplexe nominalphrasen mit erweiterten attributen in the context of Wissenschaftliche Publikationen.

Komplexe Nominalphrasen mit erweiterten Attributen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaftliche Publikationen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Komplexe Nominalphrasen mit erweiterten Attributen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Komplexe Nominalphrasen mit erweiterten Attributen" aus dem Modul "Wissenschaftliche Publikationen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaftliche Publikationen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 6),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 7),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 8),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 9),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Diplomatie und Verhandlung', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Homework: Verhandlungsgespräche führen', 'Complete these tasks to reinforce "Verhandlungsgespräche führen" (Diplomatie und Verhandlung).', 'vocabulary', '[{"description":"Review all vocabulary from \"Verhandlungsgespräche führen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'In this lesson on "Verhandlungsgespräche führen" (Diplomatie und Verhandlung), you learned key speaking concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Verhandlungsgespräche führen\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Verhandlungsgespräche führen\""}]', ARRAY['"Verhandlungsgespräche führen" core vocabulary', 'Diplomatie und Verhandlung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Verhandlungsgespräche führen — Speaking 1', 'Practice the key vocabulary and phrases from "Verhandlungsgespräche führen" aloud. Focus on correct pronunciation.', 'Speaking practice for Diplomatie und Verhandlung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Verhandlungsgespräche führen — Speaking 2', 'Role-play: Imagine you are in a situation related to Diplomatie und Verhandlung. Have a dialogue with a partner.', 'Speaking practice for Diplomatie und Verhandlung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Verhandlungsgespräche führen — Writing Task 1', 'Write a short text (50-100 words) about verhandlungsgespräche führen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Verhandlungsgespräche führen — Conversation 1', 'Practice a realistic conversation about verhandlungsgespräche führen in the context of Diplomatie und Verhandlung.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verhandlungsgespräche führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Verhandlungsgespräche führen — Conversation 2', 'Practice a realistic conversation about verhandlungsgespräche führen in the context of Diplomatie und Verhandlung.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verhandlungsgespräche führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Verhandlungsgespräche führen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Verhandlungsgespräche führen". The dialogue should be realistic and related to Diplomatie und Verhandlung.', 'Creative practice for Verhandlungsgespräche führen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Verhandlungsgespräche führen — Reading Practice', 'This is a C2-level reading passage about verhandlungsgespräche führen in the context of Diplomatie und Verhandlung.

Verhandlungsgespräche führen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diplomatie und Verhandlung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Verhandlungsgespräche führen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Verhandlungsgespräche führen" aus dem Modul "Diplomatie und Verhandlung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diplomatie und Verhandlung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 1),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 2),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 3),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 4),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 5),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 6),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 7),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 8),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 9),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaftliche Publikationen', 'informal', false, NULL, 10);

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
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Homework: Wissenschaftliche Argumentation und konzessive Verknüpfungen', 'Complete these tasks to reinforce "Wissenschaftliche Argumentation und konzessive Verknüpfungen" (Wissenschaftliche Publikationen).', 'writing', '[{"description":"Review all vocabulary from \"Wissenschaftliche Argumentation und konzessive Verknüpfungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'In this lesson on "Wissenschaftliche Argumentation und konzessive Verknüpfungen" (Wissenschaftliche Publikationen), you learned key writing concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Argumentation und konzessive Verknüpfungen\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Argumentation und konzessive Verknüpfungen\""}]', ARRAY['"Wissenschaftliche Argumentation und konzessive Verknüpfungen" core vocabulary', 'Wissenschaftliche Publikationen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wissenschaftliche Argumentation und konzessive Verknüpfungen — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Argumentation und konzessive Verknüpfungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaftliche Publikationen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wissenschaftliche Argumentation und konzessive Verknüpfungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaftliche Publikationen. Have a dialogue with a partner.', 'Speaking practice for Wissenschaftliche Publikationen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wissenschaftliche Argumentation und konzessive Verknüpfungen — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche argumentation und konzessive verknüpfungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wissenschaftliche Argumentation und konzessive Verknüpfungen — Writing Task 2', 'Write 5 questions about wissenschaftliche argumentation und konzessive verknüpfungen and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wissenschaftliche Argumentation und konzessive Verknüpfungen — Conversation 1', 'Practice a realistic conversation about wissenschaftliche argumentation und konzessive verknüpfungen in the context of Wissenschaftliche Publikationen.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Argumentation und konzessive Verknüpfungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wissenschaftliche Argumentation und konzessive Verknüpfungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Argumentation und konzessive Verknüpfungen". The dialogue should be realistic and related to Wissenschaftliche Publikationen.', 'Creative practice for Wissenschaftliche Argumentation und konzessive Verknüpfungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wissenschaftliche Argumentation und konzessive Verknüpfungen — Reading Practice', 'This is a C2-level reading passage about wissenschaftliche argumentation und konzessive verknüpfungen in the context of Wissenschaftliche Publikationen.

Wissenschaftliche Argumentation und konzessive Verknüpfungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaftliche Publikationen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wissenschaftliche Argumentation und konzessive Verknüpfungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Argumentation und konzessive Verknüpfungen" aus dem Modul "Wissenschaftliche Publikationen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaftliche Publikationen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Rechtssprache', 'informal', false, NULL, 1),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Rechtssprache', 'neutral', false, NULL, 2),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Rechtssprache', 'neutral', false, NULL, 3),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Rechtssprache', 'neutral', false, NULL, 4),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Rechtssprache', 'neutral', false, NULL, 5),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Rechtssprache', 'neutral', false, NULL, 6),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Rechtssprache', 'informal', false, NULL, 7);

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
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Homework: Gesetzestexte und Urteile lesen und analysieren', 'Complete these tasks to reinforce "Gesetzestexte und Urteile lesen und analysieren" (Rechtssprache).', 'speaking', '[{"description":"Review all vocabulary from \"Gesetzestexte und Urteile lesen und analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'In this lesson on "Gesetzestexte und Urteile lesen und analysieren" (Rechtssprache), you learned key reading concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Gesetzestexte und Urteile lesen und analysieren\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Gesetzestexte und Urteile lesen und analysieren\""}]', ARRAY['"Gesetzestexte und Urteile lesen und analysieren" core vocabulary', 'Rechtssprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesetzestexte und Urteile lesen und analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Gesetzestexte und Urteile lesen und analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Rechtssprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesetzestexte und Urteile lesen und analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Rechtssprache. Have a dialogue with a partner.', 'Speaking practice for Rechtssprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesetzestexte und Urteile lesen und analysieren — Writing Task 1', 'Write a short text (50-100 words) about gesetzestexte und urteile lesen und analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesetzestexte und Urteile lesen und analysieren — Conversation 1', 'Practice a realistic conversation about gesetzestexte und urteile lesen und analysieren in the context of Rechtssprache.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesetzestexte und Urteile lesen und analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesetzestexte und Urteile lesen und analysieren — Conversation 2', 'Practice a realistic conversation about gesetzestexte und urteile lesen und analysieren in the context of Rechtssprache.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesetzestexte und Urteile lesen und analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesetzestexte und Urteile lesen und analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesetzestexte und Urteile lesen und analysieren". The dialogue should be realistic and related to Rechtssprache.', 'Creative practice for Gesetzestexte und Urteile lesen und analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesetzestexte und Urteile lesen und analysieren — Reading Practice', 'This is a C2-level reading passage about gesetzestexte und urteile lesen und analysieren in the context of Rechtssprache.

Gesetzestexte und Urteile lesen und analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Rechtssprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesetzestexte und Urteile lesen und analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Gesetzestexte und Urteile lesen und analysieren" aus dem Modul "Rechtssprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Rechtssprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 1),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 2),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Rhetorik und Präsentation', 'informal', false, NULL, 3),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Rhetorik und Präsentation', 'informal', false, NULL, 4),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 5),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 6),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Rhetorik und Präsentation', 'informal', false, NULL, 7),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 8),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 9),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Rhetorik und Präsentation', 'informal', false, NULL, 10);

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
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Homework: Präsentationsübungen', 'Complete these tasks to reinforce "Präsentationsübungen" (Rhetorik und Präsentation).', 'reading', '[{"description":"Review all vocabulary from \"Präsentationsübungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'In this lesson on "Präsentationsübungen" (Rhetorik und Präsentation), you learned key speaking concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Präsentationsübungen\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Präsentationsübungen\""}]', ARRAY['"Präsentationsübungen" core vocabulary', 'Rhetorik und Präsentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Präsentationsübungen — Speaking 1', 'Practice the key vocabulary and phrases from "Präsentationsübungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Rhetorik und Präsentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Präsentationsübungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Rhetorik und Präsentation. Have a dialogue with a partner.', 'Speaking practice for Rhetorik und Präsentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Präsentationsübungen — Writing Task 1', 'Write a short text (50-100 words) about präsentationsübungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Präsentationsübungen — Conversation 1', 'Practice a realistic conversation about präsentationsübungen in the context of Rhetorik und Präsentation.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präsentationsübungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Präsentationsübungen — Conversation 2', 'Practice a realistic conversation about präsentationsübungen in the context of Rhetorik und Präsentation.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präsentationsübungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Präsentationsübungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präsentationsübungen". The dialogue should be realistic and related to Rhetorik und Präsentation.', 'Creative practice for Präsentationsübungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Präsentationsübungen — Reading Practice', 'This is a C2-level reading passage about präsentationsübungen in the context of Rhetorik und Präsentation.

Präsentationsübungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Rhetorik und Präsentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Präsentationsübungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Präsentationsübungen" aus dem Modul "Rhetorik und Präsentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Rhetorik und Präsentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 1),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 2),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Philosophie und Ethik', 'informal', false, NULL, 3),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Philosophie und Ethik', 'informal', false, NULL, 4),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 5),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Philosophie und Ethik', 'formal', false, NULL, 6),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Philosophie und Ethik', 'informal', false, NULL, 7),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 8),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 9),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Philosophie und Ethik', 'informal', false, NULL, 10);

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
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Homework: Philosophische Essayistik', 'Complete these tasks to reinforce "Philosophische Essayistik" (Philosophie und Ethik).', 'grammar', '[{"description":"Review all vocabulary from \"Philosophische Essayistik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'In this lesson on "Philosophische Essayistik" (Philosophie und Ethik), you learned key writing concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Philosophische Essayistik\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Philosophische Essayistik\""}]', ARRAY['"Philosophische Essayistik" core vocabulary', 'Philosophie und Ethik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Philosophische Essayistik — Speaking 1', 'Practice the key vocabulary and phrases from "Philosophische Essayistik" aloud. Focus on correct pronunciation.', 'Speaking practice for Philosophie und Ethik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Philosophische Essayistik — Speaking 2', 'Role-play: Imagine you are in a situation related to Philosophie und Ethik. Have a dialogue with a partner.', 'Speaking practice for Philosophie und Ethik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Philosophische Essayistik — Writing Task 1', 'Write a short text (50-100 words) about philosophische essayistik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Philosophische Essayistik — Writing Task 2', 'Write 5 questions about philosophische essayistik and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Philosophische Essayistik — Conversation 1', 'Practice a realistic conversation about philosophische essayistik in the context of Philosophie und Ethik.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Philosophische Essayistik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Philosophische Essayistik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Philosophische Essayistik". The dialogue should be realistic and related to Philosophie und Ethik.', 'Creative practice for Philosophische Essayistik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Philosophische Essayistik — Reading Practice', 'This is a C2-level reading passage about philosophische essayistik in the context of Philosophie und Ethik.

Philosophische Essayistik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Philosophie und Ethik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Philosophische Essayistik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Philosophische Essayistik" aus dem Modul "Philosophie und Ethik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Philosophie und Ethik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 1),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 2),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 3),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 4),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 5),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 6),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 7),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 8),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 9),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Linguistik und Stilistik', 'informal', false, NULL, 10);

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
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Homework: Literarische Textanalyse: Stilistische Mittel erkennen und deuten', 'Complete these tasks to reinforce "Literarische Textanalyse: Stilistische Mittel erkennen und deuten" (Linguistik und Stilistik).', 'mixed', '[{"description":"Review all vocabulary from \"Literarische Textanalyse: Stilistische Mittel erkennen und deuten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'In this lesson on "Literarische Textanalyse: Stilistische Mittel erkennen und deuten" (Linguistik und Stilistik), you learned key reading concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Literarische Textanalyse: Stilistische Mittel erkennen und deuten\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Literarische Textanalyse: Stilistische Mittel erkennen und deuten\""}]', ARRAY['"Literarische Textanalyse: Stilistische Mittel erkennen und deuten" core vocabulary', 'Linguistik und Stilistik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Literarische Textanalyse: Stilistische Mittel erkennen und deuten — Speaking 1', 'Practice the key vocabulary and phrases from "Literarische Textanalyse: Stilistische Mittel erkennen und deuten" aloud. Focus on correct pronunciation.', 'Speaking practice for Linguistik und Stilistik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Literarische Textanalyse: Stilistische Mittel erkennen und deuten — Speaking 2', 'Role-play: Imagine you are in a situation related to Linguistik und Stilistik. Have a dialogue with a partner.', 'Speaking practice for Linguistik und Stilistik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Literarische Textanalyse: Stilistische Mittel erkennen und deuten — Writing Task 1', 'Write a short text (50-100 words) about literarische textanalyse: stilistische mittel erkennen und deuten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Literarische Textanalyse: Stilistische Mittel erkennen und deuten — Conversation 1', 'Practice a realistic conversation about literarische textanalyse: stilistische mittel erkennen und deuten in the context of Linguistik und Stilistik.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literarische Textanalyse: Stilistische Mittel erkennen und deuten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Literarische Textanalyse: Stilistische Mittel erkennen und deuten — Conversation 2', 'Practice a realistic conversation about literarische textanalyse: stilistische mittel erkennen und deuten in the context of Linguistik und Stilistik.', 'Customer', 'Assistant', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literarische Textanalyse: Stilistische Mittel erkennen und deuten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Literarische Textanalyse: Stilistische Mittel erkennen und deuten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literarische Textanalyse: Stilistische Mittel erkennen und deuten". The dialogue should be realistic and related to Linguistik und Stilistik.', 'Creative practice for Literarische Textanalyse: Stilistische Mittel erkennen und deuten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Literarische Textanalyse: Stilistische Mittel erkennen und deuten — Reading Practice', 'This is a C2-level reading passage about literarische textanalyse: stilistische mittel erkennen und deuten in the context of Linguistik und Stilistik.

Literarische Textanalyse: Stilistische Mittel erkennen und deuten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Linguistik und Stilistik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 110, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Literarische Textanalyse: Stilistische Mittel erkennen und deuten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Literarische Textanalyse: Stilistische Mittel erkennen und deuten" aus dem Modul "Linguistik und Stilistik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Linguistik und Stilistik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Homework: Wiederholung: Linguistik und Stilistik', 'Complete these tasks to reinforce "Wiederholung: Linguistik und Stilistik" (Linguistik und Stilistik).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Linguistik und Stilistik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'In this lesson on "Wiederholung: Linguistik und Stilistik" (Linguistik und Stilistik), you learned key review concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Linguistik und Stilistik\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Linguistik und Stilistik\""}]', ARRAY['"Wiederholung: Linguistik und Stilistik" core vocabulary', 'Linguistik und Stilistik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wiederholung: Linguistik und Stilistik — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Linguistik und Stilistik" aloud. Focus on correct pronunciation.', 'Speaking practice for Linguistik und Stilistik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wiederholung: Linguistik und Stilistik — Speaking 2', 'Role-play: Imagine you are in a situation related to Linguistik und Stilistik. Have a dialogue with a partner.', 'Speaking practice for Linguistik und Stilistik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wiederholung: Linguistik und Stilistik — Conversation 1', 'Practice a realistic conversation about wiederholung: linguistik und stilistik in the context of Linguistik und Stilistik.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Linguistik und Stilistik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wiederholung: Linguistik und Stilistik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Linguistik und Stilistik". The dialogue should be realistic and related to Linguistik und Stilistik.', 'Creative practice for Wiederholung: Linguistik und Stilistik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wiederholung: Linguistik und Stilistik — Reading Practice', 'This is a C2-level reading passage about wiederholung: linguistik und stilistik in the context of Linguistik und Stilistik.

Wiederholung: Linguistik und Stilistik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Linguistik und Stilistik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wiederholung: Linguistik und Stilistik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Linguistik und Stilistik" aus dem Modul "Linguistik und Stilistik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Linguistik und Stilistik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 1),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Philosophie und Ethik', 'formal', false, NULL, 2),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 3),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 4),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Homework: Wiederholung: Philosophie und Ethik', 'Complete these tasks to reinforce "Wiederholung: Philosophie und Ethik" (Philosophie und Ethik).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Philosophie und Ethik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'In this lesson on "Wiederholung: Philosophie und Ethik" (Philosophie und Ethik), you learned key review concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Philosophie und Ethik\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Philosophie und Ethik\""}]', ARRAY['"Wiederholung: Philosophie und Ethik" core vocabulary', 'Philosophie und Ethik key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wiederholung: Philosophie und Ethik — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Philosophie und Ethik" aloud. Focus on correct pronunciation.', 'Speaking practice for Philosophie und Ethik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wiederholung: Philosophie und Ethik — Speaking 2', 'Role-play: Imagine you are in a situation related to Philosophie und Ethik. Have a dialogue with a partner.', 'Speaking practice for Philosophie und Ethik', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wiederholung: Philosophie und Ethik — Conversation 1', 'Practice a realistic conversation about wiederholung: philosophie und ethik in the context of Philosophie und Ethik.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Philosophie und Ethik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wiederholung: Philosophie und Ethik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Philosophie und Ethik". The dialogue should be realistic and related to Philosophie und Ethik.', 'Creative practice for Wiederholung: Philosophie und Ethik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wiederholung: Philosophie und Ethik — Reading Practice', 'This is a C2-level reading passage about wiederholung: philosophie und ethik in the context of Philosophie und Ethik.

Wiederholung: Philosophie und Ethik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Philosophie und Ethik" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wiederholung: Philosophie und Ethik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Philosophie und Ethik" aus dem Modul "Philosophie und Ethik".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Philosophie und Ethik');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 1),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 2),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 3),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 4),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Homework: Wiederholung: Wissenschaftliche Publikationen', 'Complete these tasks to reinforce "Wiederholung: Wissenschaftliche Publikationen" (Wissenschaftliche Publikationen).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Wissenschaftliche Publikationen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'In this lesson on "Wiederholung: Wissenschaftliche Publikationen" (Wissenschaftliche Publikationen), you learned key review concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wissenschaftliche Publikationen\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wissenschaftliche Publikationen\""}]', ARRAY['"Wiederholung: Wissenschaftliche Publikationen" core vocabulary', 'Wissenschaftliche Publikationen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wiederholung: Wissenschaftliche Publikationen — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wissenschaftliche Publikationen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaftliche Publikationen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wiederholung: Wissenschaftliche Publikationen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaftliche Publikationen. Have a dialogue with a partner.', 'Speaking practice for Wissenschaftliche Publikationen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wiederholung: Wissenschaftliche Publikationen — Conversation 1', 'Practice a realistic conversation about wiederholung: wissenschaftliche publikationen in the context of Wissenschaftliche Publikationen.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wissenschaftliche Publikationen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wiederholung: Wissenschaftliche Publikationen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wissenschaftliche Publikationen". The dialogue should be realistic and related to Wissenschaftliche Publikationen.', 'Creative practice for Wiederholung: Wissenschaftliche Publikationen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wiederholung: Wissenschaftliche Publikationen — Reading Practice', 'This is a C2-level reading passage about wiederholung: wissenschaftliche publikationen in the context of Wissenschaftliche Publikationen.

Wiederholung: Wissenschaftliche Publikationen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaftliche Publikationen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wiederholung: Wissenschaftliche Publikationen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wissenschaftliche Publikationen" aus dem Modul "Wissenschaftliche Publikationen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaftliche Publikationen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Rechtssprache', 'neutral', false, NULL, 1),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Rechtssprache', 'formal', false, NULL, 2),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Rechtssprache', 'neutral', false, NULL, 3),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Rechtssprache', 'neutral', false, NULL, 4),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Rechtssprache', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Homework: Wiederholung: Rechtssprache', 'Complete these tasks to reinforce "Wiederholung: Rechtssprache" (Rechtssprache).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Rechtssprache\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'In this lesson on "Wiederholung: Rechtssprache" (Rechtssprache), you learned key review concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Rechtssprache\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Rechtssprache\""}]', ARRAY['"Wiederholung: Rechtssprache" core vocabulary', 'Rechtssprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wiederholung: Rechtssprache — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Rechtssprache" aloud. Focus on correct pronunciation.', 'Speaking practice for Rechtssprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wiederholung: Rechtssprache — Speaking 2', 'Role-play: Imagine you are in a situation related to Rechtssprache. Have a dialogue with a partner.', 'Speaking practice for Rechtssprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wiederholung: Rechtssprache — Conversation 1', 'Practice a realistic conversation about wiederholung: rechtssprache in the context of Rechtssprache.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Rechtssprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wiederholung: Rechtssprache — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Rechtssprache". The dialogue should be realistic and related to Rechtssprache.', 'Creative practice for Wiederholung: Rechtssprache', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wiederholung: Rechtssprache — Reading Practice', 'This is a C2-level reading passage about wiederholung: rechtssprache in the context of Rechtssprache.

Wiederholung: Rechtssprache is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Rechtssprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wiederholung: Rechtssprache — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Rechtssprache" aus dem Modul "Rechtssprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Rechtssprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 1),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 2),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 3),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 4),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Homework: Wiederholung: Diplomatie und Verhandlung', 'Complete these tasks to reinforce "Wiederholung: Diplomatie und Verhandlung" (Diplomatie und Verhandlung).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Diplomatie und Verhandlung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'In this lesson on "Wiederholung: Diplomatie und Verhandlung" (Diplomatie und Verhandlung), you learned key review concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Diplomatie und Verhandlung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Diplomatie und Verhandlung\""}]', ARRAY['"Wiederholung: Diplomatie und Verhandlung" core vocabulary', 'Diplomatie und Verhandlung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wiederholung: Diplomatie und Verhandlung — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Diplomatie und Verhandlung" aloud. Focus on correct pronunciation.', 'Speaking practice for Diplomatie und Verhandlung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wiederholung: Diplomatie und Verhandlung — Speaking 2', 'Role-play: Imagine you are in a situation related to Diplomatie und Verhandlung. Have a dialogue with a partner.', 'Speaking practice for Diplomatie und Verhandlung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wiederholung: Diplomatie und Verhandlung — Conversation 1', 'Practice a realistic conversation about wiederholung: diplomatie und verhandlung in the context of Diplomatie und Verhandlung.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Diplomatie und Verhandlung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wiederholung: Diplomatie und Verhandlung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Diplomatie und Verhandlung". The dialogue should be realistic and related to Diplomatie und Verhandlung.', 'Creative practice for Wiederholung: Diplomatie und Verhandlung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wiederholung: Diplomatie und Verhandlung — Reading Practice', 'This is a C2-level reading passage about wiederholung: diplomatie und verhandlung in the context of Diplomatie und Verhandlung.

Wiederholung: Diplomatie und Verhandlung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Diplomatie und Verhandlung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wiederholung: Diplomatie und Verhandlung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Diplomatie und Verhandlung" aus dem Modul "Diplomatie und Verhandlung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Diplomatie und Verhandlung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 1),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 2),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 3),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 4),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Homework: Wiederholung: Rhetorik und Präsentation', 'Complete these tasks to reinforce "Wiederholung: Rhetorik und Präsentation" (Rhetorik und Präsentation).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Rhetorik und Präsentation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'In this lesson on "Wiederholung: Rhetorik und Präsentation" (Rhetorik und Präsentation), you learned key review concepts at C2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Rhetorik und Präsentation\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Rhetorik und Präsentation\""}]', ARRAY['"Wiederholung: Rhetorik und Präsentation" core vocabulary', 'Rhetorik und Präsentation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wiederholung: Rhetorik und Präsentation — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Rhetorik und Präsentation" aloud. Focus on correct pronunciation.', 'Speaking practice for Rhetorik und Präsentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wiederholung: Rhetorik und Präsentation — Speaking 2', 'Role-play: Imagine you are in a situation related to Rhetorik und Präsentation. Have a dialogue with a partner.', 'Speaking practice for Rhetorik und Präsentation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wiederholung: Rhetorik und Präsentation — Conversation 1', 'Practice a realistic conversation about wiederholung: rhetorik und präsentation in the context of Rhetorik und Präsentation.', 'Student', 'Teacher', 'You are a student at C2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Rhetorik und Präsentation" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wiederholung: Rhetorik und Präsentation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Rhetorik und Präsentation". The dialogue should be realistic and related to Rhetorik und Präsentation.', 'Creative practice for Wiederholung: Rhetorik und Präsentation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wiederholung: Rhetorik und Präsentation — Reading Practice', 'This is a C2-level reading passage about wiederholung: rhetorik und präsentation in the context of Rhetorik und Präsentation.

Wiederholung: Rhetorik und Präsentation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Rhetorik und Präsentation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wiederholung: Rhetorik und Präsentation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Rhetorik und Präsentation" aus dem Modul "Rhetorik und Präsentation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Rhetorik und Präsentation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Diplomatie und Verhandlung', 'neutral', false, NULL, 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Diplomatie und Verhandlung', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Rechtssprache', 'neutral', false, NULL, 1),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Rechtssprache', 'formal', false, NULL, 2),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Rechtssprache', 'neutral', false, NULL, 3),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Rechtssprache', 'neutral', false, NULL, 4),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Rechtssprache', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 1),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Philosophie und Ethik', 'formal', false, NULL, 2),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 3),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Philosophie und Ethik', 'neutral', false, NULL, 4),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Philosophie und Ethik', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 1),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 2),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 3),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Rhetorik und Präsentation', 'neutral', false, NULL, 4),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Rhetorik und Präsentation', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wissenschaftliche Publikationen', 'neutral', false, NULL, 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wissenschaftliche Publikationen', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 1),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 2),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 3),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Linguistik und Stilistik', 'neutral', false, NULL, 4),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Linguistik und Stilistik', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);