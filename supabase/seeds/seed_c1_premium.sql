-- ============================================================
-- PREMIUM CONTENT SEED — Level C1
-- Generated for 72 lessons across 12 modules
-- ============================================================


INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Homework: Medienlandschaft', 'Complete these tasks to reinforce "Medienlandschaft" (Medienanalyse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Medienlandschaft\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'In this lesson on "Medienlandschaft" (Medienanalyse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Medienlandschaft\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Medienlandschaft\""}]', ARRAY['"Medienlandschaft" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Medienlandschaft — Speaking 1', 'Practice the key vocabulary and phrases from "Medienlandschaft" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Medienlandschaft — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Medienlandschaft — Writing Task 1', 'Write a short text (50-100 words) about medienlandschaft. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Medienlandschaft — Conversation 1', 'Practice a realistic conversation about medienlandschaft in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medienlandschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Medienlandschaft — Conversation 2', 'Practice a realistic conversation about medienlandschaft in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medienlandschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Medienlandschaft — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Medienlandschaft". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Medienlandschaft', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Medienlandschaft — Deep Understanding', 'Explain the most important concepts from "Medienlandschaft" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Medienlandschaft', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Medienlandschaft — Reading Practice', 'This is a C1-level reading passage about medienlandschaft in the context of Medienanalyse.

Medienlandschaft is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('11ad08c0-55b0-4393-b9e2-b6cd3bddc8b4', 'Medienlandschaft — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Medienlandschaft" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Homework: Wissenschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Wissenschaftliche Grundbegriffe" (Akademische Sprache).', 'writing', '[{"description":"Review all vocabulary from \"Wissenschaftliche Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'In this lesson on "Wissenschaftliche Grundbegriffe" (Akademische Sprache), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Grundbegriffe\""}]', ARRAY['"Wissenschaftliche Grundbegriffe" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wissenschaftliche Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wissenschaftliche Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wissenschaftliche Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wissenschaftliche Grundbegriffe — Conversation 1', 'Practice a realistic conversation about wissenschaftliche grundbegriffe in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wissenschaftliche Grundbegriffe — Conversation 2', 'Practice a realistic conversation about wissenschaftliche grundbegriffe in the context of Akademische Sprache.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wissenschaftliche Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Grundbegriffe". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wissenschaftliche Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wissenschaftliche Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wissenschaftliche Grundbegriffe — Reading Practice', 'This is a C1-level reading passage about wissenschaftliche grundbegriffe in the context of Akademische Sprache.

Wissenschaftliche Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8d42e0cc-1434-4a93-bd8e-0057e3f00d54', 'Wissenschaftliche Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Grundbegriffe" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 1),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 3),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 4),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 6),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 9),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Homework: Forschungsterminologie', 'Complete these tasks to reinforce "Forschungsterminologie" (Wissenschaft und Forschung).', 'speaking', '[{"description":"Review all vocabulary from \"Forschungsterminologie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'In this lesson on "Forschungsterminologie" (Wissenschaft und Forschung), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Forschungsterminologie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Forschungsterminologie\""}]', ARRAY['"Forschungsterminologie" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Forschungsterminologie — Speaking 1', 'Practice the key vocabulary and phrases from "Forschungsterminologie" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Forschungsterminologie — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Forschungsterminologie — Writing Task 1', 'Write a short text (50-100 words) about forschungsterminologie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Forschungsterminologie — Conversation 1', 'Practice a realistic conversation about forschungsterminologie in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsterminologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Forschungsterminologie — Conversation 2', 'Practice a realistic conversation about forschungsterminologie in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsterminologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Forschungsterminologie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Forschungsterminologie". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Forschungsterminologie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Forschungsterminologie — Deep Understanding', 'Explain the most important concepts from "Forschungsterminologie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Forschungsterminologie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Forschungsterminologie — Reading Practice', 'This is a C1-level reading passage about forschungsterminologie in the context of Wissenschaft und Forschung.

Forschungsterminologie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('1cc180fc-aedd-4878-88f6-37a9808bff4e', 'Forschungsterminologie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Forschungsterminologie" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 1),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 3),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 4),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 6),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 9),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Homework: Forschungsterminologie', 'Complete these tasks to reinforce "Forschungsterminologie" (Wissenschaft und Forschung).', 'reading', '[{"description":"Review all vocabulary from \"Forschungsterminologie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'In this lesson on "Forschungsterminologie" (Wissenschaft und Forschung), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Forschungsterminologie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Forschungsterminologie\""}]', ARRAY['"Forschungsterminologie" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Forschungsterminologie — Speaking 1', 'Practice the key vocabulary and phrases from "Forschungsterminologie" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Forschungsterminologie — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Forschungsterminologie — Writing Task 1', 'Write a short text (50-100 words) about forschungsterminologie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Forschungsterminologie — Conversation 1', 'Practice a realistic conversation about forschungsterminologie in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsterminologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Forschungsterminologie — Conversation 2', 'Practice a realistic conversation about forschungsterminologie in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsterminologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Forschungsterminologie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Forschungsterminologie". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Forschungsterminologie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Forschungsterminologie — Deep Understanding', 'Explain the most important concepts from "Forschungsterminologie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Forschungsterminologie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Forschungsterminologie — Reading Practice', 'This is a C1-level reading passage about forschungsterminologie in the context of Wissenschaft und Forschung.

Forschungsterminologie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('bb8715b2-36f0-4a7e-af2e-b53b2e6922d8', 'Forschungsterminologie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Forschungsterminologie" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 1),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 3),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 4),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 6),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 7),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 9),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Homework: Wirtschaftsbegriffe', 'Complete these tasks to reinforce "Wirtschaftsbegriffe" (Wirtschaftsdeutsch).', 'grammar', '[{"description":"Review all vocabulary from \"Wirtschaftsbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'In this lesson on "Wirtschaftsbegriffe" (Wirtschaftsdeutsch), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsbegriffe\""}]', ARRAY['"Wirtschaftsbegriffe" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wirtschaftsbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wirtschaftsbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wirtschaftsbegriffe — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wirtschaftsbegriffe — Conversation 1', 'Practice a realistic conversation about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wirtschaftsbegriffe — Conversation 2', 'Practice a realistic conversation about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wirtschaftsbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsbegriffe". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wirtschaftsbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wirtschaftsbegriffe — Deep Understanding', 'Explain the most important concepts from "Wirtschaftsbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wirtschaftsbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wirtschaftsbegriffe — Reading Practice', 'This is a C1-level reading passage about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.

Wirtschaftsbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('45523e26-0bc2-40b9-aaa3-c8d5b10a2d32', 'Wirtschaftsbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsbegriffe" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Homework: Literaturwissenschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Literaturwissenschaftliche Grundbegriffe" (Literatur und Kunst).', 'mixed', '[{"description":"Review all vocabulary from \"Literaturwissenschaftliche Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'In this lesson on "Literaturwissenschaftliche Grundbegriffe" (Literatur und Kunst), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Literaturwissenschaftliche Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Literaturwissenschaftliche Grundbegriffe\""}]', ARRAY['"Literaturwissenschaftliche Grundbegriffe" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Literaturwissenschaftliche Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Literaturwissenschaftliche Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Literaturwissenschaftliche Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Literaturwissenschaftliche Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about literaturwissenschaftliche grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Literaturwissenschaftliche Grundbegriffe — Conversation 1', 'Practice a realistic conversation about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literaturwissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Literaturwissenschaftliche Grundbegriffe — Conversation 2', 'Practice a realistic conversation about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literaturwissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Literaturwissenschaftliche Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literaturwissenschaftliche Grundbegriffe". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Literaturwissenschaftliche Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Literaturwissenschaftliche Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Literaturwissenschaftliche Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Literaturwissenschaftliche Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Literaturwissenschaftliche Grundbegriffe — Reading Practice', 'This is a C1-level reading passage about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.

Literaturwissenschaftliche Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b8078960-5692-4fb0-b871-461da909bc1b', 'Literaturwissenschaftliche Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Literaturwissenschaftliche Grundbegriffe" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Homework: Medienlandschaft', 'Complete these tasks to reinforce "Medienlandschaft" (Medienanalyse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Medienlandschaft\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'In this lesson on "Medienlandschaft" (Medienanalyse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Medienlandschaft\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Medienlandschaft\""}]', ARRAY['"Medienlandschaft" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Medienlandschaft — Speaking 1', 'Practice the key vocabulary and phrases from "Medienlandschaft" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Medienlandschaft — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Medienlandschaft — Writing Task 1', 'Write a short text (50-100 words) about medienlandschaft. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Medienlandschaft — Conversation 1', 'Practice a realistic conversation about medienlandschaft in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medienlandschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Medienlandschaft — Conversation 2', 'Practice a realistic conversation about medienlandschaft in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medienlandschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Medienlandschaft — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Medienlandschaft". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Medienlandschaft', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Medienlandschaft — Deep Understanding', 'Explain the most important concepts from "Medienlandschaft" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Medienlandschaft', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Medienlandschaft — Reading Practice', 'This is a C1-level reading passage about medienlandschaft in the context of Medienanalyse.

Medienlandschaft is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('504ad3d9-306f-4392-be42-47a4ff1e15ed', 'Medienlandschaft — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Medienlandschaft" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 1),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 3),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 4),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 6),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 7),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 9),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Homework: Wirtschaftsbegriffe', 'Complete these tasks to reinforce "Wirtschaftsbegriffe" (Wirtschaftsdeutsch).', 'writing', '[{"description":"Review all vocabulary from \"Wirtschaftsbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'In this lesson on "Wirtschaftsbegriffe" (Wirtschaftsdeutsch), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsbegriffe\""}]', ARRAY['"Wirtschaftsbegriffe" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wirtschaftsbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wirtschaftsbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wirtschaftsbegriffe — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wirtschaftsbegriffe — Conversation 1', 'Practice a realistic conversation about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wirtschaftsbegriffe — Conversation 2', 'Practice a realistic conversation about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wirtschaftsbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsbegriffe". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wirtschaftsbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wirtschaftsbegriffe — Deep Understanding', 'Explain the most important concepts from "Wirtschaftsbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wirtschaftsbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wirtschaftsbegriffe — Reading Practice', 'This is a C1-level reading passage about wirtschaftsbegriffe in the context of Wirtschaftsdeutsch.

Wirtschaftsbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('93d2ca9c-9766-4880-bb51-c110243f07ad', 'Wirtschaftsbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsbegriffe" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Homework: Politische Systeme', 'Complete these tasks to reinforce "Politische Systeme" (Politische Diskurse).', 'speaking', '[{"description":"Review all vocabulary from \"Politische Systeme\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'In this lesson on "Politische Systeme" (Politische Diskurse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Systeme\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Systeme\""}]', ARRAY['"Politische Systeme" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Politische Systeme — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Systeme" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Politische Systeme — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Politische Systeme — Writing Task 1', 'Write a short text (50-100 words) about politische systeme. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Politische Systeme — Conversation 1', 'Practice a realistic conversation about politische systeme in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Systeme" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Politische Systeme — Conversation 2', 'Practice a realistic conversation about politische systeme in the context of Politische Diskurse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Systeme" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Politische Systeme — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Systeme". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Systeme', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Politische Systeme — Deep Understanding', 'Explain the most important concepts from "Politische Systeme" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Politische Systeme', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Politische Systeme — Reading Practice', 'This is a C1-level reading passage about politische systeme in the context of Politische Diskurse.

Politische Systeme is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('523278e8-1346-45b2-9bfd-b6abcb041c75', 'Politische Systeme — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Systeme" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Homework: Wissenschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Wissenschaftliche Grundbegriffe" (Akademische Sprache).', 'reading', '[{"description":"Review all vocabulary from \"Wissenschaftliche Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'In this lesson on "Wissenschaftliche Grundbegriffe" (Akademische Sprache), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Grundbegriffe\""}]', ARRAY['"Wissenschaftliche Grundbegriffe" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wissenschaftliche Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wissenschaftliche Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wissenschaftliche Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wissenschaftliche Grundbegriffe — Conversation 1', 'Practice a realistic conversation about wissenschaftliche grundbegriffe in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wissenschaftliche Grundbegriffe — Conversation 2', 'Practice a realistic conversation about wissenschaftliche grundbegriffe in the context of Akademische Sprache.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wissenschaftliche Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Grundbegriffe". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wissenschaftliche Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wissenschaftliche Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wissenschaftliche Grundbegriffe — Reading Practice', 'This is a C1-level reading passage about wissenschaftliche grundbegriffe in the context of Akademische Sprache.

Wissenschaftliche Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('14ee9195-a9bf-48d9-aec5-fd3ffe53e121', 'Wissenschaftliche Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Grundbegriffe" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Homework: Politische Systeme', 'Complete these tasks to reinforce "Politische Systeme" (Politische Diskurse).', 'grammar', '[{"description":"Review all vocabulary from \"Politische Systeme\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'In this lesson on "Politische Systeme" (Politische Diskurse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Systeme\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Systeme\""}]', ARRAY['"Politische Systeme" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Politische Systeme — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Systeme" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Politische Systeme — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Politische Systeme — Writing Task 1', 'Write a short text (50-100 words) about politische systeme. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Politische Systeme — Conversation 1', 'Practice a realistic conversation about politische systeme in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Systeme" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Politische Systeme — Conversation 2', 'Practice a realistic conversation about politische systeme in the context of Politische Diskurse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Systeme" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Politische Systeme — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Systeme". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Systeme', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Politische Systeme — Deep Understanding', 'Explain the most important concepts from "Politische Systeme" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Politische Systeme', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Politische Systeme — Reading Practice', 'This is a C1-level reading passage about politische systeme in the context of Politische Diskurse.

Politische Systeme is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('3b63c0aa-da70-4785-8795-05ba43d96ed4', 'Politische Systeme — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Systeme" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Homework: Literaturwissenschaftliche Grundbegriffe', 'Complete these tasks to reinforce "Literaturwissenschaftliche Grundbegriffe" (Literatur und Kunst).', 'mixed', '[{"description":"Review all vocabulary from \"Literaturwissenschaftliche Grundbegriffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'In this lesson on "Literaturwissenschaftliche Grundbegriffe" (Literatur und Kunst), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Literaturwissenschaftliche Grundbegriffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Literaturwissenschaftliche Grundbegriffe\""}]', ARRAY['"Literaturwissenschaftliche Grundbegriffe" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Literaturwissenschaftliche Grundbegriffe — Speaking 1', 'Practice the key vocabulary and phrases from "Literaturwissenschaftliche Grundbegriffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Literaturwissenschaftliche Grundbegriffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Literaturwissenschaftliche Grundbegriffe — Writing Task 1', 'Write a short text (50-100 words) about literaturwissenschaftliche grundbegriffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Literaturwissenschaftliche Grundbegriffe — Conversation 1', 'Practice a realistic conversation about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literaturwissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Literaturwissenschaftliche Grundbegriffe — Conversation 2', 'Practice a realistic conversation about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literaturwissenschaftliche Grundbegriffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Literaturwissenschaftliche Grundbegriffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literaturwissenschaftliche Grundbegriffe". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Literaturwissenschaftliche Grundbegriffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Literaturwissenschaftliche Grundbegriffe — Deep Understanding', 'Explain the most important concepts from "Literaturwissenschaftliche Grundbegriffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Literaturwissenschaftliche Grundbegriffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Literaturwissenschaftliche Grundbegriffe — Reading Practice', 'This is a C1-level reading passage about literaturwissenschaftliche grundbegriffe in the context of Literatur und Kunst.

Literaturwissenschaftliche Grundbegriffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('911fb184-f553-4918-893f-9cfa5cd62ffb', 'Literaturwissenschaftliche Grundbegriffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Literaturwissenschaftliche Grundbegriffe" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Homework: Politische Debatten', 'Complete these tasks to reinforce "Politische Debatten" (Politische Diskurse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Politische Debatten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'In this lesson on "Politische Debatten" (Politische Diskurse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Debatten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Debatten\""}]', ARRAY['"Politische Debatten" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Politische Debatten — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Debatten" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Politische Debatten — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Politische Debatten — Writing Task 1', 'Write a short text (50-100 words) about politische debatten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Politische Debatten — Conversation 1', 'Practice a realistic conversation about politische debatten in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Debatten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Politische Debatten — Conversation 2', 'Practice a realistic conversation about politische debatten in the context of Politische Diskurse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Debatten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Politische Debatten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Debatten". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Debatten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Politische Debatten — Deep Understanding', 'Explain the most important concepts from "Politische Debatten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Politische Debatten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Politische Debatten — Reading Practice', 'This is a C1-level reading passage about politische debatten in the context of Politische Diskurse.

Politische Debatten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('a8584e4a-a4d2-44c0-927e-09bf66654668', 'Politische Debatten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Debatten" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 1),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 3),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 4),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 6),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 7),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 9),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Homework: Unternehmenskommunikation', 'Complete these tasks to reinforce "Unternehmenskommunikation" (Wirtschaftsdeutsch).', 'writing', '[{"description":"Review all vocabulary from \"Unternehmenskommunikation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'In this lesson on "Unternehmenskommunikation" (Wirtschaftsdeutsch), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Unternehmenskommunikation\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Unternehmenskommunikation\""}]', ARRAY['"Unternehmenskommunikation" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Unternehmenskommunikation — Speaking 1', 'Practice the key vocabulary and phrases from "Unternehmenskommunikation" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Unternehmenskommunikation — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Unternehmenskommunikation — Writing Task 1', 'Write a short text (50-100 words) about unternehmenskommunikation. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Unternehmenskommunikation — Conversation 1', 'Practice a realistic conversation about unternehmenskommunikation in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Unternehmenskommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Unternehmenskommunikation — Conversation 2', 'Practice a realistic conversation about unternehmenskommunikation in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Unternehmenskommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Unternehmenskommunikation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Unternehmenskommunikation". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Unternehmenskommunikation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Unternehmenskommunikation — Deep Understanding', 'Explain the most important concepts from "Unternehmenskommunikation" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Unternehmenskommunikation', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Unternehmenskommunikation — Reading Practice', 'This is a C1-level reading passage about unternehmenskommunikation in the context of Wirtschaftsdeutsch.

Unternehmenskommunikation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4f9bc8d2-c4a1-4c53-ad05-56a47b871dce', 'Unternehmenskommunikation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Unternehmenskommunikation" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Homework: Akademisches Schreiben', 'Complete these tasks to reinforce "Akademisches Schreiben" (Akademische Sprache).', 'speaking', '[{"description":"Review all vocabulary from \"Akademisches Schreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'In this lesson on "Akademisches Schreiben" (Akademische Sprache), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Akademisches Schreiben\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Akademisches Schreiben\""}]', ARRAY['"Akademisches Schreiben" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Akademisches Schreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Akademisches Schreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Akademisches Schreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Akademisches Schreiben — Writing Task 1', 'Write a short text (50-100 words) about akademisches schreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Akademisches Schreiben — Conversation 1', 'Practice a realistic conversation about akademisches schreiben in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akademisches Schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Akademisches Schreiben — Conversation 2', 'Practice a realistic conversation about akademisches schreiben in the context of Akademische Sprache.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akademisches Schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Akademisches Schreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Akademisches Schreiben". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Akademisches Schreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Akademisches Schreiben — Deep Understanding', 'Explain the most important concepts from "Akademisches Schreiben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Akademisches Schreiben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Akademisches Schreiben — Reading Practice', 'This is a C1-level reading passage about akademisches schreiben in the context of Akademische Sprache.

Akademisches Schreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('31d365b5-b832-42ae-bcb8-45baedcbb42c', 'Akademisches Schreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Akademisches Schreiben" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Homework: Nachrichten und Berichterstattung', 'Complete these tasks to reinforce "Nachrichten und Berichterstattung" (Medienanalyse).', 'reading', '[{"description":"Review all vocabulary from \"Nachrichten und Berichterstattung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'In this lesson on "Nachrichten und Berichterstattung" (Medienanalyse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nachrichten und Berichterstattung\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nachrichten und Berichterstattung\""}]', ARRAY['"Nachrichten und Berichterstattung" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Nachrichten und Berichterstattung — Speaking 1', 'Practice the key vocabulary and phrases from "Nachrichten und Berichterstattung" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Nachrichten und Berichterstattung — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Nachrichten und Berichterstattung — Writing Task 1', 'Write a short text (50-100 words) about nachrichten und berichterstattung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Nachrichten und Berichterstattung — Conversation 1', 'Practice a realistic conversation about nachrichten und berichterstattung in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nachrichten und Berichterstattung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Nachrichten und Berichterstattung — Conversation 2', 'Practice a realistic conversation about nachrichten und berichterstattung in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nachrichten und Berichterstattung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Nachrichten und Berichterstattung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nachrichten und Berichterstattung". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Nachrichten und Berichterstattung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Nachrichten und Berichterstattung — Deep Understanding', 'Explain the most important concepts from "Nachrichten und Berichterstattung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nachrichten und Berichterstattung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Nachrichten und Berichterstattung — Reading Practice', 'This is a C1-level reading passage about nachrichten und berichterstattung in the context of Medienanalyse.

Nachrichten und Berichterstattung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('92fd0b31-17e5-4d62-bd93-09a2fecebd48', 'Nachrichten und Berichterstattung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nachrichten und Berichterstattung" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Homework: Kunst und Ästhetik', 'Complete these tasks to reinforce "Kunst und Ästhetik" (Literatur und Kunst).', 'grammar', '[{"description":"Review all vocabulary from \"Kunst und Ästhetik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'In this lesson on "Kunst und Ästhetik" (Literatur und Kunst), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kunst und Ästhetik\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kunst und Ästhetik\""}]', ARRAY['"Kunst und Ästhetik" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Kunst und Ästhetik — Speaking 1', 'Practice the key vocabulary and phrases from "Kunst und Ästhetik" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Kunst und Ästhetik — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Kunst und Ästhetik — Writing Task 1', 'Write a short text (50-100 words) about kunst und ästhetik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Kunst und Ästhetik — Conversation 1', 'Practice a realistic conversation about kunst und ästhetik in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kunst und Ästhetik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Kunst und Ästhetik — Conversation 2', 'Practice a realistic conversation about kunst und ästhetik in the context of Literatur und Kunst.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kunst und Ästhetik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Kunst und Ästhetik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kunst und Ästhetik". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Kunst und Ästhetik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Kunst und Ästhetik — Deep Understanding', 'Explain the most important concepts from "Kunst und Ästhetik" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kunst und Ästhetik', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Kunst und Ästhetik — Reading Practice', 'This is a C1-level reading passage about kunst und ästhetik in the context of Literatur und Kunst.

Kunst und Ästhetik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('925b725e-8471-4760-a378-bc513e7105ea', 'Kunst und Ästhetik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kunst und Ästhetik" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 1),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 3),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 4),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 6),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 9),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Homework: Wissenschaftliche Methoden', 'Complete these tasks to reinforce "Wissenschaftliche Methoden" (Wissenschaft und Forschung).', 'mixed', '[{"description":"Review all vocabulary from \"Wissenschaftliche Methoden\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'In this lesson on "Wissenschaftliche Methoden" (Wissenschaft und Forschung), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Methoden\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Methoden\""}]', ARRAY['"Wissenschaftliche Methoden" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wissenschaftliche Methoden — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Methoden" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wissenschaftliche Methoden — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wissenschaftliche Methoden — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche methoden. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wissenschaftliche Methoden — Conversation 1', 'Practice a realistic conversation about wissenschaftliche methoden in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Methoden" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wissenschaftliche Methoden — Conversation 2', 'Practice a realistic conversation about wissenschaftliche methoden in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Methoden" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wissenschaftliche Methoden — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Methoden". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Wissenschaftliche Methoden', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wissenschaftliche Methoden — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Methoden" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Methoden', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wissenschaftliche Methoden — Reading Practice', 'This is a C1-level reading passage about wissenschaftliche methoden in the context of Wissenschaft und Forschung.

Wissenschaftliche Methoden is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('78fa2b20-5071-4f14-b42c-83b2f7baae3a', 'Wissenschaftliche Methoden — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Methoden" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Homework: Politische Debatten', 'Complete these tasks to reinforce "Politische Debatten" (Politische Diskurse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Politische Debatten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'In this lesson on "Politische Debatten" (Politische Diskurse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Debatten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Debatten\""}]', ARRAY['"Politische Debatten" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Politische Debatten — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Debatten" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Politische Debatten — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Politische Debatten — Writing Task 1', 'Write a short text (50-100 words) about politische debatten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Politische Debatten — Conversation 1', 'Practice a realistic conversation about politische debatten in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Debatten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Politische Debatten — Conversation 2', 'Practice a realistic conversation about politische debatten in the context of Politische Diskurse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Debatten" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Politische Debatten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Debatten". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Debatten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Politische Debatten — Deep Understanding', 'Explain the most important concepts from "Politische Debatten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Politische Debatten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Politische Debatten — Reading Practice', 'This is a C1-level reading passage about politische debatten in the context of Politische Diskurse.

Politische Debatten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('2d7d370f-f7a6-42f6-97f7-8e5c605efc13', 'Politische Debatten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Debatten" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 1),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 3),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 4),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 6),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 7),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 9),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Homework: Unternehmenskommunikation', 'Complete these tasks to reinforce "Unternehmenskommunikation" (Wirtschaftsdeutsch).', 'writing', '[{"description":"Review all vocabulary from \"Unternehmenskommunikation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'In this lesson on "Unternehmenskommunikation" (Wirtschaftsdeutsch), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Unternehmenskommunikation\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Unternehmenskommunikation\""}]', ARRAY['"Unternehmenskommunikation" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Unternehmenskommunikation — Speaking 1', 'Practice the key vocabulary and phrases from "Unternehmenskommunikation" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Unternehmenskommunikation — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Unternehmenskommunikation — Writing Task 1', 'Write a short text (50-100 words) about unternehmenskommunikation. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Unternehmenskommunikation — Conversation 1', 'Practice a realistic conversation about unternehmenskommunikation in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Unternehmenskommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Unternehmenskommunikation — Conversation 2', 'Practice a realistic conversation about unternehmenskommunikation in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Unternehmenskommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Unternehmenskommunikation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Unternehmenskommunikation". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Unternehmenskommunikation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Unternehmenskommunikation — Deep Understanding', 'Explain the most important concepts from "Unternehmenskommunikation" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Unternehmenskommunikation', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Unternehmenskommunikation — Reading Practice', 'This is a C1-level reading passage about unternehmenskommunikation in the context of Wirtschaftsdeutsch.

Unternehmenskommunikation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('3707c468-15a6-470a-9227-fcd1b0178dc1', 'Unternehmenskommunikation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Unternehmenskommunikation" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 1),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 3),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 4),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 6),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 9),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Homework: Wissenschaftliche Methoden', 'Complete these tasks to reinforce "Wissenschaftliche Methoden" (Wissenschaft und Forschung).', 'speaking', '[{"description":"Review all vocabulary from \"Wissenschaftliche Methoden\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'In this lesson on "Wissenschaftliche Methoden" (Wissenschaft und Forschung), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftliche Methoden\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftliche Methoden\""}]', ARRAY['"Wissenschaftliche Methoden" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wissenschaftliche Methoden — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftliche Methoden" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wissenschaftliche Methoden — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wissenschaftliche Methoden — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftliche methoden. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wissenschaftliche Methoden — Conversation 1', 'Practice a realistic conversation about wissenschaftliche methoden in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Methoden" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wissenschaftliche Methoden — Conversation 2', 'Practice a realistic conversation about wissenschaftliche methoden in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftliche Methoden" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wissenschaftliche Methoden — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftliche Methoden". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Wissenschaftliche Methoden', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wissenschaftliche Methoden — Deep Understanding', 'Explain the most important concepts from "Wissenschaftliche Methoden" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wissenschaftliche Methoden', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wissenschaftliche Methoden — Reading Practice', 'This is a C1-level reading passage about wissenschaftliche methoden in the context of Wissenschaft und Forschung.

Wissenschaftliche Methoden is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4facca68-80d1-4c0d-a6c1-dbd8e7fba3e5', 'Wissenschaftliche Methoden — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftliche Methoden" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Homework: Akademisches Schreiben', 'Complete these tasks to reinforce "Akademisches Schreiben" (Akademische Sprache).', 'reading', '[{"description":"Review all vocabulary from \"Akademisches Schreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'In this lesson on "Akademisches Schreiben" (Akademische Sprache), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Akademisches Schreiben\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Akademisches Schreiben\""}]', ARRAY['"Akademisches Schreiben" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Akademisches Schreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Akademisches Schreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Akademisches Schreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Akademisches Schreiben — Writing Task 1', 'Write a short text (50-100 words) about akademisches schreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Akademisches Schreiben — Conversation 1', 'Practice a realistic conversation about akademisches schreiben in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akademisches Schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Akademisches Schreiben — Conversation 2', 'Practice a realistic conversation about akademisches schreiben in the context of Akademische Sprache.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akademisches Schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Akademisches Schreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Akademisches Schreiben". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Akademisches Schreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Akademisches Schreiben — Deep Understanding', 'Explain the most important concepts from "Akademisches Schreiben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Akademisches Schreiben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Akademisches Schreiben — Reading Practice', 'This is a C1-level reading passage about akademisches schreiben in the context of Akademische Sprache.

Akademisches Schreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('cfc8219f-7300-4704-9e32-ec8995669716', 'Akademisches Schreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Akademisches Schreiben" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Homework: Nachrichten und Berichterstattung', 'Complete these tasks to reinforce "Nachrichten und Berichterstattung" (Medienanalyse).', 'grammar', '[{"description":"Review all vocabulary from \"Nachrichten und Berichterstattung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'In this lesson on "Nachrichten und Berichterstattung" (Medienanalyse), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nachrichten und Berichterstattung\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nachrichten und Berichterstattung\""}]', ARRAY['"Nachrichten und Berichterstattung" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Nachrichten und Berichterstattung — Speaking 1', 'Practice the key vocabulary and phrases from "Nachrichten und Berichterstattung" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Nachrichten und Berichterstattung — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Nachrichten und Berichterstattung — Writing Task 1', 'Write a short text (50-100 words) about nachrichten und berichterstattung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Nachrichten und Berichterstattung — Conversation 1', 'Practice a realistic conversation about nachrichten und berichterstattung in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nachrichten und Berichterstattung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Nachrichten und Berichterstattung — Conversation 2', 'Practice a realistic conversation about nachrichten und berichterstattung in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nachrichten und Berichterstattung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Nachrichten und Berichterstattung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nachrichten und Berichterstattung". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Nachrichten und Berichterstattung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Nachrichten und Berichterstattung — Deep Understanding', 'Explain the most important concepts from "Nachrichten und Berichterstattung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nachrichten und Berichterstattung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Nachrichten und Berichterstattung — Reading Practice', 'This is a C1-level reading passage about nachrichten und berichterstattung in the context of Medienanalyse.

Nachrichten und Berichterstattung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('65c25f8d-6e63-42fd-8ea6-4c3258428fb0', 'Nachrichten und Berichterstattung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nachrichten und Berichterstattung" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Homework: Kunst und Ästhetik', 'Complete these tasks to reinforce "Kunst und Ästhetik" (Literatur und Kunst).', 'mixed', '[{"description":"Review all vocabulary from \"Kunst und Ästhetik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'In this lesson on "Kunst und Ästhetik" (Literatur und Kunst), you learned key vocabulary concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kunst und Ästhetik\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kunst und Ästhetik\""}]', ARRAY['"Kunst und Ästhetik" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Kunst und Ästhetik — Speaking 1', 'Practice the key vocabulary and phrases from "Kunst und Ästhetik" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Kunst und Ästhetik — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Kunst und Ästhetik — Writing Task 1', 'Write a short text (50-100 words) about kunst und ästhetik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Kunst und Ästhetik — Conversation 1', 'Practice a realistic conversation about kunst und ästhetik in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kunst und Ästhetik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Kunst und Ästhetik — Conversation 2', 'Practice a realistic conversation about kunst und ästhetik in the context of Literatur und Kunst.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kunst und Ästhetik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Kunst und Ästhetik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kunst und Ästhetik". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Kunst und Ästhetik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Kunst und Ästhetik — Deep Understanding', 'Explain the most important concepts from "Kunst und Ästhetik" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kunst und Ästhetik', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Kunst und Ästhetik — Reading Practice', 'This is a C1-level reading passage about kunst und ästhetik in the context of Literatur und Kunst.

Kunst und Ästhetik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('bea9dae1-2def-4175-a46d-6a43a34776ad', 'Kunst und Ästhetik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kunst und Ästhetik" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Medienanalyse', 'neutral', false, NULL, 2),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Medienanalyse', 'informal', false, NULL, 5),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Medienanalyse', 'neutral', false, NULL, 6),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Medienanalyse', 'neutral', false, NULL, 7),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Homework: Argumentation und Intensivierung', 'Complete these tasks to reinforce "Argumentation und Intensivierung" (Medienanalyse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Argumentation und Intensivierung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'In this lesson on "Argumentation und Intensivierung" (Medienanalyse), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Argumentation und Intensivierung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Argumentation und Intensivierung\""}]', ARRAY['"Argumentation und Intensivierung" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Argumentation und Intensivierung — Speaking 1', 'Practice the key vocabulary and phrases from "Argumentation und Intensivierung" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Argumentation und Intensivierung — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Argumentation und Intensivierung — Writing Task 1', 'Write a short text (50-100 words) about argumentation und intensivierung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Argumentation und Intensivierung — Conversation 1', 'Practice a realistic conversation about argumentation und intensivierung in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Argumentation und Intensivierung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Argumentation und Intensivierung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Argumentation und Intensivierung". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Argumentation und Intensivierung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Argumentation und Intensivierung — Deep Understanding', 'Explain the most important concepts from "Argumentation und Intensivierung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Argumentation und Intensivierung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Argumentation und Intensivierung — Reading Practice', 'This is a C1-level reading passage about argumentation und intensivierung in the context of Medienanalyse.

Argumentation und Intensivierung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('76db37a0-38ad-42e3-9047-c9b729b0ce50', 'Argumentation und Intensivierung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Argumentation und Intensivierung" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 2),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 5),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 6),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 7),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Homework: Partizipialattribute und Passivumschreibungen', 'Complete these tasks to reinforce "Partizipialattribute und Passivumschreibungen" (Wissenschaft und Forschung).', 'writing', '[{"description":"Review all vocabulary from \"Partizipialattribute und Passivumschreibungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'In this lesson on "Partizipialattribute und Passivumschreibungen" (Wissenschaft und Forschung), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Partizipialattribute und Passivumschreibungen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Partizipialattribute und Passivumschreibungen\""}]', ARRAY['"Partizipialattribute und Passivumschreibungen" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Partizipialattribute und Passivumschreibungen — Speaking 1', 'Practice the key vocabulary and phrases from "Partizipialattribute und Passivumschreibungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Partizipialattribute und Passivumschreibungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Partizipialattribute und Passivumschreibungen — Writing Task 1', 'Write a short text (50-100 words) about partizipialattribute und passivumschreibungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Partizipialattribute und Passivumschreibungen — Conversation 1', 'Practice a realistic conversation about partizipialattribute und passivumschreibungen in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Partizipialattribute und Passivumschreibungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Partizipialattribute und Passivumschreibungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Partizipialattribute und Passivumschreibungen". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Partizipialattribute und Passivumschreibungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Partizipialattribute und Passivumschreibungen — Deep Understanding', 'Explain the most important concepts from "Partizipialattribute und Passivumschreibungen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Partizipialattribute und Passivumschreibungen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Partizipialattribute und Passivumschreibungen — Reading Practice', 'This is a C1-level reading passage about partizipialattribute und passivumschreibungen in the context of Wissenschaft und Forschung.

Partizipialattribute und Passivumschreibungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('26692df7-0bec-4679-81bd-ce67ed70e288', 'Partizipialattribute und Passivumschreibungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Partizipialattribute und Passivumschreibungen" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Medienanalyse', 'neutral', false, NULL, 2),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Medienanalyse', 'informal', false, NULL, 5),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Medienanalyse', 'neutral', false, NULL, 6),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Medienanalyse', 'neutral', false, NULL, 7),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Homework: Argumentation und Intensivierung', 'Complete these tasks to reinforce "Argumentation und Intensivierung" (Medienanalyse).', 'speaking', '[{"description":"Review all vocabulary from \"Argumentation und Intensivierung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'In this lesson on "Argumentation und Intensivierung" (Medienanalyse), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Argumentation und Intensivierung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Argumentation und Intensivierung\""}]', ARRAY['"Argumentation und Intensivierung" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Argumentation und Intensivierung — Speaking 1', 'Practice the key vocabulary and phrases from "Argumentation und Intensivierung" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Argumentation und Intensivierung — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Argumentation und Intensivierung — Writing Task 1', 'Write a short text (50-100 words) about argumentation und intensivierung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Argumentation und Intensivierung — Conversation 1', 'Practice a realistic conversation about argumentation und intensivierung in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Argumentation und Intensivierung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Argumentation und Intensivierung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Argumentation und Intensivierung". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Argumentation und Intensivierung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Argumentation und Intensivierung — Deep Understanding', 'Explain the most important concepts from "Argumentation und Intensivierung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Argumentation und Intensivierung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Argumentation und Intensivierung — Reading Practice', 'This is a C1-level reading passage about argumentation und intensivierung in the context of Medienanalyse.

Argumentation und Intensivierung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('77a12f35-0404-4993-a098-f3198eb1bd63', 'Argumentation und Intensivierung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Argumentation und Intensivierung" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Akademische Sprache', 'neutral', false, NULL, 2),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Akademische Sprache', 'informal', false, NULL, 5),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Akademische Sprache', 'neutral', false, NULL, 6),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Akademische Sprache', 'neutral', false, NULL, 7),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Homework: Nominalstil und Schachtelsätze', 'Complete these tasks to reinforce "Nominalstil und Schachtelsätze" (Akademische Sprache).', 'reading', '[{"description":"Review all vocabulary from \"Nominalstil und Schachtelsätze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'In this lesson on "Nominalstil und Schachtelsätze" (Akademische Sprache), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nominalstil und Schachtelsätze\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nominalstil und Schachtelsätze\""}]', ARRAY['"Nominalstil und Schachtelsätze" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Nominalstil und Schachtelsätze — Speaking 1', 'Practice the key vocabulary and phrases from "Nominalstil und Schachtelsätze" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Nominalstil und Schachtelsätze — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Nominalstil und Schachtelsätze — Writing Task 1', 'Write a short text (50-100 words) about nominalstil und schachtelsätze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Nominalstil und Schachtelsätze — Conversation 1', 'Practice a realistic conversation about nominalstil und schachtelsätze in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nominalstil und Schachtelsätze" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Nominalstil und Schachtelsätze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nominalstil und Schachtelsätze". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Nominalstil und Schachtelsätze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Nominalstil und Schachtelsätze — Deep Understanding', 'Explain the most important concepts from "Nominalstil und Schachtelsätze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nominalstil und Schachtelsätze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Nominalstil und Schachtelsätze — Reading Practice', 'This is a C1-level reading passage about nominalstil und schachtelsätze in the context of Akademische Sprache.

Nominalstil und Schachtelsätze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ad015a26-eaa6-442e-9a5f-26e211de56b9', 'Nominalstil und Schachtelsätze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nominalstil und Schachtelsätze" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 2),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Literatur und Kunst', 'informal', false, NULL, 5),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 6),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 7),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Homework: Stilmittel und Sprachregister', 'Complete these tasks to reinforce "Stilmittel und Sprachregister" (Literatur und Kunst).', 'grammar', '[{"description":"Review all vocabulary from \"Stilmittel und Sprachregister\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'In this lesson on "Stilmittel und Sprachregister" (Literatur und Kunst), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Stilmittel und Sprachregister\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Stilmittel und Sprachregister\""}]', ARRAY['"Stilmittel und Sprachregister" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Stilmittel und Sprachregister — Speaking 1', 'Practice the key vocabulary and phrases from "Stilmittel und Sprachregister" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Stilmittel und Sprachregister — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Stilmittel und Sprachregister — Writing Task 1', 'Write a short text (50-100 words) about stilmittel und sprachregister. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Stilmittel und Sprachregister — Conversation 1', 'Practice a realistic conversation about stilmittel und sprachregister in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Stilmittel und Sprachregister" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Stilmittel und Sprachregister — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Stilmittel und Sprachregister". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Stilmittel und Sprachregister', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Stilmittel und Sprachregister — Deep Understanding', 'Explain the most important concepts from "Stilmittel und Sprachregister" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Stilmittel und Sprachregister', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Stilmittel und Sprachregister — Reading Practice', 'This is a C1-level reading passage about stilmittel und sprachregister in the context of Literatur und Kunst.

Stilmittel und Sprachregister is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9ddf864d-0934-4265-9456-6762284d7166', 'Stilmittel und Sprachregister — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Stilmittel und Sprachregister" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Politische Diskurse', 'neutral', false, NULL, 2),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Politische Diskurse', 'informal', false, NULL, 5),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Politische Diskurse', 'neutral', false, NULL, 6),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Politische Diskurse', 'neutral', false, NULL, 7),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Homework: Konjunktiv und Modalverben in der Politik', 'Complete these tasks to reinforce "Konjunktiv und Modalverben in der Politik" (Politische Diskurse).', 'mixed', '[{"description":"Review all vocabulary from \"Konjunktiv und Modalverben in der Politik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'In this lesson on "Konjunktiv und Modalverben in der Politik" (Politische Diskurse), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Konjunktiv und Modalverben in der Politik\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Konjunktiv und Modalverben in der Politik\""}]', ARRAY['"Konjunktiv und Modalverben in der Politik" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Konjunktiv und Modalverben in der Politik — Speaking 1', 'Practice the key vocabulary and phrases from "Konjunktiv und Modalverben in der Politik" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Konjunktiv und Modalverben in der Politik — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Konjunktiv und Modalverben in der Politik — Writing Task 1', 'Write a short text (50-100 words) about konjunktiv und modalverben in der politik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Konjunktiv und Modalverben in der Politik — Conversation 1', 'Practice a realistic conversation about konjunktiv und modalverben in der politik in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Konjunktiv und Modalverben in der Politik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Konjunktiv und Modalverben in der Politik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv und Modalverben in der Politik". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Konjunktiv und Modalverben in der Politik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Konjunktiv und Modalverben in der Politik — Deep Understanding', 'Explain the most important concepts from "Konjunktiv und Modalverben in der Politik" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Konjunktiv und Modalverben in der Politik', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Konjunktiv und Modalverben in der Politik — Reading Practice', 'This is a C1-level reading passage about konjunktiv und modalverben in der politik in the context of Politische Diskurse.

Konjunktiv und Modalverben in der Politik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('7439a43d-faad-43a3-8a7e-ea8d53b90c7e', 'Konjunktiv und Modalverben in der Politik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Konjunktiv und Modalverben in der Politik" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Politische Diskurse', 'neutral', false, NULL, 2),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Politische Diskurse', 'informal', false, NULL, 5),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Politische Diskurse', 'neutral', false, NULL, 6),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Politische Diskurse', 'neutral', false, NULL, 7),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Homework: Konjunktiv und Modalverben in der Politik', 'Complete these tasks to reinforce "Konjunktiv und Modalverben in der Politik" (Politische Diskurse).', 'vocabulary', '[{"description":"Review all vocabulary from \"Konjunktiv und Modalverben in der Politik\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'In this lesson on "Konjunktiv und Modalverben in der Politik" (Politische Diskurse), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Konjunktiv und Modalverben in der Politik\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Konjunktiv und Modalverben in der Politik\""}]', ARRAY['"Konjunktiv und Modalverben in der Politik" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Konjunktiv und Modalverben in der Politik — Speaking 1', 'Practice the key vocabulary and phrases from "Konjunktiv und Modalverben in der Politik" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Konjunktiv und Modalverben in der Politik — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Konjunktiv und Modalverben in der Politik — Writing Task 1', 'Write a short text (50-100 words) about konjunktiv und modalverben in der politik. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Konjunktiv und Modalverben in der Politik — Conversation 1', 'Practice a realistic conversation about konjunktiv und modalverben in der politik in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Konjunktiv und Modalverben in der Politik" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Konjunktiv und Modalverben in der Politik — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv und Modalverben in der Politik". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Konjunktiv und Modalverben in der Politik', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Konjunktiv und Modalverben in der Politik — Deep Understanding', 'Explain the most important concepts from "Konjunktiv und Modalverben in der Politik" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Konjunktiv und Modalverben in der Politik', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Konjunktiv und Modalverben in der Politik — Reading Practice', 'This is a C1-level reading passage about konjunktiv und modalverben in der politik in the context of Politische Diskurse.

Konjunktiv und Modalverben in der Politik is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('1c00ac42-a114-499a-913b-12e022eff2f5', 'Konjunktiv und Modalverben in der Politik — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Konjunktiv und Modalverben in der Politik" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Akademische Sprache', 'neutral', false, NULL, 2),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Akademische Sprache', 'informal', false, NULL, 5),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Akademische Sprache', 'neutral', false, NULL, 6),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Akademische Sprache', 'neutral', false, NULL, 7),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Homework: Nominalstil und Schachtelsätze', 'Complete these tasks to reinforce "Nominalstil und Schachtelsätze" (Akademische Sprache).', 'writing', '[{"description":"Review all vocabulary from \"Nominalstil und Schachtelsätze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'In this lesson on "Nominalstil und Schachtelsätze" (Akademische Sprache), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nominalstil und Schachtelsätze\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nominalstil und Schachtelsätze\""}]', ARRAY['"Nominalstil und Schachtelsätze" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Nominalstil und Schachtelsätze — Speaking 1', 'Practice the key vocabulary and phrases from "Nominalstil und Schachtelsätze" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Nominalstil und Schachtelsätze — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Nominalstil und Schachtelsätze — Writing Task 1', 'Write a short text (50-100 words) about nominalstil und schachtelsätze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Nominalstil und Schachtelsätze — Conversation 1', 'Practice a realistic conversation about nominalstil und schachtelsätze in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nominalstil und Schachtelsätze" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Nominalstil und Schachtelsätze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nominalstil und Schachtelsätze". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Nominalstil und Schachtelsätze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Nominalstil und Schachtelsätze — Deep Understanding', 'Explain the most important concepts from "Nominalstil und Schachtelsätze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nominalstil und Schachtelsätze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Nominalstil und Schachtelsätze — Reading Practice', 'This is a C1-level reading passage about nominalstil und schachtelsätze in the context of Akademische Sprache.

Nominalstil und Schachtelsätze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('cb1a1ccf-5bac-44ff-962a-55e1af7dd45f', 'Nominalstil und Schachtelsätze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nominalstil und Schachtelsätze" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 2),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 5),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 6),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 7),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Homework: Vergleiche und Negation im Wirtschaftsdeutsch', 'Complete these tasks to reinforce "Vergleiche und Negation im Wirtschaftsdeutsch" (Wirtschaftsdeutsch).', 'speaking', '[{"description":"Review all vocabulary from \"Vergleiche und Negation im Wirtschaftsdeutsch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'In this lesson on "Vergleiche und Negation im Wirtschaftsdeutsch" (Wirtschaftsdeutsch), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Vergleiche und Negation im Wirtschaftsdeutsch\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Vergleiche und Negation im Wirtschaftsdeutsch\""}]', ARRAY['"Vergleiche und Negation im Wirtschaftsdeutsch" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Vergleiche und Negation im Wirtschaftsdeutsch — Speaking 1', 'Practice the key vocabulary and phrases from "Vergleiche und Negation im Wirtschaftsdeutsch" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Vergleiche und Negation im Wirtschaftsdeutsch — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Vergleiche und Negation im Wirtschaftsdeutsch — Writing Task 1', 'Write a short text (50-100 words) about vergleiche und negation im wirtschaftsdeutsch. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Vergleiche und Negation im Wirtschaftsdeutsch — Conversation 1', 'Practice a realistic conversation about vergleiche und negation im wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Vergleiche und Negation im Wirtschaftsdeutsch" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Vergleiche und Negation im Wirtschaftsdeutsch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Vergleiche und Negation im Wirtschaftsdeutsch". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Vergleiche und Negation im Wirtschaftsdeutsch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Vergleiche und Negation im Wirtschaftsdeutsch — Deep Understanding', 'Explain the most important concepts from "Vergleiche und Negation im Wirtschaftsdeutsch" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Vergleiche und Negation im Wirtschaftsdeutsch', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Vergleiche und Negation im Wirtschaftsdeutsch — Reading Practice', 'This is a C1-level reading passage about vergleiche und negation im wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.

Vergleiche und Negation im Wirtschaftsdeutsch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5c838981-344c-474d-9f6b-6d19bfe72439', 'Vergleiche und Negation im Wirtschaftsdeutsch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Vergleiche und Negation im Wirtschaftsdeutsch" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 2),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Literatur und Kunst', 'informal', false, NULL, 5),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 6),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 7),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Homework: Stilmittel und Sprachregister', 'Complete these tasks to reinforce "Stilmittel und Sprachregister" (Literatur und Kunst).', 'reading', '[{"description":"Review all vocabulary from \"Stilmittel und Sprachregister\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'In this lesson on "Stilmittel und Sprachregister" (Literatur und Kunst), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Stilmittel und Sprachregister\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Stilmittel und Sprachregister\""}]', ARRAY['"Stilmittel und Sprachregister" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Stilmittel und Sprachregister — Speaking 1', 'Practice the key vocabulary and phrases from "Stilmittel und Sprachregister" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Stilmittel und Sprachregister — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Stilmittel und Sprachregister — Writing Task 1', 'Write a short text (50-100 words) about stilmittel und sprachregister. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Stilmittel und Sprachregister — Conversation 1', 'Practice a realistic conversation about stilmittel und sprachregister in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Stilmittel und Sprachregister" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Stilmittel und Sprachregister — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Stilmittel und Sprachregister". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Stilmittel und Sprachregister', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Stilmittel und Sprachregister — Deep Understanding', 'Explain the most important concepts from "Stilmittel und Sprachregister" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Stilmittel und Sprachregister', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Stilmittel und Sprachregister — Reading Practice', 'This is a C1-level reading passage about stilmittel und sprachregister in the context of Literatur und Kunst.

Stilmittel und Sprachregister is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('94702671-5ea3-4a28-8398-b8ac955b2e42', 'Stilmittel und Sprachregister — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Stilmittel und Sprachregister" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 2),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 5),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 6),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 7),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Homework: Partizipialattribute und Passivumschreibungen', 'Complete these tasks to reinforce "Partizipialattribute und Passivumschreibungen" (Wissenschaft und Forschung).', 'grammar', '[{"description":"Review all vocabulary from \"Partizipialattribute und Passivumschreibungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'In this lesson on "Partizipialattribute und Passivumschreibungen" (Wissenschaft und Forschung), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Partizipialattribute und Passivumschreibungen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Partizipialattribute und Passivumschreibungen\""}]', ARRAY['"Partizipialattribute und Passivumschreibungen" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Partizipialattribute und Passivumschreibungen — Speaking 1', 'Practice the key vocabulary and phrases from "Partizipialattribute und Passivumschreibungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Partizipialattribute und Passivumschreibungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Partizipialattribute und Passivumschreibungen — Writing Task 1', 'Write a short text (50-100 words) about partizipialattribute und passivumschreibungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Partizipialattribute und Passivumschreibungen — Conversation 1', 'Practice a realistic conversation about partizipialattribute und passivumschreibungen in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Partizipialattribute und Passivumschreibungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Partizipialattribute und Passivumschreibungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Partizipialattribute und Passivumschreibungen". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Partizipialattribute und Passivumschreibungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Partizipialattribute und Passivumschreibungen — Deep Understanding', 'Explain the most important concepts from "Partizipialattribute und Passivumschreibungen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Partizipialattribute und Passivumschreibungen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Partizipialattribute und Passivumschreibungen — Reading Practice', 'This is a C1-level reading passage about partizipialattribute und passivumschreibungen in the context of Wissenschaft und Forschung.

Partizipialattribute und Passivumschreibungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d3603494-284f-4bfe-bc1e-a95ccfca8719', 'Partizipialattribute und Passivumschreibungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Partizipialattribute und Passivumschreibungen" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 2),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 5),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 6),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 7),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Homework: Vergleiche und Negation im Wirtschaftsdeutsch', 'Complete these tasks to reinforce "Vergleiche und Negation im Wirtschaftsdeutsch" (Wirtschaftsdeutsch).', 'mixed', '[{"description":"Review all vocabulary from \"Vergleiche und Negation im Wirtschaftsdeutsch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'In this lesson on "Vergleiche und Negation im Wirtschaftsdeutsch" (Wirtschaftsdeutsch), you learned key grammar concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Vergleiche und Negation im Wirtschaftsdeutsch\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Vergleiche und Negation im Wirtschaftsdeutsch\""}]', ARRAY['"Vergleiche und Negation im Wirtschaftsdeutsch" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Vergleiche und Negation im Wirtschaftsdeutsch — Speaking 1', 'Practice the key vocabulary and phrases from "Vergleiche und Negation im Wirtschaftsdeutsch" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Vergleiche und Negation im Wirtschaftsdeutsch — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Vergleiche und Negation im Wirtschaftsdeutsch — Writing Task 1', 'Write a short text (50-100 words) about vergleiche und negation im wirtschaftsdeutsch. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Vergleiche und Negation im Wirtschaftsdeutsch — Conversation 1', 'Practice a realistic conversation about vergleiche und negation im wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Vergleiche und Negation im Wirtschaftsdeutsch" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Vergleiche und Negation im Wirtschaftsdeutsch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Vergleiche und Negation im Wirtschaftsdeutsch". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Vergleiche und Negation im Wirtschaftsdeutsch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Vergleiche und Negation im Wirtschaftsdeutsch — Deep Understanding', 'Explain the most important concepts from "Vergleiche und Negation im Wirtschaftsdeutsch" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Vergleiche und Negation im Wirtschaftsdeutsch', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Vergleiche und Negation im Wirtschaftsdeutsch — Reading Practice', 'This is a C1-level reading passage about vergleiche und negation im wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.

Vergleiche und Negation im Wirtschaftsdeutsch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e2c84dec-a9a3-496a-8647-bfb1dcac8a6a', 'Vergleiche und Negation im Wirtschaftsdeutsch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Vergleiche und Negation im Wirtschaftsdeutsch" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 2),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 5),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 6),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 7),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Homework: Wirtschaftsartikel analysieren', 'Complete these tasks to reinforce "Wirtschaftsartikel analysieren" (Wirtschaftsdeutsch).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wirtschaftsartikel analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'In this lesson on "Wirtschaftsartikel analysieren" (Wirtschaftsdeutsch), you learned key reading concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsartikel analysieren\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsartikel analysieren\""}]', ARRAY['"Wirtschaftsartikel analysieren" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Wirtschaftsartikel analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsartikel analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Wirtschaftsartikel analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Wirtschaftsartikel analysieren — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsartikel analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Wirtschaftsartikel analysieren — Conversation 1', 'Practice a realistic conversation about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsartikel analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Wirtschaftsartikel analysieren — Conversation 2', 'Practice a realistic conversation about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsartikel analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Wirtschaftsartikel analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsartikel analysieren". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wirtschaftsartikel analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Wirtschaftsartikel analysieren — Reading Practice', 'This is a C1-level reading passage about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.

Wirtschaftsartikel analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ca74684f-4cdc-4b81-a665-d3ae9f34fd07', 'Wirtschaftsartikel analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsartikel analysieren" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Homework: Wissenschaftlichen Text verfassen', 'Complete these tasks to reinforce "Wissenschaftlichen Text verfassen" (Akademische Sprache).', 'writing', '[{"description":"Review all vocabulary from \"Wissenschaftlichen Text verfassen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'In this lesson on "Wissenschaftlichen Text verfassen" (Akademische Sprache), you learned key writing concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftlichen Text verfassen\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftlichen Text verfassen\""}]', ARRAY['"Wissenschaftlichen Text verfassen" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Wissenschaftlichen Text verfassen — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftlichen Text verfassen" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Wissenschaftlichen Text verfassen — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Wissenschaftlichen Text verfassen — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftlichen text verfassen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Wissenschaftlichen Text verfassen — Writing Task 2', 'Write 5 questions about wissenschaftlichen text verfassen and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Wissenschaftlichen Text verfassen — Conversation 1', 'Practice a realistic conversation about wissenschaftlichen text verfassen in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftlichen Text verfassen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Wissenschaftlichen Text verfassen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftlichen Text verfassen". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wissenschaftlichen Text verfassen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Wissenschaftlichen Text verfassen — Reading Practice', 'This is a C1-level reading passage about wissenschaftlichen text verfassen in the context of Akademische Sprache.

Wissenschaftlichen Text verfassen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('7f229aaf-d893-42e4-89d2-c07dd2b7574c', 'Wissenschaftlichen Text verfassen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftlichen Text verfassen" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 1),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 2),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 5),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 6),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Homework: Forschungsartikel lesen und analysieren', 'Complete these tasks to reinforce "Forschungsartikel lesen und analysieren" (Wissenschaft und Forschung).', 'speaking', '[{"description":"Review all vocabulary from \"Forschungsartikel lesen und analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'In this lesson on "Forschungsartikel lesen und analysieren" (Wissenschaft und Forschung), you learned key reading concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Forschungsartikel lesen und analysieren\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Forschungsartikel lesen und analysieren\""}]', ARRAY['"Forschungsartikel lesen und analysieren" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Forschungsartikel lesen und analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Forschungsartikel lesen und analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Forschungsartikel lesen und analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Forschungsartikel lesen und analysieren — Writing Task 1', 'Write a short text (50-100 words) about forschungsartikel lesen und analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Forschungsartikel lesen und analysieren — Conversation 1', 'Practice a realistic conversation about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsartikel lesen und analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Forschungsartikel lesen und analysieren — Conversation 2', 'Practice a realistic conversation about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsartikel lesen und analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Forschungsartikel lesen und analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Forschungsartikel lesen und analysieren". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Forschungsartikel lesen und analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Forschungsartikel lesen und analysieren — Reading Practice', 'This is a C1-level reading passage about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.

Forschungsartikel lesen und analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('adc514b3-461d-47ea-909a-e9a8deadc5e3', 'Forschungsartikel lesen und analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Forschungsartikel lesen und analysieren" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Homework: Mediendiskussion führen', 'Complete these tasks to reinforce "Mediendiskussion führen" (Medienanalyse).', 'reading', '[{"description":"Review all vocabulary from \"Mediendiskussion führen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'In this lesson on "Mediendiskussion führen" (Medienanalyse), you learned key speaking concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mediendiskussion führen\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mediendiskussion führen\""}]', ARRAY['"Mediendiskussion führen" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Mediendiskussion führen — Speaking 1', 'Practice the key vocabulary and phrases from "Mediendiskussion führen" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Mediendiskussion führen — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Mediendiskussion führen — Writing Task 1', 'Write a short text (50-100 words) about mediendiskussion führen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Mediendiskussion führen — Conversation 1', 'Practice a realistic conversation about mediendiskussion führen in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mediendiskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Mediendiskussion führen — Conversation 2', 'Practice a realistic conversation about mediendiskussion führen in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mediendiskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Mediendiskussion führen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mediendiskussion führen". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Mediendiskussion führen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Mediendiskussion führen — Reading Practice', 'This is a C1-level reading passage about mediendiskussion führen in the context of Medienanalyse.

Mediendiskussion führen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('6576e455-8310-4979-aa5f-cecdbbe75f17', 'Mediendiskussion führen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mediendiskussion führen" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Homework: Politische Rede analysieren', 'Complete these tasks to reinforce "Politische Rede analysieren" (Politische Diskurse).', 'grammar', '[{"description":"Review all vocabulary from \"Politische Rede analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'In this lesson on "Politische Rede analysieren" (Politische Diskurse), you learned key listening concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Rede analysieren\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Rede analysieren\""}]', ARRAY['"Politische Rede analysieren" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Politische Rede analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Rede analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Politische Rede analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Politische Rede analysieren — Writing Task 1', 'Write a short text (50-100 words) about politische rede analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Politische Rede analysieren — Conversation 1', 'Practice a realistic conversation about politische rede analysieren in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Rede analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Politische Rede analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Rede analysieren". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Rede analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Politische Rede analysieren — Reading Practice', 'This is a C1-level reading passage about politische rede analysieren in the context of Politische Diskurse.

Politische Rede analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('3418699a-d61d-4dc1-a5d6-f44c17e4d728', 'Politische Rede analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Rede analysieren" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Homework: Literarische Analyse schreiben', 'Complete these tasks to reinforce "Literarische Analyse schreiben" (Literatur und Kunst).', 'mixed', '[{"description":"Review all vocabulary from \"Literarische Analyse schreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'In this lesson on "Literarische Analyse schreiben" (Literatur und Kunst), you learned key writing concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Literarische Analyse schreiben\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Literarische Analyse schreiben\""}]', ARRAY['"Literarische Analyse schreiben" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Literarische Analyse schreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Literarische Analyse schreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Literarische Analyse schreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Literarische Analyse schreiben — Writing Task 1', 'Write a short text (50-100 words) about literarische analyse schreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Literarische Analyse schreiben — Writing Task 2', 'Write 5 questions about literarische analyse schreiben and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Literarische Analyse schreiben — Conversation 1', 'Practice a realistic conversation about literarische analyse schreiben in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literarische Analyse schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Literarische Analyse schreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literarische Analyse schreiben". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Literarische Analyse schreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Literarische Analyse schreiben — Reading Practice', 'This is a C1-level reading passage about literarische analyse schreiben in the context of Literatur und Kunst.

Literarische Analyse schreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('14157a7f-a107-4d93-84b7-e75b7b0a626b', 'Literarische Analyse schreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Literarische Analyse schreiben" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Akademische Sprache', 'formal', false, NULL, 1),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Akademische Sprache', 'informal', false, NULL, 3),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Akademische Sprache', 'informal', false, NULL, 4),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Akademische Sprache', 'formal', false, NULL, 5),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Akademische Sprache', 'formal', false, NULL, 6),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Akademische Sprache', 'informal', false, NULL, 7),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Akademische Sprache', 'neutral', false, NULL, 8),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Akademische Sprache', 'neutral', false, NULL, 9),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Akademische Sprache', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Homework: Wissenschaftlichen Text verfassen', 'Complete these tasks to reinforce "Wissenschaftlichen Text verfassen" (Akademische Sprache).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wissenschaftlichen Text verfassen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'In this lesson on "Wissenschaftlichen Text verfassen" (Akademische Sprache), you learned key writing concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wissenschaftlichen Text verfassen\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wissenschaftlichen Text verfassen\""}]', ARRAY['"Wissenschaftlichen Text verfassen" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Wissenschaftlichen Text verfassen — Speaking 1', 'Practice the key vocabulary and phrases from "Wissenschaftlichen Text verfassen" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Wissenschaftlichen Text verfassen — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Wissenschaftlichen Text verfassen — Writing Task 1', 'Write a short text (50-100 words) about wissenschaftlichen text verfassen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Wissenschaftlichen Text verfassen — Writing Task 2', 'Write 5 questions about wissenschaftlichen text verfassen and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Wissenschaftlichen Text verfassen — Conversation 1', 'Practice a realistic conversation about wissenschaftlichen text verfassen in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wissenschaftlichen Text verfassen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Wissenschaftlichen Text verfassen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wissenschaftlichen Text verfassen". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wissenschaftlichen Text verfassen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Wissenschaftlichen Text verfassen — Reading Practice', 'This is a C1-level reading passage about wissenschaftlichen text verfassen in the context of Akademische Sprache.

Wissenschaftlichen Text verfassen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('15715b2a-af91-492e-9be8-87e8aabc40d9', 'Wissenschaftlichen Text verfassen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wissenschaftlichen Text verfassen" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 1),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 2),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 5),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 6),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Wissenschaft und Forschung', 'informal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Homework: Forschungsartikel lesen und analysieren', 'Complete these tasks to reinforce "Forschungsartikel lesen und analysieren" (Wissenschaft und Forschung).', 'writing', '[{"description":"Review all vocabulary from \"Forschungsartikel lesen und analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'In this lesson on "Forschungsartikel lesen und analysieren" (Wissenschaft und Forschung), you learned key reading concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Forschungsartikel lesen und analysieren\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Forschungsartikel lesen und analysieren\""}]', ARRAY['"Forschungsartikel lesen und analysieren" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Forschungsartikel lesen und analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Forschungsartikel lesen und analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Forschungsartikel lesen und analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Forschungsartikel lesen und analysieren — Writing Task 1', 'Write a short text (50-100 words) about forschungsartikel lesen und analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Forschungsartikel lesen und analysieren — Conversation 1', 'Practice a realistic conversation about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsartikel lesen und analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Forschungsartikel lesen und analysieren — Conversation 2', 'Practice a realistic conversation about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Forschungsartikel lesen und analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Forschungsartikel lesen und analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Forschungsartikel lesen und analysieren". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Forschungsartikel lesen und analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Forschungsartikel lesen und analysieren — Reading Practice', 'This is a C1-level reading passage about forschungsartikel lesen und analysieren in the context of Wissenschaft und Forschung.

Forschungsartikel lesen und analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f8d28f8b-7e2a-44ed-8cb1-1d95ef138918', 'Forschungsartikel lesen und analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Forschungsartikel lesen und analysieren" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medienanalyse', 'formal', false, NULL, 1),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medienanalyse', 'informal', false, NULL, 3),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medienanalyse', 'informal', false, NULL, 4),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medienanalyse', 'formal', false, NULL, 5),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medienanalyse', 'formal', false, NULL, 6),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medienanalyse', 'informal', false, NULL, 7),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medienanalyse', 'neutral', false, NULL, 8),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medienanalyse', 'neutral', false, NULL, 9),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medienanalyse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Homework: Mediendiskussion führen', 'Complete these tasks to reinforce "Mediendiskussion führen" (Medienanalyse).', 'speaking', '[{"description":"Review all vocabulary from \"Mediendiskussion führen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'In this lesson on "Mediendiskussion führen" (Medienanalyse), you learned key speaking concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mediendiskussion führen\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mediendiskussion führen\""}]', ARRAY['"Mediendiskussion führen" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Mediendiskussion führen — Speaking 1', 'Practice the key vocabulary and phrases from "Mediendiskussion führen" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Mediendiskussion führen — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Mediendiskussion führen — Writing Task 1', 'Write a short text (50-100 words) about mediendiskussion führen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Mediendiskussion führen — Conversation 1', 'Practice a realistic conversation about mediendiskussion führen in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mediendiskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Mediendiskussion führen — Conversation 2', 'Practice a realistic conversation about mediendiskussion führen in the context of Medienanalyse.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mediendiskussion führen" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Mediendiskussion führen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mediendiskussion führen". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Mediendiskussion führen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Mediendiskussion führen — Reading Practice', 'This is a C1-level reading passage about mediendiskussion führen in the context of Medienanalyse.

Mediendiskussion führen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('cadc0c10-e715-4544-a48d-d3a4e8c9e597', 'Mediendiskussion führen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mediendiskussion führen" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Politische Diskurse', 'formal', false, NULL, 1),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Politische Diskurse', 'informal', false, NULL, 3),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Politische Diskurse', 'informal', false, NULL, 4),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Politische Diskurse', 'formal', false, NULL, 5),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Politische Diskurse', 'formal', false, NULL, 6),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Politische Diskurse', 'informal', false, NULL, 7),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Politische Diskurse', 'neutral', false, NULL, 8),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Politische Diskurse', 'neutral', false, NULL, 9),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Politische Diskurse', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Homework: Politische Rede analysieren', 'Complete these tasks to reinforce "Politische Rede analysieren" (Politische Diskurse).', 'reading', '[{"description":"Review all vocabulary from \"Politische Rede analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'In this lesson on "Politische Rede analysieren" (Politische Diskurse), you learned key listening concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Politische Rede analysieren\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Politische Rede analysieren\""}]', ARRAY['"Politische Rede analysieren" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Politische Rede analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Politische Rede analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Politische Rede analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Politische Rede analysieren — Writing Task 1', 'Write a short text (50-100 words) about politische rede analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Politische Rede analysieren — Conversation 1', 'Practice a realistic conversation about politische rede analysieren in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Politische Rede analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Politische Rede analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Politische Rede analysieren". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Politische Rede analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Politische Rede analysieren — Reading Practice', 'This is a C1-level reading passage about politische rede analysieren in the context of Politische Diskurse.

Politische Rede analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ceab746f-5995-43b5-bd2d-a6e78891d6fc', 'Politische Rede analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Politische Rede analysieren" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 2),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wirtschaftsdeutsch', 'informal', false, NULL, 5),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 6),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 7),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Homework: Wirtschaftsartikel analysieren', 'Complete these tasks to reinforce "Wirtschaftsartikel analysieren" (Wirtschaftsdeutsch).', 'grammar', '[{"description":"Review all vocabulary from \"Wirtschaftsartikel analysieren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'In this lesson on "Wirtschaftsartikel analysieren" (Wirtschaftsdeutsch), you learned key reading concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wirtschaftsartikel analysieren\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wirtschaftsartikel analysieren\""}]', ARRAY['"Wirtschaftsartikel analysieren" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Wirtschaftsartikel analysieren — Speaking 1', 'Practice the key vocabulary and phrases from "Wirtschaftsartikel analysieren" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Wirtschaftsartikel analysieren — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Wirtschaftsartikel analysieren — Writing Task 1', 'Write a short text (50-100 words) about wirtschaftsartikel analysieren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Wirtschaftsartikel analysieren — Conversation 1', 'Practice a realistic conversation about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsartikel analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Wirtschaftsartikel analysieren — Conversation 2', 'Practice a realistic conversation about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.', 'Customer', 'Assistant', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wirtschaftsartikel analysieren" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Wirtschaftsartikel analysieren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wirtschaftsartikel analysieren". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wirtschaftsartikel analysieren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Wirtschaftsartikel analysieren — Reading Practice', 'This is a C1-level reading passage about wirtschaftsartikel analysieren in the context of Wirtschaftsdeutsch.

Wirtschaftsartikel analysieren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('a3713357-f86e-4e75-842c-89eec93703df', 'Wirtschaftsartikel analysieren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wirtschaftsartikel analysieren" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Literatur und Kunst', 'formal', false, NULL, 1),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 3),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Literatur und Kunst', 'informal', false, NULL, 4),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Literatur und Kunst', 'formal', false, NULL, 6),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Literatur und Kunst', 'informal', false, NULL, 7),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 8),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Literatur und Kunst', 'neutral', false, NULL, 9),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Literatur und Kunst', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Homework: Literarische Analyse schreiben', 'Complete these tasks to reinforce "Literarische Analyse schreiben" (Literatur und Kunst).', 'mixed', '[{"description":"Review all vocabulary from \"Literarische Analyse schreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'In this lesson on "Literarische Analyse schreiben" (Literatur und Kunst), you learned key writing concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Literarische Analyse schreiben\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Literarische Analyse schreiben\""}]', ARRAY['"Literarische Analyse schreiben" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Literarische Analyse schreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Literarische Analyse schreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Literarische Analyse schreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Literarische Analyse schreiben — Writing Task 1', 'Write a short text (50-100 words) about literarische analyse schreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Literarische Analyse schreiben — Writing Task 2', 'Write 5 questions about literarische analyse schreiben and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Literarische Analyse schreiben — Conversation 1', 'Practice a realistic conversation about literarische analyse schreiben in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Literarische Analyse schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Literarische Analyse schreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Literarische Analyse schreiben". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Literarische Analyse schreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Literarische Analyse schreiben — Reading Practice', 'This is a C1-level reading passage about literarische analyse schreiben in the context of Literatur und Kunst.

Literarische Analyse schreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('daa6a2a3-8950-4594-8eae-0fcd667ef63c', 'Literarische Analyse schreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Literarische Analyse schreiben" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Homework: Wiederholung: Wirtschaftsdeutsch', 'Complete these tasks to reinforce "Wiederholung: Wirtschaftsdeutsch" (Wirtschaftsdeutsch).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Wirtschaftsdeutsch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'In this lesson on "Wiederholung: Wirtschaftsdeutsch" (Wirtschaftsdeutsch), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wirtschaftsdeutsch\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wirtschaftsdeutsch\""}]', ARRAY['"Wiederholung: Wirtschaftsdeutsch" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Wiederholung: Wirtschaftsdeutsch — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wirtschaftsdeutsch" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Wiederholung: Wirtschaftsdeutsch — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Wiederholung: Wirtschaftsdeutsch — Conversation 1', 'Practice a realistic conversation about wiederholung: wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wirtschaftsdeutsch" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Wiederholung: Wirtschaftsdeutsch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wirtschaftsdeutsch". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wiederholung: Wirtschaftsdeutsch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Wiederholung: Wirtschaftsdeutsch — Reading Practice', 'This is a C1-level reading passage about wiederholung: wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.

Wiederholung: Wirtschaftsdeutsch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4fa0d37f-c91d-48a4-a74e-af57276563e4', 'Wiederholung: Wirtschaftsdeutsch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wirtschaftsdeutsch" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medienanalyse', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Homework: Wiederholung: Medienanalyse', 'Complete these tasks to reinforce "Wiederholung: Medienanalyse" (Medienanalyse).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Medienanalyse\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'In this lesson on "Wiederholung: Medienanalyse" (Medienanalyse), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Medienanalyse\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Medienanalyse\""}]', ARRAY['"Wiederholung: Medienanalyse" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Wiederholung: Medienanalyse — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Medienanalyse" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Wiederholung: Medienanalyse — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Wiederholung: Medienanalyse — Conversation 1', 'Practice a realistic conversation about wiederholung: medienanalyse in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Medienanalyse" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Wiederholung: Medienanalyse — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Medienanalyse". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Wiederholung: Medienanalyse', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Wiederholung: Medienanalyse — Reading Practice', 'This is a C1-level reading passage about wiederholung: medienanalyse in the context of Medienanalyse.

Wiederholung: Medienanalyse is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('6573d2b6-7509-46bb-a09f-38e65d5d201c', 'Wiederholung: Medienanalyse — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Medienanalyse" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Homework: Wiederholung: Literatur und Kunst', 'Complete these tasks to reinforce "Wiederholung: Literatur und Kunst" (Literatur und Kunst).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Literatur und Kunst\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'In this lesson on "Wiederholung: Literatur und Kunst" (Literatur und Kunst), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Literatur und Kunst\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Literatur und Kunst\""}]', ARRAY['"Wiederholung: Literatur und Kunst" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Wiederholung: Literatur und Kunst — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Literatur und Kunst" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Wiederholung: Literatur und Kunst — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Wiederholung: Literatur und Kunst — Conversation 1', 'Practice a realistic conversation about wiederholung: literatur und kunst in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Literatur und Kunst" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Wiederholung: Literatur und Kunst — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Literatur und Kunst". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Wiederholung: Literatur und Kunst', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Wiederholung: Literatur und Kunst — Reading Practice', 'This is a C1-level reading passage about wiederholung: literatur und kunst in the context of Literatur und Kunst.

Wiederholung: Literatur und Kunst is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9ce163f7-756b-4e81-87ab-0589e7343f33', 'Wiederholung: Literatur und Kunst — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Literatur und Kunst" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Homework: Wiederholung: Literatur und Kunst', 'Complete these tasks to reinforce "Wiederholung: Literatur und Kunst" (Literatur und Kunst).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Literatur und Kunst\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'In this lesson on "Wiederholung: Literatur und Kunst" (Literatur und Kunst), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Literatur und Kunst\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Literatur und Kunst\""}]', ARRAY['"Wiederholung: Literatur und Kunst" core vocabulary', 'Literatur und Kunst key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Wiederholung: Literatur und Kunst — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Literatur und Kunst" aloud. Focus on correct pronunciation.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Wiederholung: Literatur und Kunst — Speaking 2', 'Role-play: Imagine you are in a situation related to Literatur und Kunst. Have a dialogue with a partner.', 'Speaking practice for Literatur und Kunst', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Wiederholung: Literatur und Kunst — Conversation 1', 'Practice a realistic conversation about wiederholung: literatur und kunst in the context of Literatur und Kunst.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Literatur und Kunst" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Wiederholung: Literatur und Kunst — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Literatur und Kunst". The dialogue should be realistic and related to Literatur und Kunst.', 'Creative practice for Wiederholung: Literatur und Kunst', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Wiederholung: Literatur und Kunst — Reading Practice', 'This is a C1-level reading passage about wiederholung: literatur und kunst in the context of Literatur und Kunst.

Wiederholung: Literatur und Kunst is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Literatur und Kunst" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('1c4a36fd-6b37-42d8-9aa5-0fb5d7e1b48a', 'Wiederholung: Literatur und Kunst — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Literatur und Kunst" aus dem Modul "Literatur und Kunst".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Literatur und Kunst');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Homework: Wiederholung: Wirtschaftsdeutsch', 'Complete these tasks to reinforce "Wiederholung: Wirtschaftsdeutsch" (Wirtschaftsdeutsch).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Wirtschaftsdeutsch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'In this lesson on "Wiederholung: Wirtschaftsdeutsch" (Wirtschaftsdeutsch), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wirtschaftsdeutsch\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wirtschaftsdeutsch\""}]', ARRAY['"Wiederholung: Wirtschaftsdeutsch" core vocabulary', 'Wirtschaftsdeutsch key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Wiederholung: Wirtschaftsdeutsch — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wirtschaftsdeutsch" aloud. Focus on correct pronunciation.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Wiederholung: Wirtschaftsdeutsch — Speaking 2', 'Role-play: Imagine you are in a situation related to Wirtschaftsdeutsch. Have a dialogue with a partner.', 'Speaking practice for Wirtschaftsdeutsch', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Wiederholung: Wirtschaftsdeutsch — Conversation 1', 'Practice a realistic conversation about wiederholung: wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wirtschaftsdeutsch" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Wiederholung: Wirtschaftsdeutsch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wirtschaftsdeutsch". The dialogue should be realistic and related to Wirtschaftsdeutsch.', 'Creative practice for Wiederholung: Wirtschaftsdeutsch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Wiederholung: Wirtschaftsdeutsch — Reading Practice', 'This is a C1-level reading passage about wiederholung: wirtschaftsdeutsch in the context of Wirtschaftsdeutsch.

Wiederholung: Wirtschaftsdeutsch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wirtschaftsdeutsch" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d6873db9-46a3-453d-a5ba-77441686539f', 'Wiederholung: Wirtschaftsdeutsch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wirtschaftsdeutsch" aus dem Modul "Wirtschaftsdeutsch".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wirtschaftsdeutsch');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Politische Diskurse', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Homework: Wiederholung: Politische Diskurse', 'Complete these tasks to reinforce "Wiederholung: Politische Diskurse" (Politische Diskurse).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Politische Diskurse\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'In this lesson on "Wiederholung: Politische Diskurse" (Politische Diskurse), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Politische Diskurse\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Politische Diskurse\""}]', ARRAY['"Wiederholung: Politische Diskurse" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Wiederholung: Politische Diskurse — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Politische Diskurse" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Wiederholung: Politische Diskurse — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Wiederholung: Politische Diskurse — Conversation 1', 'Practice a realistic conversation about wiederholung: politische diskurse in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Politische Diskurse" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Wiederholung: Politische Diskurse — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Politische Diskurse". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Wiederholung: Politische Diskurse', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Wiederholung: Politische Diskurse — Reading Practice', 'This is a C1-level reading passage about wiederholung: politische diskurse in the context of Politische Diskurse.

Wiederholung: Politische Diskurse is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b8bbdb96-5c40-4358-a25f-edd19314e7a6', 'Wiederholung: Politische Diskurse — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Politische Diskurse" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Homework: Wiederholung: Wissenschaft und Forschung', 'Complete these tasks to reinforce "Wiederholung: Wissenschaft und Forschung" (Wissenschaft und Forschung).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Wissenschaft und Forschung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'In this lesson on "Wiederholung: Wissenschaft und Forschung" (Wissenschaft und Forschung), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wissenschaft und Forschung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wissenschaft und Forschung\""}]', ARRAY['"Wiederholung: Wissenschaft und Forschung" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Wiederholung: Wissenschaft und Forschung — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wissenschaft und Forschung" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Wiederholung: Wissenschaft und Forschung — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Wiederholung: Wissenschaft und Forschung — Conversation 1', 'Practice a realistic conversation about wiederholung: wissenschaft und forschung in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wissenschaft und Forschung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Wiederholung: Wissenschaft und Forschung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wissenschaft und Forschung". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Wiederholung: Wissenschaft und Forschung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Wiederholung: Wissenschaft und Forschung — Reading Practice', 'This is a C1-level reading passage about wiederholung: wissenschaft und forschung in the context of Wissenschaft und Forschung.

Wiederholung: Wissenschaft und Forschung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fb6d4f46-0059-4e70-b4aa-090eb1fb86b7', 'Wiederholung: Wissenschaft und Forschung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wissenschaft und Forschung" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Akademische Sprache', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Homework: Wiederholung: Akademische Sprache', 'Complete these tasks to reinforce "Wiederholung: Akademische Sprache" (Akademische Sprache).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Akademische Sprache\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'In this lesson on "Wiederholung: Akademische Sprache" (Akademische Sprache), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Akademische Sprache\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Akademische Sprache\""}]', ARRAY['"Wiederholung: Akademische Sprache" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Wiederholung: Akademische Sprache — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Akademische Sprache" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Wiederholung: Akademische Sprache — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Wiederholung: Akademische Sprache — Conversation 1', 'Practice a realistic conversation about wiederholung: akademische sprache in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Akademische Sprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Wiederholung: Akademische Sprache — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Akademische Sprache". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wiederholung: Akademische Sprache', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Wiederholung: Akademische Sprache — Reading Practice', 'This is a C1-level reading passage about wiederholung: akademische sprache in the context of Akademische Sprache.

Wiederholung: Akademische Sprache is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('53f2312c-30e9-4c01-9f85-74e00318bf88', 'Wiederholung: Akademische Sprache — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Akademische Sprache" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Akademische Sprache', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Homework: Wiederholung: Akademische Sprache', 'Complete these tasks to reinforce "Wiederholung: Akademische Sprache" (Akademische Sprache).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Akademische Sprache\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'In this lesson on "Wiederholung: Akademische Sprache" (Akademische Sprache), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Akademische Sprache\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Akademische Sprache\""}]', ARRAY['"Wiederholung: Akademische Sprache" core vocabulary', 'Akademische Sprache key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Wiederholung: Akademische Sprache — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Akademische Sprache" aloud. Focus on correct pronunciation.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Wiederholung: Akademische Sprache — Speaking 2', 'Role-play: Imagine you are in a situation related to Akademische Sprache. Have a dialogue with a partner.', 'Speaking practice for Akademische Sprache', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Wiederholung: Akademische Sprache — Conversation 1', 'Practice a realistic conversation about wiederholung: akademische sprache in the context of Akademische Sprache.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Akademische Sprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Wiederholung: Akademische Sprache — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Akademische Sprache". The dialogue should be realistic and related to Akademische Sprache.', 'Creative practice for Wiederholung: Akademische Sprache', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Wiederholung: Akademische Sprache — Reading Practice', 'This is a C1-level reading passage about wiederholung: akademische sprache in the context of Akademische Sprache.

Wiederholung: Akademische Sprache is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Akademische Sprache" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('75bc85c4-2396-462f-9bdc-7b826cd154a8', 'Wiederholung: Akademische Sprache — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Akademische Sprache" aus dem Modul "Akademische Sprache".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Akademische Sprache');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Politische Diskurse', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Homework: Wiederholung: Politische Diskurse', 'Complete these tasks to reinforce "Wiederholung: Politische Diskurse" (Politische Diskurse).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Politische Diskurse\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'In this lesson on "Wiederholung: Politische Diskurse" (Politische Diskurse), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Politische Diskurse\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Politische Diskurse\""}]', ARRAY['"Wiederholung: Politische Diskurse" core vocabulary', 'Politische Diskurse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Wiederholung: Politische Diskurse — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Politische Diskurse" aloud. Focus on correct pronunciation.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Wiederholung: Politische Diskurse — Speaking 2', 'Role-play: Imagine you are in a situation related to Politische Diskurse. Have a dialogue with a partner.', 'Speaking practice for Politische Diskurse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Wiederholung: Politische Diskurse — Conversation 1', 'Practice a realistic conversation about wiederholung: politische diskurse in the context of Politische Diskurse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Politische Diskurse" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Wiederholung: Politische Diskurse — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Politische Diskurse". The dialogue should be realistic and related to Politische Diskurse.', 'Creative practice for Wiederholung: Politische Diskurse', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Wiederholung: Politische Diskurse — Reading Practice', 'This is a C1-level reading passage about wiederholung: politische diskurse in the context of Politische Diskurse.

Wiederholung: Politische Diskurse is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Politische Diskurse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e8e1235-0625-4aa5-9918-f682f3d1d677', 'Wiederholung: Politische Diskurse — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Politische Diskurse" aus dem Modul "Politische Diskurse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Politische Diskurse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medienanalyse', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Homework: Wiederholung: Medienanalyse', 'Complete these tasks to reinforce "Wiederholung: Medienanalyse" (Medienanalyse).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Medienanalyse\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'In this lesson on "Wiederholung: Medienanalyse" (Medienanalyse), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Medienanalyse\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Medienanalyse\""}]', ARRAY['"Wiederholung: Medienanalyse" core vocabulary', 'Medienanalyse key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Wiederholung: Medienanalyse — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Medienanalyse" aloud. Focus on correct pronunciation.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Wiederholung: Medienanalyse — Speaking 2', 'Role-play: Imagine you are in a situation related to Medienanalyse. Have a dialogue with a partner.', 'Speaking practice for Medienanalyse', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Wiederholung: Medienanalyse — Conversation 1', 'Practice a realistic conversation about wiederholung: medienanalyse in the context of Medienanalyse.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Medienanalyse" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Wiederholung: Medienanalyse — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Medienanalyse". The dialogue should be realistic and related to Medienanalyse.', 'Creative practice for Wiederholung: Medienanalyse', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Wiederholung: Medienanalyse — Reading Practice', 'This is a C1-level reading passage about wiederholung: medienanalyse in the context of Medienanalyse.

Wiederholung: Medienanalyse is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medienanalyse" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('cf2e7be5-b4e9-4faa-8f8b-b9efda260298', 'Wiederholung: Medienanalyse — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Medienanalyse" aus dem Modul "Medienanalyse".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medienanalyse');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Homework: Wiederholung: Wissenschaft und Forschung', 'Complete these tasks to reinforce "Wiederholung: Wissenschaft und Forschung" (Wissenschaft und Forschung).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Wissenschaft und Forschung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'In this lesson on "Wiederholung: Wissenschaft und Forschung" (Wissenschaft und Forschung), you learned key review concepts at C1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wissenschaft und Forschung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wissenschaft und Forschung\""}]', ARRAY['"Wiederholung: Wissenschaft und Forschung" core vocabulary', 'Wissenschaft und Forschung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Wiederholung: Wissenschaft und Forschung — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wissenschaft und Forschung" aloud. Focus on correct pronunciation.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Wiederholung: Wissenschaft und Forschung — Speaking 2', 'Role-play: Imagine you are in a situation related to Wissenschaft und Forschung. Have a dialogue with a partner.', 'Speaking practice for Wissenschaft und Forschung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Wiederholung: Wissenschaft und Forschung — Conversation 1', 'Practice a realistic conversation about wiederholung: wissenschaft und forschung in the context of Wissenschaft und Forschung.', 'Student', 'Teacher', 'You are a student at C1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wissenschaft und Forschung" sprechen. Bist du bereit?', ARRAY[]::text[], 'advanced', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Wiederholung: Wissenschaft und Forschung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wissenschaft und Forschung". The dialogue should be realistic and related to Wissenschaft und Forschung.', 'Creative practice for Wiederholung: Wissenschaft und Forschung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Wiederholung: Wissenschaft und Forschung — Reading Practice', 'This is a C1-level reading passage about wiederholung: wissenschaft und forschung in the context of Wissenschaft und Forschung.

Wiederholung: Wissenschaft und Forschung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wissenschaft und Forschung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f62c059a-62c4-40ff-9e72-9809a51ea006', 'Wiederholung: Wissenschaft und Forschung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wissenschaft und Forschung" aus dem Modul "Wissenschaft und Forschung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wissenschaft und Forschung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medienanalyse', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('f2ae3009-bac9-44b8-8dea-0b1ed60514c4', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('e6a6574b-bb7b-4e30-9f53-bb750903647e', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('8e4f24bf-e83e-4b3d-ba57-7062f2773560', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Politische Diskurse', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('54dc9bd0-a650-43ca-beea-39107d10ee8b', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 1),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Literatur und Kunst', 'formal', false, NULL, 2),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 3),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Literatur und Kunst', 'neutral', false, NULL, 4),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Literatur und Kunst', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('3ed29c51-71c9-41bb-b3e1-1dba35d3a1da', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Politische Diskurse', 'neutral', false, NULL, 1),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Politische Diskurse', 'formal', false, NULL, 2),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Politische Diskurse', 'neutral', false, NULL, 3),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Politische Diskurse', 'neutral', false, NULL, 4),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Politische Diskurse', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('cec9c26c-fbaf-49c7-a4fd-50027a86c887', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('571e753d-7f60-4954-9eca-0069915959de', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('571e753d-7f60-4954-9eca-0069915959de', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('571e753d-7f60-4954-9eca-0069915959de', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 1),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 2),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 3),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wissenschaft und Forschung', 'neutral', false, NULL, 4),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wissenschaft und Forschung', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('29e357f1-0e75-4429-ad1c-7b87c6411293', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 1),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 2),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 3),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wirtschaftsdeutsch', 'neutral', false, NULL, 4),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wirtschaftsdeutsch', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('edb8ab6e-d2fd-4c0a-9cb0-e029fb6d7c4e', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Akademische Sprache', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('1f003162-ed5a-468c-86ce-fda469cbc96c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medienanalyse', 'neutral', false, NULL, 1),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medienanalyse', 'formal', false, NULL, 2),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medienanalyse', 'neutral', false, NULL, 3),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medienanalyse', 'neutral', false, NULL, 4),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medienanalyse', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('c3634fdb-53cc-4e1c-a7b0-8070441cdce7', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Akademische Sprache', 'neutral', false, NULL, 1),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Akademische Sprache', 'formal', false, NULL, 2),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Akademische Sprache', 'neutral', false, NULL, 3),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Akademische Sprache', 'neutral', false, NULL, 4),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Akademische Sprache', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('9e3f3d39-dee8-4a07-9c69-346ed092f560', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);