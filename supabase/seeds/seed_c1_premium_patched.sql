-- ============================================================
-- PREMIUM CONTENT SEED — Level C1
-- Generated for 72 lessons across 12 modules
-- ============================================================


INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000010', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000010', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000010', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000010', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000010', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000010', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000010', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

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
  ('00000000-0000-0000-0000-000000000010', 'Homework: Medienlandschaft', 'Complete these tasks to reinforce "Medienlandschaft" (Medienanalyse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Medienlandschaft\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000010', 'In this lesson on "Medienlandschaft" (Medienanalyse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Medienlandschaft\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Medienlandschaft\""}]', ARRAY['"Medienlandschaft" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Medienlandschaft — Speaking 1', 'Practice the key vocabulary and phrases from "Medienlandschaft" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Medienlandschaft — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Medienlandschaft — Writing Task 1', 'Write a short text (50-100 words) about medienlandschaft. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Medienlandschaft — Conversation 1', 'Practice a realistic conversation about medienlandschaft in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medienlandschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Medienlandschaft — Conversation 2', 'Practice a realistic conversation about medienlandschaft in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medienlandschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Medienlandschaft — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Medienlandschaft". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Medienlandschaft', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Medienlandschaft — Deep Understanding', 'Explain the most important concepts from "Medienlandschaft" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Medienlandschaft', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Medienlandschaft — Reading Practice', 'This is a C1-level reading passage about medienlandschaft in the context of Medienanalyse.

Medienlandschaft is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Medienlandschaft — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Medienlandschaft" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000011', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000011', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000011', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000011', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000011', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000011', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000011', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000011', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000011', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

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
  ('00000000-0000-0000-0000-000000000011', 'Homework: Wissenschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Wissenschaftliche Grundbegriffe" (Akademische Sprache).', 'writing', '[{"description":"Review all vocabulary from \"Wissenschaftliche Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000011', 'In this lesson on "Wissenschaftliche Grundbegriffe" (Akademische Sprache), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Grundbegriffe\""}]', ARRAY['"Wissenschaftliche Grundbegriffe" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftliche Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftliche Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftliche Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftliche Grundbegriffe — Conversation 1', 'Practice a realistic conversation about wissenschaftliche grundbegriffe in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftliche Grundbegriffe — Conversation 2', 'Practice a realistic conversation about wissenschaftliche grundbegriffe in the context of Akademische Sprache.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftliche Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Grundbegriffe". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wissenschaftliche Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftliche Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftliche Grundbegriffe — Reading Practice', 'This is a C1-level reading passage about wissenschaftliche grundbegriffe in the context of Akademische Sprache.

Wissenschaftliche Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wissenschaftliche Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Grundbegriffe" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000012', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000012', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000012', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000012', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000012', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000012', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000012', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000012', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000012', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 10);

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
  ('00000000-0000-0000-0000-000000000012', 'Homework: Forschungsterminologie', 'Complete these tasks to reinforce "Forschungsterminologie" (Wissenschaft und Forschung).', 'speaking', '[{"description":"Review all vocabulary from \"Forschungsterminologie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000012', 'In this lesson on "Forschungsterminologie" (Wissenschaft und Forschung), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Forschungsterminologie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Forschungsterminologie\""}]', ARRAY['"Forschungsterminologie" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Forschungsterminologie — Speaking 1', 'Practice the key vocabulary and phrases from "Forschungsterminologie" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Forschungsterminologie — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Forschungsterminologie — Writing Task 1', 'Write a short text (50-100 words) about forschungsterminologie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Forschungsterminologie — Conversation 1', 'Practice a realistic conversation about forschungsterminologie in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsterminologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Forschungsterminologie — Conversation 2', 'Practice a realistic conversation about forschungsterminologie in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsterminologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Forschungsterminologie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Forschungsterminologie". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Forschungsterminologie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Forschungsterminologie — Deep Understanding', 'Explain the most important concepts from "Forschungsterminologie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Forschungsterminologie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Forschungsterminologie — Reading Practice', 'This is a C1-level reading passage about forschungsterminologie in the context of Wissenschaft und Forschung.

Forschungsterminologie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Forschungsterminologie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Forschungsterminologie" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 1),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 3),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 4),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 6),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 9),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 10);

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
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Homework: Forschungsterminologie', 'Complete these tasks to reinforce "Forschungsterminologie" (Wissenschaft und Forschung).', 'reading', '[{"description":"Review all vocabulary from \"Forschungsterminologie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'In this lesson on "Forschungsterminologie" (Wissenschaft und Forschung), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Forschungsterminologie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Forschungsterminologie\""}]', ARRAY['"Forschungsterminologie" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Forschungsterminologie — Speaking 1', 'Practice the key vocabulary and phrases from "Forschungsterminologie" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Forschungsterminologie — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Forschungsterminologie — Writing Task 1', 'Write a short text (50-100 words) about forschungsterminologie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Forschungsterminologie — Conversation 1', 'Practice a realistic conversation about forschungsterminologie in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsterminologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Forschungsterminologie — Conversation 2', 'Practice a realistic conversation about forschungsterminologie in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsterminologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Forschungsterminologie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Forschungsterminologie". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Forschungsterminologie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Forschungsterminologie — Deep Understanding', 'Explain the most important concepts from "Forschungsterminologie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Forschungsterminologie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Forschungsterminologie — Reading Practice', 'This is a C1-level reading passage about forschungsterminologie in the context of Wissenschaft und Forschung.

Forschungsterminologie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Forschungsterminologie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Forschungsterminologie" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 1),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 3),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 4),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 6),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 7),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 9),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 10);

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
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Homework: Wirtschaftsbegriffe', 'Complete these tasks to reinforce "Wirtschaftsbegriffe" (Wirtschaftsdeutsch).', 'grammar', '[{"description":"Review all vocabulary from \"Wirtschaftsbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'In this lesson on "Wirtschaftsbegriffe" (Wirtschaftsdeutsch), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsbegriffe\""}]', ARRAY['"Wirtschaftsbegriffe" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wirtschaftsbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wirtschaftsbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wirtschaftsbegriffe — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wirtschaftsbegriffe — Conversation 1', 'Practice a realistic conversation about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wirtschaftsbegriffe — Conversation 2', 'Practice a realistic conversation about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wirtschaftsbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsbegriffe". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wirtschaftsbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wirtschaftsbegriffe — Deep Understanding', 'Explain the most important concepts from "Wirtschaftsbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wirtschaftsbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wirtschaftsbegriffe — Reading Practice', 'This is a C1-level reading passage about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.

Wirtschaftsbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wirtschaftsbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsbegriffe" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

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
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Homework: Literaturwissenschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Literaturwissenschaftliche Grundbegriffe" (Literatur und Kunst).', 'mixed', '[{"description":"Review all vocabulary from \"Literaturwissenschaftliche Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'In this lesson on "Literaturwissenschaftliche Grundbegriffe" (Literatur und Kunst), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Literaturwissenschaftliche Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Literaturwissenschaftliche Grundbegriffe\""}]', ARRAY['"Literaturwissenschaftliche Grundbegriffe" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Literaturwissenschaftliche Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Literaturwissenschaftliche Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Literaturwissenschaftliche Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Literaturwissenschaftliche Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about literaturwissenschaftliche grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Literaturwissenschaftliche Grundbegriffe — Conversation 1', 'Practice a realistic conversation about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literaturwissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Literaturwissenschaftliche Grundbegriffe — Conversation 2', 'Practice a realistic conversation about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literaturwissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Literaturwissenschaftliche Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literaturwissenschaftliche Grundbegriffe". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Literaturwissenschaftliche Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Literaturwissenschaftliche Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Literaturwissenschaftliche Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Literaturwissenschaftliche Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Literaturwissenschaftliche Grundbegriffe — Reading Practice', 'This is a C1-level reading passage about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.

Literaturwissenschaftliche Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Literaturwissenschaftliche Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Literaturwissenschaftliche Grundbegriffe" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

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
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Homework: Medienlandschaft', 'Complete these tasks to reinforce "Medienlandschaft" (Medienanalyse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Medienlandschaft\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'In this lesson on "Medienlandschaft" (Medienanalyse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Medienlandschaft\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Medienlandschaft\""}]', ARRAY['"Medienlandschaft" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medienlandschaft — Speaking 1', 'Practice the key vocabulary and phrases from "Medienlandschaft" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medienlandschaft — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medienlandschaft — Writing Task 1', 'Write a short text (50-100 words) about medienlandschaft. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medienlandschaft — Conversation 1', 'Practice a realistic conversation about medienlandschaft in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medienlandschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medienlandschaft — Conversation 2', 'Practice a realistic conversation about medienlandschaft in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medienlandschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medienlandschaft — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Medienlandschaft". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Medienlandschaft', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medienlandschaft — Deep Understanding', 'Explain the most important concepts from "Medienlandschaft" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Medienlandschaft', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medienlandschaft — Reading Practice', 'This is a C1-level reading passage about medienlandschaft in the context of Medienanalyse.

Medienlandschaft is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medienlandschaft — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Medienlandschaft" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 1),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 3),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 4),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 6),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 7),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 9),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 10);

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
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Homework: Wirtschaftsbegriffe', 'Complete these tasks to reinforce "Wirtschaftsbegriffe" (Wirtschaftsdeutsch).', 'writing', '[{"description":"Review all vocabulary from \"Wirtschaftsbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'In this lesson on "Wirtschaftsbegriffe" (Wirtschaftsdeutsch), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsbegriffe\""}]', ARRAY['"Wirtschaftsbegriffe" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wirtschaftsbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wirtschaftsbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wirtschaftsbegriffe — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wirtschaftsbegriffe — Conversation 1', 'Practice a realistic conversation about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wirtschaftsbegriffe — Conversation 2', 'Practice a realistic conversation about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wirtschaftsbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsbegriffe". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wirtschaftsbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wirtschaftsbegriffe — Deep Understanding', 'Explain the most important concepts from "Wirtschaftsbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wirtschaftsbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wirtschaftsbegriffe — Reading Practice', 'This is a C1-level reading passage about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.

Wirtschaftsbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wirtschaftsbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsbegriffe" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

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
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Homework: Politische Systeme', 'Complete these tasks to reinforce "Politische Systeme" (Politische Diskurse).', 'speaking', '[{"description":"Review all vocabulary from \"Politische Systeme\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'In this lesson on "Politische Systeme" (Politische Diskurse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Systeme\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Systeme\""}]', ARRAY['"Politische Systeme" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Politische Systeme — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Systeme" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Politische Systeme — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Politische Systeme — Writing Task 1', 'Write a short text (50-100 words) about politische systeme. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Politische Systeme — Conversation 1', 'Practice a realistic conversation about politische systeme in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Systeme" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Politische Systeme — Conversation 2', 'Practice a realistic conversation about politische systeme in the context of Politische Diskurse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Systeme" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Politische Systeme — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Systeme". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Systeme', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Politische Systeme — Deep Understanding', 'Explain the most important concepts from "Politische Systeme" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Politische Systeme', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Politische Systeme — Reading Practice', 'This is a C1-level reading passage about politische systeme in the context of Politische Diskurse.

Politische Systeme is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Politische Systeme — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Systeme" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

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
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Homework: Wissenschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Wissenschaftliche Grundbegriffe" (Akademische Sprache).', 'reading', '[{"description":"Review all vocabulary from \"Wissenschaftliche Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'In this lesson on "Wissenschaftliche Grundbegriffe" (Akademische Sprache), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Grundbegriffe\""}]', ARRAY['"Wissenschaftliche Grundbegriffe" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wissenschaftliche Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wissenschaftliche Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wissenschaftliche Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wissenschaftliche Grundbegriffe — Conversation 1', 'Practice a realistic conversation about wissenschaftliche grundbegriffe in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wissenschaftliche Grundbegriffe — Conversation 2', 'Practice a realistic conversation about wissenschaftliche grundbegriffe in the context of Akademische Sprache.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wissenschaftliche Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Grundbegriffe". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wissenschaftliche Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wissenschaftliche Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wissenschaftliche Grundbegriffe — Reading Practice', 'This is a C1-level reading passage about wissenschaftliche grundbegriffe in the context of Akademische Sprache.

Wissenschaftliche Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wissenschaftliche Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Grundbegriffe" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

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
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Homework: Politische Systeme', 'Complete these tasks to reinforce "Politische Systeme" (Politische Diskurse).', 'grammar', '[{"description":"Review all vocabulary from \"Politische Systeme\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'In this lesson on "Politische Systeme" (Politische Diskurse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Systeme\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Systeme\""}]', ARRAY['"Politische Systeme" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Politische Systeme — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Systeme" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Politische Systeme — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Politische Systeme — Writing Task 1', 'Write a short text (50-100 words) about politische systeme. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Politische Systeme — Conversation 1', 'Practice a realistic conversation about politische systeme in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Systeme" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Politische Systeme — Conversation 2', 'Practice a realistic conversation about politische systeme in the context of Politische Diskurse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Systeme" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Politische Systeme — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Systeme". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Systeme', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Politische Systeme — Deep Understanding', 'Explain the most important concepts from "Politische Systeme" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Politische Systeme', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Politische Systeme — Reading Practice', 'This is a C1-level reading passage about politische systeme in the context of Politische Diskurse.

Politische Systeme is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Politische Systeme — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Systeme" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

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
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Homework: Literaturwissenschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Literaturwissenschaftliche Grundbegriffe" (Literatur und Kunst).', 'mixed', '[{"description":"Review all vocabulary from \"Literaturwissenschaftliche Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'In this lesson on "Literaturwissenschaftliche Grundbegriffe" (Literatur und Kunst), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Literaturwissenschaftliche Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Literaturwissenschaftliche Grundbegriffe\""}]', ARRAY['"Literaturwissenschaftliche Grundbegriffe" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Literaturwissenschaftliche Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Literaturwissenschaftliche Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Literaturwissenschaftliche Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Literaturwissenschaftliche Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about literaturwissenschaftliche grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Literaturwissenschaftliche Grundbegriffe — Conversation 1', 'Practice a realistic conversation about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literaturwissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Literaturwissenschaftliche Grundbegriffe — Conversation 2', 'Practice a realistic conversation about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literaturwissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Literaturwissenschaftliche Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literaturwissenschaftliche Grundbegriffe". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Literaturwissenschaftliche Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Literaturwissenschaftliche Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Literaturwissenschaftliche Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Literaturwissenschaftliche Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Literaturwissenschaftliche Grundbegriffe — Reading Practice', 'This is a C1-level reading passage about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.

Literaturwissenschaftliche Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Literaturwissenschaftliche Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Literaturwissenschaftliche Grundbegriffe" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

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
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Homework: Politische Debatten', 'Complete these tasks to reinforce "Politische Debatten" (Politische Diskurse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Politische Debatten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'In this lesson on "Politische Debatten" (Politische Diskurse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Debatten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Debatten\""}]', ARRAY['"Politische Debatten" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politische Debatten — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Debatten" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politische Debatten — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politische Debatten — Writing Task 1', 'Write a short text (50-100 words) about politische debatten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politische Debatten — Conversation 1', 'Practice a realistic conversation about politische debatten in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Debatten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politische Debatten — Conversation 2', 'Practice a realistic conversation about politische debatten in the context of Politische Diskurse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Debatten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politische Debatten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Debatten". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Debatten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politische Debatten — Deep Understanding', 'Explain the most important concepts from "Politische Debatten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Politische Debatten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politische Debatten — Reading Practice', 'This is a C1-level reading passage about politische debatten in the context of Politische Diskurse.

Politische Debatten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Politische Debatten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Debatten" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 7),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 9),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Homework: Unternehmenskommunikation', 'Complete these tasks to reinforce "Unternehmenskommunikation" (Wirtschaftsdeutsch).', 'writing', '[{"description":"Review all vocabulary from \"Unternehmenskommunikation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'In this lesson on "Unternehmenskommunikation" (Wirtschaftsdeutsch), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Unternehmenskommunikation\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Unternehmenskommunikation\""}]', ARRAY['"Unternehmenskommunikation" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Unternehmenskommunikation — Speaking 1', 'Practice the key vocabulary and phrases from "Unternehmenskommunikation" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Unternehmenskommunikation — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Unternehmenskommunikation — Writing Task 1', 'Write a short text (50-100 words) about unternehmenskommunikation. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Unternehmenskommunikation — Conversation 1', 'Practice a realistic conversation about unternehmenskommunikation in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Unternehmenskommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Unternehmenskommunikation — Conversation 2', 'Practice a realistic conversation about unternehmenskommunikation in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Unternehmenskommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Unternehmenskommunikation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Unternehmenskommunikation". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Unternehmenskommunikation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Unternehmenskommunikation — Deep Understanding', 'Explain the most important concepts from "Unternehmenskommunikation" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Unternehmenskommunikation', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Unternehmenskommunikation — Reading Practice', 'This is a C1-level reading passage about unternehmenskommunikation in the context of Wirtschaftsdeutsch.

Unternehmenskommunikation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Unternehmenskommunikation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Unternehmenskommunikation" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

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
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Homework: Akademisches Schreiben', 'Complete these tasks to reinforce "Akademisches Schreiben" (Akademische Sprache).', 'speaking', '[{"description":"Review all vocabulary from \"Akademisches Schreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'In this lesson on "Akademisches Schreiben" (Akademische Sprache), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Akademisches Schreiben\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Akademisches Schreiben\""}]', ARRAY['"Akademisches Schreiben" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Akademisches Schreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Akademisches Schreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Akademisches Schreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Akademisches Schreiben — Writing Task 1', 'Write a short text (50-100 words) about akademisches schreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Akademisches Schreiben — Conversation 1', 'Practice a realistic conversation about akademisches schreiben in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akademisches Schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Akademisches Schreiben — Conversation 2', 'Practice a realistic conversation about akademisches schreiben in the context of Akademische Sprache.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akademisches Schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Akademisches Schreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Akademisches Schreiben". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Akademisches Schreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Akademisches Schreiben — Deep Understanding', 'Explain the most important concepts from "Akademisches Schreiben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Akademisches Schreiben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Akademisches Schreiben — Reading Practice', 'This is a C1-level reading passage about akademisches schreiben in the context of Akademische Sprache.

Akademisches Schreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Akademisches Schreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Akademisches Schreiben" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

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
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Homework: Nachrichten und Berichterstattung', 'Complete these tasks to reinforce "Nachrichten und Berichterstattung" (Medienanalyse).', 'reading', '[{"description":"Review all vocabulary from \"Nachrichten und Berichterstattung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'In this lesson on "Nachrichten und Berichterstattung" (Medienanalyse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nachrichten und Berichterstattung\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nachrichten und Berichterstattung\""}]', ARRAY['"Nachrichten und Berichterstattung" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Nachrichten und Berichterstattung — Speaking 1', 'Practice the key vocabulary and phrases from "Nachrichten und Berichterstattung" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Nachrichten und Berichterstattung — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Nachrichten und Berichterstattung — Writing Task 1', 'Write a short text (50-100 words) about nachrichten und berichterstattung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Nachrichten und Berichterstattung — Conversation 1', 'Practice a realistic conversation about nachrichten und berichterstattung in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nachrichten und Berichterstattung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Nachrichten und Berichterstattung — Conversation 2', 'Practice a realistic conversation about nachrichten und berichterstattung in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nachrichten und Berichterstattung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Nachrichten und Berichterstattung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nachrichten und Berichterstattung". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Nachrichten und Berichterstattung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Nachrichten und Berichterstattung — Deep Understanding', 'Explain the most important concepts from "Nachrichten und Berichterstattung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nachrichten und Berichterstattung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Nachrichten und Berichterstattung — Reading Practice', 'This is a C1-level reading passage about nachrichten und berichterstattung in the context of Medienanalyse.

Nachrichten und Berichterstattung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Nachrichten und Berichterstattung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nachrichten und Berichterstattung" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

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
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Homework: Kunst und Ästhetik', 'Complete these tasks to reinforce "Kunst und Ästhetik" (Literatur und Kunst).', 'grammar', '[{"description":"Review all vocabulary from \"Kunst und Ästhetik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'In this lesson on "Kunst und Ästhetik" (Literatur und Kunst), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kunst und Ästhetik\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kunst und Ästhetik\""}]', ARRAY['"Kunst und Ästhetik" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kunst und Ästhetik — Speaking 1', 'Practice the key vocabulary and phrases from "Kunst und Ästhetik" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kunst und Ästhetik — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kunst und Ästhetik — Writing Task 1', 'Write a short text (50-100 words) about kunst und ästhetik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kunst und Ästhetik — Conversation 1', 'Practice a realistic conversation about kunst und ästhetik in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kunst und Ästhetik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kunst und Ästhetik — Conversation 2', 'Practice a realistic conversation about kunst und ästhetik in the context of Literatur und Kunst.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kunst und Ästhetik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kunst und Ästhetik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kunst und Ästhetik". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Kunst und Ästhetik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kunst und Ästhetik — Deep Understanding', 'Explain the most important concepts from "Kunst und Ästhetik" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kunst und Ästhetik', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kunst und Ästhetik — Reading Practice', 'This is a C1-level reading passage about kunst und ästhetik in the context of Literatur und Kunst.

Kunst und Ästhetik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kunst und Ästhetik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kunst und Ästhetik" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 1),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 3),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 4),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 6),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 9),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 10);

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
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Homework: Wissenschaftliche Methoden', 'Complete these tasks to reinforce "Wissenschaftliche Methoden" (Wissenschaft und Forschung).', 'mixed', '[{"description":"Review all vocabulary from \"Wissenschaftliche Methoden\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'In this lesson on "Wissenschaftliche Methoden" (Wissenschaft und Forschung), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Methoden\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Methoden\""}]', ARRAY['"Wissenschaftliche Methoden" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wissenschaftliche Methoden — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Methoden" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wissenschaftliche Methoden — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wissenschaftliche Methoden — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche methoden. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wissenschaftliche Methoden — Conversation 1', 'Practice a realistic conversation about wissenschaftliche methoden in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Methoden" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wissenschaftliche Methoden — Conversation 2', 'Practice a realistic conversation about wissenschaftliche methoden in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Methoden" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wissenschaftliche Methoden — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Methoden". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Wissenschaftliche Methoden', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wissenschaftliche Methoden — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Methoden" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Methoden', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wissenschaftliche Methoden — Reading Practice', 'This is a C1-level reading passage about wissenschaftliche methoden in the context of Wissenschaft und Forschung.

Wissenschaftliche Methoden is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wissenschaftliche Methoden — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Methoden" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

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
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Homework: Politische Debatten', 'Complete these tasks to reinforce "Politische Debatten" (Politische Diskurse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Politische Debatten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'In this lesson on "Politische Debatten" (Politische Diskurse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Debatten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Debatten\""}]', ARRAY['"Politische Debatten" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Politische Debatten — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Debatten" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Politische Debatten — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Politische Debatten — Writing Task 1', 'Write a short text (50-100 words) about politische debatten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Politische Debatten — Conversation 1', 'Practice a realistic conversation about politische debatten in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Debatten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Politische Debatten — Conversation 2', 'Practice a realistic conversation about politische debatten in the context of Politische Diskurse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Debatten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Politische Debatten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Debatten". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Debatten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Politische Debatten — Deep Understanding', 'Explain the most important concepts from "Politische Debatten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Politische Debatten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Politische Debatten — Reading Practice', 'This is a C1-level reading passage about politische debatten in the context of Politische Diskurse.

Politische Debatten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Politische Debatten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Debatten" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 1),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 3),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 4),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 6),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 7),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 9),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 10);

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
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Homework: Unternehmenskommunikation', 'Complete these tasks to reinforce "Unternehmenskommunikation" (Wirtschaftsdeutsch).', 'writing', '[{"description":"Review all vocabulary from \"Unternehmenskommunikation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'In this lesson on "Unternehmenskommunikation" (Wirtschaftsdeutsch), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Unternehmenskommunikation\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Unternehmenskommunikation\""}]', ARRAY['"Unternehmenskommunikation" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Unternehmenskommunikation — Speaking 1', 'Practice the key vocabulary and phrases from "Unternehmenskommunikation" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Unternehmenskommunikation — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Unternehmenskommunikation — Writing Task 1', 'Write a short text (50-100 words) about unternehmenskommunikation. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Unternehmenskommunikation — Conversation 1', 'Practice a realistic conversation about unternehmenskommunikation in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Unternehmenskommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Unternehmenskommunikation — Conversation 2', 'Practice a realistic conversation about unternehmenskommunikation in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Unternehmenskommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Unternehmenskommunikation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Unternehmenskommunikation". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Unternehmenskommunikation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Unternehmenskommunikation — Deep Understanding', 'Explain the most important concepts from "Unternehmenskommunikation" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Unternehmenskommunikation', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Unternehmenskommunikation — Reading Practice', 'This is a C1-level reading passage about unternehmenskommunikation in the context of Wirtschaftsdeutsch.

Unternehmenskommunikation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Unternehmenskommunikation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Unternehmenskommunikation" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 1),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 3),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 4),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 6),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 9),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 10);

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
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Homework: Wissenschaftliche Methoden', 'Complete these tasks to reinforce "Wissenschaftliche Methoden" (Wissenschaft und Forschung).', 'speaking', '[{"description":"Review all vocabulary from \"Wissenschaftliche Methoden\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'In this lesson on "Wissenschaftliche Methoden" (Wissenschaft und Forschung), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Methoden\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Methoden\""}]', ARRAY['"Wissenschaftliche Methoden" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wissenschaftliche Methoden — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Methoden" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wissenschaftliche Methoden — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wissenschaftliche Methoden — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche methoden. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wissenschaftliche Methoden — Conversation 1', 'Practice a realistic conversation about wissenschaftliche methoden in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Methoden" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wissenschaftliche Methoden — Conversation 2', 'Practice a realistic conversation about wissenschaftliche methoden in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Methoden" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wissenschaftliche Methoden — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Methoden". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Wissenschaftliche Methoden', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wissenschaftliche Methoden — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Methoden" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Methoden', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wissenschaftliche Methoden — Reading Practice', 'This is a C1-level reading passage about wissenschaftliche methoden in the context of Wissenschaft und Forschung.

Wissenschaftliche Methoden is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wissenschaftliche Methoden — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Methoden" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

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
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Homework: Akademisches Schreiben', 'Complete these tasks to reinforce "Akademisches Schreiben" (Akademische Sprache).', 'reading', '[{"description":"Review all vocabulary from \"Akademisches Schreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'In this lesson on "Akademisches Schreiben" (Akademische Sprache), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Akademisches Schreiben\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Akademisches Schreiben\""}]', ARRAY['"Akademisches Schreiben" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Akademisches Schreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Akademisches Schreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Akademisches Schreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Akademisches Schreiben — Writing Task 1', 'Write a short text (50-100 words) about akademisches schreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Akademisches Schreiben — Conversation 1', 'Practice a realistic conversation about akademisches schreiben in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akademisches Schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Akademisches Schreiben — Conversation 2', 'Practice a realistic conversation about akademisches schreiben in the context of Akademische Sprache.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akademisches Schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Akademisches Schreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Akademisches Schreiben". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Akademisches Schreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Akademisches Schreiben — Deep Understanding', 'Explain the most important concepts from "Akademisches Schreiben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Akademisches Schreiben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Akademisches Schreiben — Reading Practice', 'This is a C1-level reading passage about akademisches schreiben in the context of Akademische Sprache.

Akademisches Schreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Akademisches Schreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Akademisches Schreiben" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

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
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Homework: Nachrichten und Berichterstattung', 'Complete these tasks to reinforce "Nachrichten und Berichterstattung" (Medienanalyse).', 'grammar', '[{"description":"Review all vocabulary from \"Nachrichten und Berichterstattung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'In this lesson on "Nachrichten und Berichterstattung" (Medienanalyse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nachrichten und Berichterstattung\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nachrichten und Berichterstattung\""}]', ARRAY['"Nachrichten und Berichterstattung" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Nachrichten und Berichterstattung — Speaking 1', 'Practice the key vocabulary and phrases from "Nachrichten und Berichterstattung" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Nachrichten und Berichterstattung — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Nachrichten und Berichterstattung — Writing Task 1', 'Write a short text (50-100 words) about nachrichten und berichterstattung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Nachrichten und Berichterstattung — Conversation 1', 'Practice a realistic conversation about nachrichten und berichterstattung in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nachrichten und Berichterstattung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Nachrichten und Berichterstattung — Conversation 2', 'Practice a realistic conversation about nachrichten und berichterstattung in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nachrichten und Berichterstattung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Nachrichten und Berichterstattung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nachrichten und Berichterstattung". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Nachrichten und Berichterstattung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Nachrichten und Berichterstattung — Deep Understanding', 'Explain the most important concepts from "Nachrichten und Berichterstattung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nachrichten und Berichterstattung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Nachrichten und Berichterstattung — Reading Practice', 'This is a C1-level reading passage about nachrichten und berichterstattung in the context of Medienanalyse.

Nachrichten und Berichterstattung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Nachrichten und Berichterstattung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nachrichten und Berichterstattung" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

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
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Homework: Kunst und Ästhetik', 'Complete these tasks to reinforce "Kunst und Ästhetik" (Literatur und Kunst).', 'mixed', '[{"description":"Review all vocabulary from \"Kunst und Ästhetik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'In this lesson on "Kunst und Ästhetik" (Literatur und Kunst), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kunst und Ästhetik\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kunst und Ästhetik\""}]', ARRAY['"Kunst und Ästhetik" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Kunst und Ästhetik — Speaking 1', 'Practice the key vocabulary and phrases from "Kunst und Ästhetik" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Kunst und Ästhetik — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Kunst und Ästhetik — Writing Task 1', 'Write a short text (50-100 words) about kunst und ästhetik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Kunst und Ästhetik — Conversation 1', 'Practice a realistic conversation about kunst und ästhetik in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kunst und Ästhetik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Kunst und Ästhetik — Conversation 2', 'Practice a realistic conversation about kunst und ästhetik in the context of Literatur und Kunst.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kunst und Ästhetik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Kunst und Ästhetik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kunst und Ästhetik". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Kunst und Ästhetik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Kunst und Ästhetik — Deep Understanding', 'Explain the most important concepts from "Kunst und Ästhetik" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kunst und Ästhetik', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Kunst und Ästhetik — Reading Practice', 'This is a C1-level reading passage about kunst und ästhetik in the context of Literatur und Kunst.

Kunst und Ästhetik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Kunst und Ästhetik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kunst und Ästhetik" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Medienanalyse', 'neutral', false, NULL, 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Medienanalyse', 'informal', false, NULL, 5),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Medienanalyse', 'neutral', false, NULL, 6),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Medienanalyse', 'neutral', false, NULL, 7),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8);

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
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Homework: Argumentation und Intensivierung', 'Complete these tasks to reinforce "Argumentation und Intensivierung" (Medienanalyse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Argumentation und Intensivierung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'In this lesson on "Argumentation und Intensivierung" (Medienanalyse), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Argumentation und Intensivierung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Argumentation und Intensivierung\""}]', ARRAY['"Argumentation und Intensivierung" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Argumentation und Intensivierung — Speaking 1', 'Practice the key vocabulary and phrases from "Argumentation und Intensivierung" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Argumentation und Intensivierung — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Argumentation und Intensivierung — Writing Task 1', 'Write a short text (50-100 words) about argumentation und intensivierung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Argumentation und Intensivierung — Conversation 1', 'Practice a realistic conversation about argumentation und intensivierung in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Argumentation und Intensivierung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Argumentation und Intensivierung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Argumentation und Intensivierung". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Argumentation und Intensivierung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Argumentation und Intensivierung — Deep Understanding', 'Explain the most important concepts from "Argumentation und Intensivierung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Argumentation und Intensivierung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Argumentation und Intensivierung — Reading Practice', 'This is a C1-level reading passage about argumentation und intensivierung in the context of Medienanalyse.

Argumentation und Intensivierung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Argumentation und Intensivierung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Argumentation und Intensivierung" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 2),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 5),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 6),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 7),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8);

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
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Homework: Partizipialattribute und Passivumschreibungen', 'Complete these tasks to reinforce "Partizipialattribute und Passivumschreibungen" (Wissenschaft und Forschung).', 'writing', '[{"description":"Review all vocabulary from \"Partizipialattribute und Passivumschreibungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'In this lesson on "Partizipialattribute und Passivumschreibungen" (Wissenschaft und Forschung), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Partizipialattribute und Passivumschreibungen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Partizipialattribute und Passivumschreibungen\""}]', ARRAY['"Partizipialattribute und Passivumschreibungen" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Partizipialattribute und Passivumschreibungen — Speaking 1', 'Practice the key vocabulary and phrases from "Partizipialattribute und Passivumschreibungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Partizipialattribute und Passivumschreibungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Partizipialattribute und Passivumschreibungen — Writing Task 1', 'Write a short text (50-100 words) about partizipialattribute und passivumschreibungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Partizipialattribute und Passivumschreibungen — Conversation 1', 'Practice a realistic conversation about partizipialattribute und passivumschreibungen in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Partizipialattribute und Passivumschreibungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Partizipialattribute und Passivumschreibungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Partizipialattribute und Passivumschreibungen". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Partizipialattribute und Passivumschreibungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Partizipialattribute und Passivumschreibungen — Deep Understanding', 'Explain the most important concepts from "Partizipialattribute und Passivumschreibungen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Partizipialattribute und Passivumschreibungen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Partizipialattribute und Passivumschreibungen — Reading Practice', 'This is a C1-level reading passage about partizipialattribute und passivumschreibungen in the context of Wissenschaft und Forschung.

Partizipialattribute und Passivumschreibungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Partizipialattribute und Passivumschreibungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Partizipialattribute und Passivumschreibungen" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Medienanalyse', 'neutral', false, NULL, 2),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Medienanalyse', 'informal', false, NULL, 5),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Medienanalyse', 'neutral', false, NULL, 6),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Medienanalyse', 'neutral', false, NULL, 7),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8);

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
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Homework: Argumentation und Intensivierung', 'Complete these tasks to reinforce "Argumentation und Intensivierung" (Medienanalyse).', 'speaking', '[{"description":"Review all vocabulary from \"Argumentation und Intensivierung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'In this lesson on "Argumentation und Intensivierung" (Medienanalyse), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Argumentation und Intensivierung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Argumentation und Intensivierung\""}]', ARRAY['"Argumentation und Intensivierung" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Argumentation und Intensivierung — Speaking 1', 'Practice the key vocabulary and phrases from "Argumentation und Intensivierung" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Argumentation und Intensivierung — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Argumentation und Intensivierung — Writing Task 1', 'Write a short text (50-100 words) about argumentation und intensivierung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Argumentation und Intensivierung — Conversation 1', 'Practice a realistic conversation about argumentation und intensivierung in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Argumentation und Intensivierung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Argumentation und Intensivierung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Argumentation und Intensivierung". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Argumentation und Intensivierung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Argumentation und Intensivierung — Deep Understanding', 'Explain the most important concepts from "Argumentation und Intensivierung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Argumentation und Intensivierung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Argumentation und Intensivierung — Reading Practice', 'This is a C1-level reading passage about argumentation und intensivierung in the context of Medienanalyse.

Argumentation und Intensivierung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Argumentation und Intensivierung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Argumentation und Intensivierung" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Akademische Sprache', 'neutral', false, NULL, 2),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Akademische Sprache', 'informal', false, NULL, 5),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Akademische Sprache', 'neutral', false, NULL, 6),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Akademische Sprache', 'neutral', false, NULL, 7),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8);

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
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Homework: Nominalstil und Schachtelsätze', 'Complete these tasks to reinforce "Nominalstil und Schachtelsätze" (Akademische Sprache).', 'reading', '[{"description":"Review all vocabulary from \"Nominalstil und Schachtelsätze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'In this lesson on "Nominalstil und Schachtelsätze" (Akademische Sprache), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nominalstil und Schachtelsätze\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nominalstil und Schachtelsätze\""}]', ARRAY['"Nominalstil und Schachtelsätze" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Nominalstil und Schachtelsätze — Speaking 1', 'Practice the key vocabulary and phrases from "Nominalstil und Schachtelsätze" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Nominalstil und Schachtelsätze — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Nominalstil und Schachtelsätze — Writing Task 1', 'Write a short text (50-100 words) about nominalstil und schachtelsätze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Nominalstil und Schachtelsätze — Conversation 1', 'Practice a realistic conversation about nominalstil und schachtelsätze in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nominalstil und Schachtelsätze" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Nominalstil und Schachtelsätze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nominalstil und Schachtelsätze". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Nominalstil und Schachtelsätze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Nominalstil und Schachtelsätze — Deep Understanding', 'Explain the most important concepts from "Nominalstil und Schachtelsätze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nominalstil und Schachtelsätze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Nominalstil und Schachtelsätze — Reading Practice', 'This is a C1-level reading passage about nominalstil und schachtelsätze in the context of Akademische Sprache.

Nominalstil und Schachtelsätze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Nominalstil und Schachtelsätze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nominalstil und Schachtelsätze" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 2),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Literatur und Kunst', 'informal', false, NULL, 5),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 6),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 7),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8);

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
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Homework: Stilmittel und Sprachregister', 'Complete these tasks to reinforce "Stilmittel und Sprachregister" (Literatur und Kunst).', 'grammar', '[{"description":"Review all vocabulary from \"Stilmittel und Sprachregister\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'In this lesson on "Stilmittel und Sprachregister" (Literatur und Kunst), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Stilmittel und Sprachregister\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Stilmittel und Sprachregister\""}]', ARRAY['"Stilmittel und Sprachregister" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Stilmittel und Sprachregister — Speaking 1', 'Practice the key vocabulary and phrases from "Stilmittel und Sprachregister" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Stilmittel und Sprachregister — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Stilmittel und Sprachregister — Writing Task 1', 'Write a short text (50-100 words) about stilmittel und sprachregister. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Stilmittel und Sprachregister — Conversation 1', 'Practice a realistic conversation about stilmittel und sprachregister in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Stilmittel und Sprachregister" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Stilmittel und Sprachregister — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Stilmittel und Sprachregister". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Stilmittel und Sprachregister', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Stilmittel und Sprachregister — Deep Understanding', 'Explain the most important concepts from "Stilmittel und Sprachregister" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Stilmittel und Sprachregister', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Stilmittel und Sprachregister — Reading Practice', 'This is a C1-level reading passage about stilmittel und sprachregister in the context of Literatur und Kunst.

Stilmittel und Sprachregister is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Stilmittel und Sprachregister — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Stilmittel und Sprachregister" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Politische Diskurse', 'neutral', false, NULL, 2),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Politische Diskurse', 'informal', false, NULL, 5),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Politische Diskurse', 'neutral', false, NULL, 6),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Politische Diskurse', 'neutral', false, NULL, 7),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8);

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
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Homework: Konjunktiv und Modalverben in der Politik', 'Complete these tasks to reinforce "Konjunktiv und Modalverben in der Politik" (Politische Diskurse).', 'mixed', '[{"description":"Review all vocabulary from \"Konjunktiv und Modalverben in der Politik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'In this lesson on "Konjunktiv und Modalverben in der Politik" (Politische Diskurse), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Konjunktiv und Modalverben in der Politik\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Konjunktiv und Modalverben in der Politik\""}]', ARRAY['"Konjunktiv und Modalverben in der Politik" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Konjunktiv und Modalverben in der Politik — Speaking 1', 'Practice the key vocabulary and phrases from "Konjunktiv und Modalverben in der Politik" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Konjunktiv und Modalverben in der Politik — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Konjunktiv und Modalverben in der Politik — Writing Task 1', 'Write a short text (50-100 words) about konjunktiv und modalverben in der politik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Konjunktiv und Modalverben in der Politik — Conversation 1', 'Practice a realistic conversation about konjunktiv und modalverben in der politik in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Konjunktiv und Modalverben in der Politik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Konjunktiv und Modalverben in der Politik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv und Modalverben in der Politik". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Konjunktiv und Modalverben in der Politik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Konjunktiv und Modalverben in der Politik — Deep Understanding', 'Explain the most important concepts from "Konjunktiv und Modalverben in der Politik" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Konjunktiv und Modalverben in der Politik', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Konjunktiv und Modalverben in der Politik — Reading Practice', 'This is a C1-level reading passage about konjunktiv und modalverben in der politik in the context of Politische Diskurse.

Konjunktiv und Modalverben in der Politik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Konjunktiv und Modalverben in der Politik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Konjunktiv und Modalverben in der Politik" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Politische Diskurse', 'neutral', false, NULL, 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Politische Diskurse', 'informal', false, NULL, 5),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Politische Diskurse', 'neutral', false, NULL, 6),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Politische Diskurse', 'neutral', false, NULL, 7),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Homework: Konjunktiv und Modalverben in der Politik', 'Complete these tasks to reinforce "Konjunktiv und Modalverben in der Politik" (Politische Diskurse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Konjunktiv und Modalverben in der Politik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'In this lesson on "Konjunktiv und Modalverben in der Politik" (Politische Diskurse), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Konjunktiv und Modalverben in der Politik\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Konjunktiv und Modalverben in der Politik\""}]', ARRAY['"Konjunktiv und Modalverben in der Politik" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Konjunktiv und Modalverben in der Politik — Speaking 1', 'Practice the key vocabulary and phrases from "Konjunktiv und Modalverben in der Politik" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Konjunktiv und Modalverben in der Politik — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Konjunktiv und Modalverben in der Politik — Writing Task 1', 'Write a short text (50-100 words) about konjunktiv und modalverben in der politik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Konjunktiv und Modalverben in der Politik — Conversation 1', 'Practice a realistic conversation about konjunktiv und modalverben in der politik in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Konjunktiv und Modalverben in der Politik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Konjunktiv und Modalverben in der Politik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv und Modalverben in der Politik". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Konjunktiv und Modalverben in der Politik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Konjunktiv und Modalverben in der Politik — Deep Understanding', 'Explain the most important concepts from "Konjunktiv und Modalverben in der Politik" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Konjunktiv und Modalverben in der Politik', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Konjunktiv und Modalverben in der Politik — Reading Practice', 'This is a C1-level reading passage about konjunktiv und modalverben in der politik in the context of Politische Diskurse.

Konjunktiv und Modalverben in der Politik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Konjunktiv und Modalverben in der Politik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Konjunktiv und Modalverben in der Politik" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Akademische Sprache', 'neutral', false, NULL, 2),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Akademische Sprache', 'informal', false, NULL, 5),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Akademische Sprache', 'neutral', false, NULL, 6),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Akademische Sprache', 'neutral', false, NULL, 7),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8);

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
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Homework: Nominalstil und Schachtelsätze', 'Complete these tasks to reinforce "Nominalstil und Schachtelsätze" (Akademische Sprache).', 'writing', '[{"description":"Review all vocabulary from \"Nominalstil und Schachtelsätze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'In this lesson on "Nominalstil und Schachtelsätze" (Akademische Sprache), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nominalstil und Schachtelsätze\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nominalstil und Schachtelsätze\""}]', ARRAY['"Nominalstil und Schachtelsätze" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Nominalstil und Schachtelsätze — Speaking 1', 'Practice the key vocabulary and phrases from "Nominalstil und Schachtelsätze" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Nominalstil und Schachtelsätze — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Nominalstil und Schachtelsätze — Writing Task 1', 'Write a short text (50-100 words) about nominalstil und schachtelsätze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Nominalstil und Schachtelsätze — Conversation 1', 'Practice a realistic conversation about nominalstil und schachtelsätze in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nominalstil und Schachtelsätze" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Nominalstil und Schachtelsätze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nominalstil und Schachtelsätze". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Nominalstil und Schachtelsätze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Nominalstil und Schachtelsätze — Deep Understanding', 'Explain the most important concepts from "Nominalstil und Schachtelsätze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nominalstil und Schachtelsätze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Nominalstil und Schachtelsätze — Reading Practice', 'This is a C1-level reading passage about nominalstil und schachtelsätze in the context of Akademische Sprache.

Nominalstil und Schachtelsätze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Nominalstil und Schachtelsätze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nominalstil und Schachtelsätze" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 2),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 5),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 6),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 7),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8);

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
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Homework: Vergleiche und Negation im Wirtschaftsdeutsch', 'Complete these tasks to reinforce "Vergleiche und Negation im Wirtschaftsdeutsch" (Wirtschaftsdeutsch).', 'speaking', '[{"description":"Review all vocabulary from \"Vergleiche und Negation im Wirtschaftsdeutsch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'In this lesson on "Vergleiche und Negation im Wirtschaftsdeutsch" (Wirtschaftsdeutsch), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Vergleiche und Negation im Wirtschaftsdeutsch\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Vergleiche und Negation im Wirtschaftsdeutsch\""}]', ARRAY['"Vergleiche und Negation im Wirtschaftsdeutsch" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Vergleiche und Negation im Wirtschaftsdeutsch — Speaking 1', 'Practice the key vocabulary and phrases from "Vergleiche und Negation im Wirtschaftsdeutsch" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Vergleiche und Negation im Wirtschaftsdeutsch — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Vergleiche und Negation im Wirtschaftsdeutsch — Writing Task 1', 'Write a short text (50-100 words) about vergleiche und negation im wirtschaftsdeutsch. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Vergleiche und Negation im Wirtschaftsdeutsch — Conversation 1', 'Practice a realistic conversation about vergleiche und negation im wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Vergleiche und Negation im Wirtschaftsdeutsch" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Vergleiche und Negation im Wirtschaftsdeutsch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Vergleiche und Negation im Wirtschaftsdeutsch". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Vergleiche und Negation im Wirtschaftsdeutsch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Vergleiche und Negation im Wirtschaftsdeutsch — Deep Understanding', 'Explain the most important concepts from "Vergleiche und Negation im Wirtschaftsdeutsch" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Vergleiche und Negation im Wirtschaftsdeutsch', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Vergleiche und Negation im Wirtschaftsdeutsch — Reading Practice', 'This is a C1-level reading passage about vergleiche und negation im wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.

Vergleiche und Negation im Wirtschaftsdeutsch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Vergleiche und Negation im Wirtschaftsdeutsch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Vergleiche und Negation im Wirtschaftsdeutsch" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 2),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Literatur und Kunst', 'informal', false, NULL, 5),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 6),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 7),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8);

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
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Homework: Stilmittel und Sprachregister', 'Complete these tasks to reinforce "Stilmittel und Sprachregister" (Literatur und Kunst).', 'reading', '[{"description":"Review all vocabulary from \"Stilmittel und Sprachregister\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'In this lesson on "Stilmittel und Sprachregister" (Literatur und Kunst), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Stilmittel und Sprachregister\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Stilmittel und Sprachregister\""}]', ARRAY['"Stilmittel und Sprachregister" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Stilmittel und Sprachregister — Speaking 1', 'Practice the key vocabulary and phrases from "Stilmittel und Sprachregister" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Stilmittel und Sprachregister — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Stilmittel und Sprachregister — Writing Task 1', 'Write a short text (50-100 words) about stilmittel und sprachregister. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Stilmittel und Sprachregister — Conversation 1', 'Practice a realistic conversation about stilmittel und sprachregister in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Stilmittel und Sprachregister" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Stilmittel und Sprachregister — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Stilmittel und Sprachregister". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Stilmittel und Sprachregister', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Stilmittel und Sprachregister — Deep Understanding', 'Explain the most important concepts from "Stilmittel und Sprachregister" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Stilmittel und Sprachregister', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Stilmittel und Sprachregister — Reading Practice', 'This is a C1-level reading passage about stilmittel und sprachregister in the context of Literatur und Kunst.

Stilmittel und Sprachregister is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Stilmittel und Sprachregister — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Stilmittel und Sprachregister" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 5),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 6),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 7),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Homework: Partizipialattribute und Passivumschreibungen', 'Complete these tasks to reinforce "Partizipialattribute und Passivumschreibungen" (Wissenschaft und Forschung).', 'grammar', '[{"description":"Review all vocabulary from \"Partizipialattribute und Passivumschreibungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'In this lesson on "Partizipialattribute und Passivumschreibungen" (Wissenschaft und Forschung), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Partizipialattribute und Passivumschreibungen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Partizipialattribute und Passivumschreibungen\""}]', ARRAY['"Partizipialattribute und Passivumschreibungen" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Partizipialattribute und Passivumschreibungen — Speaking 1', 'Practice the key vocabulary and phrases from "Partizipialattribute und Passivumschreibungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Partizipialattribute und Passivumschreibungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Partizipialattribute und Passivumschreibungen — Writing Task 1', 'Write a short text (50-100 words) about partizipialattribute und passivumschreibungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Partizipialattribute und Passivumschreibungen — Conversation 1', 'Practice a realistic conversation about partizipialattribute und passivumschreibungen in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Partizipialattribute und Passivumschreibungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Partizipialattribute und Passivumschreibungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Partizipialattribute und Passivumschreibungen". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Partizipialattribute und Passivumschreibungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Partizipialattribute und Passivumschreibungen — Deep Understanding', 'Explain the most important concepts from "Partizipialattribute und Passivumschreibungen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Partizipialattribute und Passivumschreibungen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Partizipialattribute und Passivumschreibungen — Reading Practice', 'This is a C1-level reading passage about partizipialattribute und passivumschreibungen in the context of Wissenschaft und Forschung.

Partizipialattribute und Passivumschreibungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Partizipialattribute und Passivumschreibungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Partizipialattribute und Passivumschreibungen" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 2),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 5),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 6),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 7),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8);

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
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Homework: Vergleiche und Negation im Wirtschaftsdeutsch', 'Complete these tasks to reinforce "Vergleiche und Negation im Wirtschaftsdeutsch" (Wirtschaftsdeutsch).', 'mixed', '[{"description":"Review all vocabulary from \"Vergleiche und Negation im Wirtschaftsdeutsch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'In this lesson on "Vergleiche und Negation im Wirtschaftsdeutsch" (Wirtschaftsdeutsch), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Vergleiche und Negation im Wirtschaftsdeutsch\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Vergleiche und Negation im Wirtschaftsdeutsch\""}]', ARRAY['"Vergleiche und Negation im Wirtschaftsdeutsch" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Vergleiche und Negation im Wirtschaftsdeutsch — Speaking 1', 'Practice the key vocabulary and phrases from "Vergleiche und Negation im Wirtschaftsdeutsch" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Vergleiche und Negation im Wirtschaftsdeutsch — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Vergleiche und Negation im Wirtschaftsdeutsch — Writing Task 1', 'Write a short text (50-100 words) about vergleiche und negation im wirtschaftsdeutsch. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Vergleiche und Negation im Wirtschaftsdeutsch — Conversation 1', 'Practice a realistic conversation about vergleiche und negation im wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Vergleiche und Negation im Wirtschaftsdeutsch" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Vergleiche und Negation im Wirtschaftsdeutsch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Vergleiche und Negation im Wirtschaftsdeutsch". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Vergleiche und Negation im Wirtschaftsdeutsch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Vergleiche und Negation im Wirtschaftsdeutsch — Deep Understanding', 'Explain the most important concepts from "Vergleiche und Negation im Wirtschaftsdeutsch" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Vergleiche und Negation im Wirtschaftsdeutsch', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Vergleiche und Negation im Wirtschaftsdeutsch — Reading Practice', 'This is a C1-level reading passage about vergleiche und negation im wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.

Vergleiche und Negation im Wirtschaftsdeutsch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Vergleiche und Negation im Wirtschaftsdeutsch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Vergleiche und Negation im Wirtschaftsdeutsch" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 2),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 5),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 6),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 7),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Homework: Wirtschaftsartikel analysieren', 'Complete these tasks to reinforce "Wirtschaftsartikel analysieren" (Wirtschaftsdeutsch).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wirtschaftsartikel analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'In this lesson on "Wirtschaftsartikel analysieren" (Wirtschaftsdeutsch), you learned key reading concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsartikel analysieren\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsartikel analysieren\""}]', ARRAY['"Wirtschaftsartikel analysieren" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wirtschaftsartikel analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsartikel analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wirtschaftsartikel analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wirtschaftsartikel analysieren — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsartikel analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wirtschaftsartikel analysieren — Conversation 1', 'Practice a realistic conversation about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsartikel analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wirtschaftsartikel analysieren — Conversation 2', 'Practice a realistic conversation about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsartikel analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wirtschaftsartikel analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsartikel analysieren". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wirtschaftsartikel analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wirtschaftsartikel analysieren — Reading Practice', 'This is a C1-level reading passage about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.

Wirtschaftsartikel analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wirtschaftsartikel analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsartikel analysieren" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Homework: Wissenschaftlichen Text verfassen', 'Complete these tasks to reinforce "Wissenschaftlichen Text verfassen" (Akademische Sprache).', 'writing', '[{"description":"Review all vocabulary from \"Wissenschaftlichen Text verfassen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'In this lesson on "Wissenschaftlichen Text verfassen" (Akademische Sprache), you learned key writing concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftlichen Text verfassen\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftlichen Text verfassen\""}]', ARRAY['"Wissenschaftlichen Text verfassen" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wissenschaftlichen Text verfassen — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftlichen Text verfassen" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wissenschaftlichen Text verfassen — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wissenschaftlichen Text verfassen — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftlichen text verfassen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wissenschaftlichen Text verfassen — Writing Task 2', 'Write 5 questions about wissenschaftlichen text verfassen and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wissenschaftlichen Text verfassen — Conversation 1', 'Practice a realistic conversation about wissenschaftlichen text verfassen in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftlichen Text verfassen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wissenschaftlichen Text verfassen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftlichen Text verfassen". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wissenschaftlichen Text verfassen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wissenschaftlichen Text verfassen — Reading Practice', 'This is a C1-level reading passage about wissenschaftlichen text verfassen in the context of Akademische Sprache.

Wissenschaftlichen Text verfassen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wissenschaftlichen Text verfassen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftlichen Text verfassen" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 1),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 2),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 5),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 6),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7);

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
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Homework: Forschungsartikel lesen und analysieren', 'Complete these tasks to reinforce "Forschungsartikel lesen und analysieren" (Wissenschaft und Forschung).', 'speaking', '[{"description":"Review all vocabulary from \"Forschungsartikel lesen und analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'In this lesson on "Forschungsartikel lesen und analysieren" (Wissenschaft und Forschung), you learned key reading concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Forschungsartikel lesen und analysieren\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Forschungsartikel lesen und analysieren\""}]', ARRAY['"Forschungsartikel lesen und analysieren" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Forschungsartikel lesen und analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Forschungsartikel lesen und analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Forschungsartikel lesen und analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Forschungsartikel lesen und analysieren — Writing Task 1', 'Write a short text (50-100 words) about forschungsartikel lesen und analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Forschungsartikel lesen und analysieren — Conversation 1', 'Practice a realistic conversation about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsartikel lesen und analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Forschungsartikel lesen und analysieren — Conversation 2', 'Practice a realistic conversation about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsartikel lesen und analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Forschungsartikel lesen und analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Forschungsartikel lesen und analysieren". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Forschungsartikel lesen und analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Forschungsartikel lesen und analysieren — Reading Practice', 'This is a C1-level reading passage about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.

Forschungsartikel lesen und analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Forschungsartikel lesen und analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Forschungsartikel lesen und analysieren" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

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
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Homework: Mediendiskussion führen', 'Complete these tasks to reinforce "Mediendiskussion führen" (Medienanalyse).', 'reading', '[{"description":"Review all vocabulary from \"Mediendiskussion führen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'In this lesson on "Mediendiskussion führen" (Medienanalyse), you learned key speaking concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mediendiskussion führen\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mediendiskussion führen\""}]', ARRAY['"Mediendiskussion führen" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mediendiskussion führen — Speaking 1', 'Practice the key vocabulary and phrases from "Mediendiskussion führen" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mediendiskussion führen — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mediendiskussion führen — Writing Task 1', 'Write a short text (50-100 words) about mediendiskussion führen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mediendiskussion führen — Conversation 1', 'Practice a realistic conversation about mediendiskussion führen in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mediendiskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mediendiskussion führen — Conversation 2', 'Practice a realistic conversation about mediendiskussion führen in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mediendiskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mediendiskussion führen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mediendiskussion führen". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Mediendiskussion führen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mediendiskussion führen — Reading Practice', 'This is a C1-level reading passage about mediendiskussion führen in the context of Medienanalyse.

Mediendiskussion führen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mediendiskussion führen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mediendiskussion führen" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

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
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Homework: Politische Rede analysieren', 'Complete these tasks to reinforce "Politische Rede analysieren" (Politische Diskurse).', 'grammar', '[{"description":"Review all vocabulary from \"Politische Rede analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'In this lesson on "Politische Rede analysieren" (Politische Diskurse), you learned key listening concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Rede analysieren\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Rede analysieren\""}]', ARRAY['"Politische Rede analysieren" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Politische Rede analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Rede analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Politische Rede analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Politische Rede analysieren — Writing Task 1', 'Write a short text (50-100 words) about politische rede analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Politische Rede analysieren — Conversation 1', 'Practice a realistic conversation about politische rede analysieren in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Rede analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Politische Rede analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Rede analysieren". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Rede analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Politische Rede analysieren — Reading Practice', 'This is a C1-level reading passage about politische rede analysieren in the context of Politische Diskurse.

Politische Rede analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Politische Rede analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Rede analysieren" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

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
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Homework: Literarische Analyse schreiben', 'Complete these tasks to reinforce "Literarische Analyse schreiben" (Literatur und Kunst).', 'mixed', '[{"description":"Review all vocabulary from \"Literarische Analyse schreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'In this lesson on "Literarische Analyse schreiben" (Literatur und Kunst), you learned key writing concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Literarische Analyse schreiben\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Literarische Analyse schreiben\""}]', ARRAY['"Literarische Analyse schreiben" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Literarische Analyse schreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Literarische Analyse schreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Literarische Analyse schreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Literarische Analyse schreiben — Writing Task 1', 'Write a short text (50-100 words) about literarische analyse schreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Literarische Analyse schreiben — Writing Task 2', 'Write 5 questions about literarische analyse schreiben and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Literarische Analyse schreiben — Conversation 1', 'Practice a realistic conversation about literarische analyse schreiben in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literarische Analyse schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Literarische Analyse schreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literarische Analyse schreiben". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Literarische Analyse schreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Literarische Analyse schreiben — Reading Practice', 'This is a C1-level reading passage about literarische analyse schreiben in the context of Literatur und Kunst.

Literarische Analyse schreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Literarische Analyse schreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Literarische Analyse schreiben" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

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
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Homework: Wissenschaftlichen Text verfassen', 'Complete these tasks to reinforce "Wissenschaftlichen Text verfassen" (Akademische Sprache).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wissenschaftlichen Text verfassen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'In this lesson on "Wissenschaftlichen Text verfassen" (Akademische Sprache), you learned key writing concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftlichen Text verfassen\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftlichen Text verfassen\""}]', ARRAY['"Wissenschaftlichen Text verfassen" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wissenschaftlichen Text verfassen — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftlichen Text verfassen" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wissenschaftlichen Text verfassen — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wissenschaftlichen Text verfassen — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftlichen text verfassen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wissenschaftlichen Text verfassen — Writing Task 2', 'Write 5 questions about wissenschaftlichen text verfassen and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wissenschaftlichen Text verfassen — Conversation 1', 'Practice a realistic conversation about wissenschaftlichen text verfassen in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftlichen Text verfassen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wissenschaftlichen Text verfassen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftlichen Text verfassen". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wissenschaftlichen Text verfassen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wissenschaftlichen Text verfassen — Reading Practice', 'This is a C1-level reading passage about wissenschaftlichen text verfassen in the context of Akademische Sprache.

Wissenschaftlichen Text verfassen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wissenschaftlichen Text verfassen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftlichen Text verfassen" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 1),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 2),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 5),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 6),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Homework: Forschungsartikel lesen und analysieren', 'Complete these tasks to reinforce "Forschungsartikel lesen und analysieren" (Wissenschaft und Forschung).', 'writing', '[{"description":"Review all vocabulary from \"Forschungsartikel lesen und analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'In this lesson on "Forschungsartikel lesen und analysieren" (Wissenschaft und Forschung), you learned key reading concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Forschungsartikel lesen und analysieren\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Forschungsartikel lesen und analysieren\""}]', ARRAY['"Forschungsartikel lesen und analysieren" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Forschungsartikel lesen und analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Forschungsartikel lesen und analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Forschungsartikel lesen und analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Forschungsartikel lesen und analysieren — Writing Task 1', 'Write a short text (50-100 words) about forschungsartikel lesen und analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Forschungsartikel lesen und analysieren — Conversation 1', 'Practice a realistic conversation about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsartikel lesen und analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Forschungsartikel lesen und analysieren — Conversation 2', 'Practice a realistic conversation about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsartikel lesen und analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Forschungsartikel lesen und analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Forschungsartikel lesen und analysieren". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Forschungsartikel lesen und analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Forschungsartikel lesen und analysieren — Reading Practice', 'This is a C1-level reading passage about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.

Forschungsartikel lesen und analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Forschungsartikel lesen und analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Forschungsartikel lesen und analysieren" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

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
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Homework: Mediendiskussion führen', 'Complete these tasks to reinforce "Mediendiskussion führen" (Medienanalyse).', 'speaking', '[{"description":"Review all vocabulary from \"Mediendiskussion führen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'In this lesson on "Mediendiskussion führen" (Medienanalyse), you learned key speaking concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mediendiskussion führen\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mediendiskussion führen\""}]', ARRAY['"Mediendiskussion führen" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mediendiskussion führen — Speaking 1', 'Practice the key vocabulary and phrases from "Mediendiskussion führen" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mediendiskussion führen — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mediendiskussion führen — Writing Task 1', 'Write a short text (50-100 words) about mediendiskussion führen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mediendiskussion führen — Conversation 1', 'Practice a realistic conversation about mediendiskussion führen in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mediendiskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mediendiskussion führen — Conversation 2', 'Practice a realistic conversation about mediendiskussion führen in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mediendiskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mediendiskussion führen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mediendiskussion führen". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Mediendiskussion führen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mediendiskussion führen — Reading Practice', 'This is a C1-level reading passage about mediendiskussion führen in the context of Medienanalyse.

Mediendiskussion führen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mediendiskussion führen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mediendiskussion führen" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

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
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Homework: Politische Rede analysieren', 'Complete these tasks to reinforce "Politische Rede analysieren" (Politische Diskurse).', 'reading', '[{"description":"Review all vocabulary from \"Politische Rede analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'In this lesson on "Politische Rede analysieren" (Politische Diskurse), you learned key listening concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Rede analysieren\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Rede analysieren\""}]', ARRAY['"Politische Rede analysieren" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Politische Rede analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Rede analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Politische Rede analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Politische Rede analysieren — Writing Task 1', 'Write a short text (50-100 words) about politische rede analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Politische Rede analysieren — Conversation 1', 'Practice a realistic conversation about politische rede analysieren in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Rede analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Politische Rede analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Rede analysieren". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Rede analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Politische Rede analysieren — Reading Practice', 'This is a C1-level reading passage about politische rede analysieren in the context of Politische Diskurse.

Politische Rede analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Politische Rede analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Rede analysieren" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 2),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 5),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 6),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 7),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Homework: Wirtschaftsartikel analysieren', 'Complete these tasks to reinforce "Wirtschaftsartikel analysieren" (Wirtschaftsdeutsch).', 'grammar', '[{"description":"Review all vocabulary from \"Wirtschaftsartikel analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'In this lesson on "Wirtschaftsartikel analysieren" (Wirtschaftsdeutsch), you learned key reading concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsartikel analysieren\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsartikel analysieren\""}]', ARRAY['"Wirtschaftsartikel analysieren" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wirtschaftsartikel analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsartikel analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wirtschaftsartikel analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wirtschaftsartikel analysieren — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsartikel analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wirtschaftsartikel analysieren — Conversation 1', 'Practice a realistic conversation about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsartikel analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wirtschaftsartikel analysieren — Conversation 2', 'Practice a realistic conversation about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsartikel analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wirtschaftsartikel analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsartikel analysieren". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wirtschaftsartikel analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wirtschaftsartikel analysieren — Reading Practice', 'This is a C1-level reading passage about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.

Wirtschaftsartikel analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wirtschaftsartikel analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsartikel analysieren" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

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
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Homework: Literarische Analyse schreiben', 'Complete these tasks to reinforce "Literarische Analyse schreiben" (Literatur und Kunst).', 'mixed', '[{"description":"Review all vocabulary from \"Literarische Analyse schreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'In this lesson on "Literarische Analyse schreiben" (Literatur und Kunst), you learned key writing concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Literarische Analyse schreiben\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Literarische Analyse schreiben\""}]', ARRAY['"Literarische Analyse schreiben" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Literarische Analyse schreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Literarische Analyse schreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Literarische Analyse schreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Literarische Analyse schreiben — Writing Task 1', 'Write a short text (50-100 words) about literarische analyse schreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Literarische Analyse schreiben — Writing Task 2', 'Write 5 questions about literarische analyse schreiben and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Literarische Analyse schreiben — Conversation 1', 'Practice a realistic conversation about literarische analyse schreiben in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literarische Analyse schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Literarische Analyse schreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literarische Analyse schreiben". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Literarische Analyse schreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Literarische Analyse schreiben — Reading Practice', 'This is a C1-level reading passage about literarische analyse schreiben in the context of Literatur und Kunst.

Literarische Analyse schreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Literarische Analyse schreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Literarische Analyse schreiben" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5);

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
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Homework: Wiederholung: Wirtschaftsdeutsch', 'Complete these tasks to reinforce "Wiederholung: Wirtschaftsdeutsch" (Wirtschaftsdeutsch).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Wirtschaftsdeutsch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'In this lesson on "Wiederholung: Wirtschaftsdeutsch" (Wirtschaftsdeutsch), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wirtschaftsdeutsch\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wirtschaftsdeutsch\""}]', ARRAY['"Wiederholung: Wirtschaftsdeutsch" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wirtschaftsdeutsch — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wirtschaftsdeutsch" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wirtschaftsdeutsch — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wirtschaftsdeutsch — Conversation 1', 'Practice a realistic conversation about wiederholung: wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wirtschaftsdeutsch" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wirtschaftsdeutsch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wirtschaftsdeutsch". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wiederholung: Wirtschaftsdeutsch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wirtschaftsdeutsch — Reading Practice', 'This is a C1-level reading passage about wiederholung: wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.

Wiederholung: Wirtschaftsdeutsch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wirtschaftsdeutsch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wirtschaftsdeutsch" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medienanalyse', 'formal', false, NULL, 5);

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
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Homework: Wiederholung: Medienanalyse', 'Complete these tasks to reinforce "Wiederholung: Medienanalyse" (Medienanalyse).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Medienanalyse\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'In this lesson on "Wiederholung: Medienanalyse" (Medienanalyse), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Medienanalyse\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Medienanalyse\""}]', ARRAY['"Wiederholung: Medienanalyse" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medienanalyse — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Medienanalyse" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medienanalyse — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medienanalyse — Conversation 1', 'Practice a realistic conversation about wiederholung: medienanalyse in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Medienanalyse" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medienanalyse — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Medienanalyse". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Wiederholung: Medienanalyse', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medienanalyse — Reading Practice', 'This is a C1-level reading passage about wiederholung: medienanalyse in the context of Medienanalyse.

Wiederholung: Medienanalyse is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medienanalyse — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Medienanalyse" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Homework: Wiederholung: Literatur und Kunst', 'Complete these tasks to reinforce "Wiederholung: Literatur und Kunst" (Literatur und Kunst).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Literatur und Kunst\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'In this lesson on "Wiederholung: Literatur und Kunst" (Literatur und Kunst), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Literatur und Kunst\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Literatur und Kunst\""}]', ARRAY['"Wiederholung: Literatur und Kunst" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Literatur und Kunst — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Literatur und Kunst" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Literatur und Kunst — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Literatur und Kunst — Conversation 1', 'Practice a realistic conversation about wiederholung: literatur und kunst in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Literatur und Kunst" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Literatur und Kunst — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Literatur und Kunst". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Wiederholung: Literatur und Kunst', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Literatur und Kunst — Reading Practice', 'This is a C1-level reading passage about wiederholung: literatur und kunst in the context of Literatur und Kunst.

Wiederholung: Literatur und Kunst is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Literatur und Kunst — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Literatur und Kunst" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5);

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
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Homework: Wiederholung: Literatur und Kunst', 'Complete these tasks to reinforce "Wiederholung: Literatur und Kunst" (Literatur und Kunst).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Literatur und Kunst\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'In this lesson on "Wiederholung: Literatur und Kunst" (Literatur und Kunst), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Literatur und Kunst\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Literatur und Kunst\""}]', ARRAY['"Wiederholung: Literatur und Kunst" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Literatur und Kunst — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Literatur und Kunst" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Literatur und Kunst — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Literatur und Kunst — Conversation 1', 'Practice a realistic conversation about wiederholung: literatur und kunst in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Literatur und Kunst" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Literatur und Kunst — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Literatur und Kunst". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Wiederholung: Literatur und Kunst', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Literatur und Kunst — Reading Practice', 'This is a C1-level reading passage about wiederholung: literatur und kunst in the context of Literatur und Kunst.

Wiederholung: Literatur und Kunst is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Literatur und Kunst — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Literatur und Kunst" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5);

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
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Homework: Wiederholung: Wirtschaftsdeutsch', 'Complete these tasks to reinforce "Wiederholung: Wirtschaftsdeutsch" (Wirtschaftsdeutsch).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Wirtschaftsdeutsch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'In this lesson on "Wiederholung: Wirtschaftsdeutsch" (Wirtschaftsdeutsch), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wirtschaftsdeutsch\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wirtschaftsdeutsch\""}]', ARRAY['"Wiederholung: Wirtschaftsdeutsch" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wirtschaftsdeutsch — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wirtschaftsdeutsch" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wirtschaftsdeutsch — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wirtschaftsdeutsch — Conversation 1', 'Practice a realistic conversation about wiederholung: wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wirtschaftsdeutsch" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wirtschaftsdeutsch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wirtschaftsdeutsch". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wiederholung: Wirtschaftsdeutsch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wirtschaftsdeutsch — Reading Practice', 'This is a C1-level reading passage about wiederholung: wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.

Wiederholung: Wirtschaftsdeutsch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wirtschaftsdeutsch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wirtschaftsdeutsch" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Politische Diskurse', 'formal', false, NULL, 5);

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
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Homework: Wiederholung: Politische Diskurse', 'Complete these tasks to reinforce "Wiederholung: Politische Diskurse" (Politische Diskurse).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Politische Diskurse\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'In this lesson on "Wiederholung: Politische Diskurse" (Politische Diskurse), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Politische Diskurse\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Politische Diskurse\""}]', ARRAY['"Wiederholung: Politische Diskurse" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Politische Diskurse — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Politische Diskurse" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Politische Diskurse — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Politische Diskurse — Conversation 1', 'Practice a realistic conversation about wiederholung: politische diskurse in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Politische Diskurse" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Politische Diskurse — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Politische Diskurse". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Wiederholung: Politische Diskurse', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Politische Diskurse — Reading Practice', 'This is a C1-level reading passage about wiederholung: politische diskurse in the context of Politische Diskurse.

Wiederholung: Politische Diskurse is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Politische Diskurse — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Politische Diskurse" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5);

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
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Homework: Wiederholung: Wissenschaft und Forschung', 'Complete these tasks to reinforce "Wiederholung: Wissenschaft und Forschung" (Wissenschaft und Forschung).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Wissenschaft und Forschung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'In this lesson on "Wiederholung: Wissenschaft und Forschung" (Wissenschaft und Forschung), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wissenschaft und Forschung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wissenschaft und Forschung\""}]', ARRAY['"Wiederholung: Wissenschaft und Forschung" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Wissenschaft und Forschung — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wissenschaft und Forschung" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Wissenschaft und Forschung — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Wissenschaft und Forschung — Conversation 1', 'Practice a realistic conversation about wiederholung: wissenschaft und forschung in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wissenschaft und Forschung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Wissenschaft und Forschung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wissenschaft und Forschung". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Wiederholung: Wissenschaft und Forschung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Wissenschaft und Forschung — Reading Practice', 'This is a C1-level reading passage about wiederholung: wissenschaft und forschung in the context of Wissenschaft und Forschung.

Wiederholung: Wissenschaft und Forschung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Wissenschaft und Forschung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wissenschaft und Forschung" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Akademische Sprache', 'formal', false, NULL, 5);

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
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Homework: Wiederholung: Akademische Sprache', 'Complete these tasks to reinforce "Wiederholung: Akademische Sprache" (Akademische Sprache).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Akademische Sprache\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'In this lesson on "Wiederholung: Akademische Sprache" (Akademische Sprache), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Akademische Sprache\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Akademische Sprache\""}]', ARRAY['"Wiederholung: Akademische Sprache" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Akademische Sprache — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Akademische Sprache" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Akademische Sprache — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Akademische Sprache — Conversation 1', 'Practice a realistic conversation about wiederholung: akademische sprache in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Akademische Sprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Akademische Sprache — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Akademische Sprache". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wiederholung: Akademische Sprache', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Akademische Sprache — Reading Practice', 'This is a C1-level reading passage about wiederholung: akademische sprache in the context of Akademische Sprache.

Wiederholung: Akademische Sprache is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Akademische Sprache — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Akademische Sprache" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Akademische Sprache', 'formal', false, NULL, 5);

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
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Homework: Wiederholung: Akademische Sprache', 'Complete these tasks to reinforce "Wiederholung: Akademische Sprache" (Akademische Sprache).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Akademische Sprache\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'In this lesson on "Wiederholung: Akademische Sprache" (Akademische Sprache), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Akademische Sprache\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Akademische Sprache\""}]', ARRAY['"Wiederholung: Akademische Sprache" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Akademische Sprache — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Akademische Sprache" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Akademische Sprache — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Akademische Sprache — Conversation 1', 'Practice a realistic conversation about wiederholung: akademische sprache in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Akademische Sprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Akademische Sprache — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Akademische Sprache". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wiederholung: Akademische Sprache', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Akademische Sprache — Reading Practice', 'This is a C1-level reading passage about wiederholung: akademische sprache in the context of Akademische Sprache.

Wiederholung: Akademische Sprache is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Akademische Sprache — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Akademische Sprache" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Politische Diskurse', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Homework: Wiederholung: Politische Diskurse', 'Complete these tasks to reinforce "Wiederholung: Politische Diskurse" (Politische Diskurse).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Politische Diskurse\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'In this lesson on "Wiederholung: Politische Diskurse" (Politische Diskurse), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Politische Diskurse\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Politische Diskurse\""}]', ARRAY['"Wiederholung: Politische Diskurse" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Politische Diskurse — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Politische Diskurse" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Politische Diskurse — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Politische Diskurse — Conversation 1', 'Practice a realistic conversation about wiederholung: politische diskurse in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Politische Diskurse" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Politische Diskurse — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Politische Diskurse". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Wiederholung: Politische Diskurse', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Politische Diskurse — Reading Practice', 'This is a C1-level reading passage about wiederholung: politische diskurse in the context of Politische Diskurse.

Wiederholung: Politische Diskurse is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Politische Diskurse — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Politische Diskurse" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medienanalyse', 'formal', false, NULL, 5);

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
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Homework: Wiederholung: Medienanalyse', 'Complete these tasks to reinforce "Wiederholung: Medienanalyse" (Medienanalyse).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Medienanalyse\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'In this lesson on "Wiederholung: Medienanalyse" (Medienanalyse), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Medienanalyse\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Medienanalyse\""}]', ARRAY['"Wiederholung: Medienanalyse" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Medienanalyse — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Medienanalyse" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Medienanalyse — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Medienanalyse — Conversation 1', 'Practice a realistic conversation about wiederholung: medienanalyse in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Medienanalyse" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Medienanalyse — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Medienanalyse". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Wiederholung: Medienanalyse', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Medienanalyse — Reading Practice', 'This is a C1-level reading passage about wiederholung: medienanalyse in the context of Medienanalyse.

Wiederholung: Medienanalyse is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Medienanalyse — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Medienanalyse" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5);

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
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Homework: Wiederholung: Wissenschaft und Forschung', 'Complete these tasks to reinforce "Wiederholung: Wissenschaft und Forschung" (Wissenschaft und Forschung).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Wissenschaft und Forschung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'In this lesson on "Wiederholung: Wissenschaft und Forschung" (Wissenschaft und Forschung), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wissenschaft und Forschung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wissenschaft und Forschung\""}]', ARRAY['"Wiederholung: Wissenschaft und Forschung" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wissenschaft und Forschung — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wissenschaft und Forschung" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wissenschaft und Forschung — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wissenschaft und Forschung — Conversation 1', 'Practice a realistic conversation about wiederholung: wissenschaft und forschung in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wissenschaft und Forschung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wissenschaft und Forschung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wissenschaft und Forschung". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Wiederholung: Wissenschaft und Forschung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wissenschaft und Forschung — Reading Practice', 'This is a C1-level reading passage about wiederholung: wissenschaft und forschung in the context of Wissenschaft und Forschung.

Wiederholung: Wissenschaft und Forschung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Wissenschaft und Forschung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wissenschaft und Forschung" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medienanalyse', 'formal', false, NULL, 5);

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
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5);

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
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5);

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
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Politische Diskurse', 'formal', false, NULL, 5);

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
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5);

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
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Politische Diskurse', 'formal', false, NULL, 5);

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
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5);

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
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5);

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
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5);

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
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Akademische Sprache', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medienanalyse', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Akademische Sprache', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);