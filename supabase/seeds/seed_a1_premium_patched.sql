-- ============================================================
-- PREMIUM CONTENT SEED — Level A1
-- Generated for 57 lessons across 6 modules
-- ============================================================


INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000010', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000010', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000010', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000010', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000010', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000010', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000010', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 10);

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
  ('00000000-0000-0000-0000-000000000010', 'Homework: Begrüßungen und Vorstellungen', 'Complete these tasks to reinforce "Begrüßungen und Vorstellungen" (Hallo! Erste Schritte).', 'vocabulary', '[{"description":"Review all vocabulary from \"Begrüßungen und Vorstellungen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000010', 'In this lesson on "Begrüßungen und Vorstellungen" (Hallo! Erste Schritte), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Begrüßungen und Vorstellungen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Begrüßungen und Vorstellungen\""}]', ARRAY['"Begrüßungen und Vorstellungen" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Begrüßungen und Vorstellungen — Speaking 1', 'Practice the key vocabulary and phrases from "Begrüßungen und Vorstellungen" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Begrüßungen und Vorstellungen — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Begrüßungen und Vorstellungen — Writing Task 1', 'Write a short text (50-100 words) about begrüßungen und vorstellungen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Begrüßungen und Vorstellungen — Conversation 1', 'Practice a realistic conversation about begrüßungen und vorstellungen in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Begrüßungen und Vorstellungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Begrüßungen und Vorstellungen — Conversation 2', 'Practice a realistic conversation about begrüßungen und vorstellungen in the context of Hallo! Erste Schritte.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Begrüßungen und Vorstellungen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Begrüßungen und Vorstellungen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Begrüßungen und Vorstellungen". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Begrüßungen und Vorstellungen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Begrüßungen und Vorstellungen — Deep Understanding', 'Explain the most important concepts from "Begrüßungen und Vorstellungen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Begrüßungen und Vorstellungen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Begrüßungen und Vorstellungen — Reading Practice', 'This is a A1-level reading passage about begrüßungen und vorstellungen in the context of Hallo! Erste Schritte.

Begrüßungen und Vorstellungen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Begrüßungen und Vorstellungen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Begrüßungen und Vorstellungen" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Homework: Die Familie', 'Complete these tasks to reinforce "Die Familie" (Familie und Alltag).', 'writing', '[{"description":"Review all vocabulary from \"Die Familie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'In this lesson on "Die Familie" (Familie und Alltag), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Die Familie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Die Familie\""}]', ARRAY['"Die Familie" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Die Familie — Speaking 1', 'Practice the key vocabulary and phrases from "Die Familie" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Die Familie — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Die Familie — Writing Task 1', 'Write a short text (50-100 words) about die familie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Die Familie — Conversation 1', 'Practice a realistic conversation about die familie in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Die Familie — Conversation 2', 'Practice a realistic conversation about die familie in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Die Familie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Familie". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Die Familie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Die Familie — Deep Understanding', 'Explain the most important concepts from "Die Familie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Die Familie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Die Familie — Reading Practice', 'This is a A1-level reading passage about die familie in the context of Familie und Alltag.

Die Familie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Die Familie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Die Familie" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Homework: Mein Zuhause', 'Complete these tasks to reinforce "Mein Zuhause" (Wohnen).', 'speaking', '[{"description":"Review all vocabulary from \"Mein Zuhause\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'In this lesson on "Mein Zuhause" (Wohnen), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Zuhause\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Zuhause\""}]', ARRAY['"Mein Zuhause" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mein Zuhause — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Zuhause" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mein Zuhause — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mein Zuhause — Writing Task 1', 'Write a short text (50-100 words) about mein zuhause. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mein Zuhause — Conversation 1', 'Practice a realistic conversation about mein zuhause in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Zuhause" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mein Zuhause — Conversation 2', 'Practice a realistic conversation about mein zuhause in the context of Wohnen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Zuhause" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mein Zuhause — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Zuhause". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Mein Zuhause', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mein Zuhause — Deep Understanding', 'Explain the most important concepts from "Mein Zuhause" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Mein Zuhause', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mein Zuhause — Reading Practice', 'This is a A1-level reading passage about mein zuhause in the context of Wohnen.

Mein Zuhause is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mein Zuhause — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Zuhause" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 1),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Einkaufen und Essen', 'formal', false, NULL, 3),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 5),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 6),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Homework: Lebensmittel', 'Complete these tasks to reinforce "Lebensmittel" (Einkaufen und Essen).', 'reading', '[{"description":"Review all vocabulary from \"Lebensmittel\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'In this lesson on "Lebensmittel" (Einkaufen und Essen), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Lebensmittel\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Lebensmittel\""}]', ARRAY['"Lebensmittel" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Lebensmittel — Speaking 1', 'Practice the key vocabulary and phrases from "Lebensmittel" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Lebensmittel — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Lebensmittel — Writing Task 1', 'Write a short text (50-100 words) about lebensmittel. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Lebensmittel — Conversation 1', 'Practice a realistic conversation about lebensmittel in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Lebensmittel — Conversation 2', 'Practice a realistic conversation about lebensmittel in the context of Einkaufen und Essen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Lebensmittel — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Lebensmittel". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Lebensmittel', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Lebensmittel — Deep Understanding', 'Explain the most important concepts from "Lebensmittel" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Lebensmittel', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Lebensmittel — Reading Practice', 'This is a A1-level reading passage about lebensmittel in the context of Einkaufen und Essen.

Lebensmittel is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Lebensmittel — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Lebensmittel" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Homework: Berufe', 'Complete these tasks to reinforce "Berufe" (Arbeit und Beruf).', 'grammar', '[{"description":"Review all vocabulary from \"Berufe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'In this lesson on "Berufe" (Arbeit und Beruf), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Berufe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Berufe\""}]', ARRAY['"Berufe" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Berufe — Speaking 1', 'Practice the key vocabulary and phrases from "Berufe" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Berufe — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Berufe — Writing Task 1', 'Write a short text (50-100 words) about berufe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Berufe — Conversation 1', 'Practice a realistic conversation about berufe in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Berufe" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Berufe — Conversation 2', 'Practice a realistic conversation about berufe in the context of Arbeit und Beruf.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Berufe" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Berufe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Berufe". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Berufe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Berufe — Deep Understanding', 'Explain the most important concepts from "Berufe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Berufe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Berufe — Reading Practice', 'This is a A1-level reading passage about berufe in the context of Arbeit und Beruf.

Berufe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Berufe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Berufe" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wo ist der Bahnhof?', 'Where is the train station?', 'أين محطة القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 'تذكرة إلى برلين من فضلك.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wann fährt der Zug ab?', 'When does the train leave?', 'متى يغادر القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Ich möchte ein Zimmer reservieren.', 'I''d like to reserve a room.', 'أريد حجز غرفة.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 4),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wie viel kostet das Zimmer pro Nacht?', 'How much is the room per night?', 'كم سعر الغرفة لليلة؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Gibt es einen Parkplatz?', 'Is there a parking lot?', 'هل هناك موقف سيارات؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 6),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wo ist der Ausgang?', 'Where is the exit?', 'أين المخرج؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Zug', 'train', 'Public transport', 'vocabulary', 1),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Bahnhof', 'train station', 'Where trains stop', 'vocabulary', 2),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'die Fahrkarte', 'ticket', 'For travel', 'vocabulary', 3),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Flughafen', 'airport', 'For planes', 'vocabulary', 4),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'das Hotel', 'hotel', 'For sleeping away', 'vocabulary', 5),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Pass', 'passport', 'For travel ID', 'vocabulary', 6),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Koffer', 'suitcase', 'For packing', 'vocabulary', 7),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'die Reise', 'trip / journey', 'Travel', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Homework: Reisen', 'Complete these tasks to reinforce "Reisen" (Reisen und Freizeit).', 'mixed', '[{"description":"Review all vocabulary from \"Reisen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'In this lesson on "Reisen" (Reisen und Freizeit), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Reisen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Reisen\""}]', ARRAY['"Reisen" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Reisen — Speaking 1', 'Practice the key vocabulary and phrases from "Reisen" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Reisen — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Reisen — Writing Task 1', 'Write a short text (50-100 words) about reisen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Reisen — Conversation 1', 'Practice a realistic conversation about reisen in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Reisen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Reisen — Conversation 2', 'Practice a realistic conversation about reisen in the context of Reisen und Freizeit.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Reisen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Reisen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Reisen". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Reisen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Reisen — Deep Understanding', 'Explain the most important concepts from "Reisen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Reisen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Reisen — Reading Practice', 'This is a A1-level reading passage about reisen in the context of Reisen und Freizeit.

Reisen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Reisen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Reisen" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Familie und Alltag', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Homework: Mein Tagesablauf', 'Complete these tasks to reinforce "Mein Tagesablauf" (Familie und Alltag).', 'vocabulary', '[{"description":"Review all vocabulary from \"Mein Tagesablauf\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'In this lesson on "Mein Tagesablauf" (Familie und Alltag), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Tagesablauf\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Tagesablauf\""}]', ARRAY['"Mein Tagesablauf" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mein Tagesablauf — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Tagesablauf" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mein Tagesablauf — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mein Tagesablauf — Writing Task 1', 'Write a short text (50-100 words) about mein tagesablauf. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mein Tagesablauf — Conversation 1', 'Practice a realistic conversation about mein tagesablauf in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Tagesablauf" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mein Tagesablauf — Conversation 2', 'Practice a realistic conversation about mein tagesablauf in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Tagesablauf" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mein Tagesablauf — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Tagesablauf". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Mein Tagesablauf', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mein Tagesablauf — Deep Understanding', 'Explain the most important concepts from "Mein Tagesablauf" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Mein Tagesablauf', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mein Tagesablauf — Reading Practice', 'This is a A1-level reading passage about mein tagesablauf in the context of Familie und Alltag.

Mein Tagesablauf is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mein Tagesablauf — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Tagesablauf" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 1),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Einkaufen und Essen', 'formal', false, NULL, 3),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 5),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 6),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Homework: Im Restaurant', 'Complete these tasks to reinforce "Im Restaurant" (Einkaufen und Essen).', 'writing', '[{"description":"Review all vocabulary from \"Im Restaurant\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'In this lesson on "Im Restaurant" (Einkaufen und Essen), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Restaurant\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Restaurant\""}]', ARRAY['"Im Restaurant" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Im Restaurant — Speaking 1', 'Practice the key vocabulary and phrases from "Im Restaurant" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Im Restaurant — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Im Restaurant — Writing Task 1', 'Write a short text (50-100 words) about im restaurant. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Im Restaurant — Conversation 1', 'Practice a realistic conversation about im restaurant in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Im Restaurant — Conversation 2', 'Practice a realistic conversation about im restaurant in the context of Einkaufen und Essen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Im Restaurant — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Im Restaurant', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Im Restaurant — Deep Understanding', 'Explain the most important concepts from "Im Restaurant" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Im Restaurant', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Im Restaurant — Reading Practice', 'This is a A1-level reading passage about im restaurant in the context of Einkaufen und Essen.

Im Restaurant is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Im Restaurant — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Restaurant" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Homework: Möbel und Haushalt', 'Complete these tasks to reinforce "Möbel und Haushalt" (Wohnen).', 'speaking', '[{"description":"Review all vocabulary from \"Möbel und Haushalt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'In this lesson on "Möbel und Haushalt" (Wohnen), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Möbel und Haushalt\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Möbel und Haushalt\""}]', ARRAY['"Möbel und Haushalt" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Möbel und Haushalt — Speaking 1', 'Practice the key vocabulary and phrases from "Möbel und Haushalt" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Möbel und Haushalt — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Möbel und Haushalt — Writing Task 1', 'Write a short text (50-100 words) about möbel und haushalt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Möbel und Haushalt — Conversation 1', 'Practice a realistic conversation about möbel und haushalt in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Möbel und Haushalt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Möbel und Haushalt — Conversation 2', 'Practice a realistic conversation about möbel und haushalt in the context of Wohnen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Möbel und Haushalt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Möbel und Haushalt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Möbel und Haushalt". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Möbel und Haushalt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Möbel und Haushalt — Deep Understanding', 'Explain the most important concepts from "Möbel und Haushalt" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Möbel und Haushalt', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Möbel und Haushalt — Reading Practice', 'This is a A1-level reading passage about möbel und haushalt in the context of Wohnen.

Möbel und Haushalt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Möbel und Haushalt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Möbel und Haushalt" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Reisen und Freizeit', 'informal', false, NULL, 1),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 2),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 4),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 5),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 6),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Reisen und Freizeit', 'informal', false, NULL, 7);

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
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Homework: Hobbys und Freizeit', 'Complete these tasks to reinforce "Hobbys und Freizeit" (Reisen und Freizeit).', 'reading', '[{"description":"Review all vocabulary from \"Hobbys und Freizeit\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'In this lesson on "Hobbys und Freizeit" (Reisen und Freizeit), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Hobbys und Freizeit\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Hobbys und Freizeit\""}]', ARRAY['"Hobbys und Freizeit" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hobbys und Freizeit — Speaking 1', 'Practice the key vocabulary and phrases from "Hobbys und Freizeit" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hobbys und Freizeit — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hobbys und Freizeit — Writing Task 1', 'Write a short text (50-100 words) about hobbys und freizeit. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hobbys und Freizeit — Conversation 1', 'Practice a realistic conversation about hobbys und freizeit in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Hobbys und Freizeit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hobbys und Freizeit — Conversation 2', 'Practice a realistic conversation about hobbys und freizeit in the context of Reisen und Freizeit.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Hobbys und Freizeit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hobbys und Freizeit — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Hobbys und Freizeit". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Hobbys und Freizeit', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hobbys und Freizeit — Deep Understanding', 'Explain the most important concepts from "Hobbys und Freizeit" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Hobbys und Freizeit', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hobbys und Freizeit — Reading Practice', 'This is a A1-level reading passage about hobbys und freizeit in the context of Reisen und Freizeit.

Hobbys und Freizeit is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hobbys und Freizeit — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Hobbys und Freizeit" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Homework: Im Büro', 'Complete these tasks to reinforce "Im Büro" (Arbeit und Beruf).', 'grammar', '[{"description":"Review all vocabulary from \"Im Büro\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'In this lesson on "Im Büro" (Arbeit und Beruf), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Büro\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Büro\""}]', ARRAY['"Im Büro" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Im Büro — Speaking 1', 'Practice the key vocabulary and phrases from "Im Büro" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Im Büro — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Im Büro — Writing Task 1', 'Write a short text (50-100 words) about im büro. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Im Büro — Conversation 1', 'Practice a realistic conversation about im büro in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Büro" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Im Büro — Conversation 2', 'Practice a realistic conversation about im büro in the context of Arbeit und Beruf.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Büro" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Im Büro — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Büro". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Im Büro', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Im Büro — Deep Understanding', 'Explain the most important concepts from "Im Büro" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Im Büro', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Im Büro — Reading Practice', 'This is a A1-level reading passage about im büro in the context of Arbeit und Beruf.

Im Büro is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Im Büro — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Büro" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Buchstabiere bitte deinen Namen.', 'Please spell your name.', 'تهجى اسمك من فضلك.', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000011', 'Das ABC ist einfach.', 'The ABC is easy.', 'الأبجدية سهلة.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000011', 'Ä, Ö, Ü sind Umlaute.', 'Ä, Ö, Ü are umlauts.', 'Ä, Ö, Ü هي حروف معدلة.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000011', 'Das ß heißt Eszett.', 'The ß is called Eszett.', 'الحرف ß يسمى Eszett.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 4);

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
  ('00000000-0000-0000-0000-000000000011', 'Homework: Das Alphabet und die Aussprache', 'Complete these tasks to reinforce "Das Alphabet und die Aussprache" (Hallo! Erste Schritte).', 'mixed', '[{"description":"Review all vocabulary from \"Das Alphabet und die Aussprache\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000011', 'In this lesson on "Das Alphabet und die Aussprache" (Hallo! Erste Schritte), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Das Alphabet und die Aussprache\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Das Alphabet und die Aussprache\""}]', ARRAY['"Das Alphabet und die Aussprache" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Das Alphabet und die Aussprache — Speaking 1', 'Practice the key vocabulary and phrases from "Das Alphabet und die Aussprache" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Das Alphabet und die Aussprache — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Das Alphabet und die Aussprache — Writing Task 1', 'Write a short text (50-100 words) about das alphabet und die aussprache. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Das Alphabet und die Aussprache — Conversation 1', 'Practice a realistic conversation about das alphabet und die aussprache in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Das Alphabet und die Aussprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Das Alphabet und die Aussprache — Conversation 2', 'Practice a realistic conversation about das alphabet und die aussprache in the context of Hallo! Erste Schritte.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Das Alphabet und die Aussprache" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Das Alphabet und die Aussprache — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Alphabet und die Aussprache". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Das Alphabet und die Aussprache', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Das Alphabet und die Aussprache — Deep Understanding', 'Explain the most important concepts from "Das Alphabet und die Aussprache" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Das Alphabet und die Aussprache', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Das Alphabet und die Aussprache — Reading Practice', 'This is a A1-level reading passage about das alphabet und die aussprache in the context of Hallo! Erste Schritte.

Das Alphabet und die Aussprache is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Das Alphabet und die Aussprache — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Das Alphabet und die Aussprache" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wo ist der Bahnhof?', 'Where is the train station?', 'أين محطة القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 'تذكرة إلى برلين من فضلك.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wann fährt der Zug ab?', 'When does the train leave?', 'متى يغادر القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Ich möchte ein Zimmer reservieren.', 'I''d like to reserve a room.', 'أريد حجز غرفة.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 4),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wie viel kostet das Zimmer pro Nacht?', 'How much is the room per night?', 'كم سعر الغرفة لليلة؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Gibt es einen Parkplatz?', 'Is there a parking lot?', 'هل هناك موقف سيارات؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 6),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wo ist der Ausgang?', 'Where is the exit?', 'أين المخرج؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'der Zug', 'train', 'Public transport', 'vocabulary', 1),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'der Bahnhof', 'train station', 'Where trains stop', 'vocabulary', 2),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'die Fahrkarte', 'ticket', 'For travel', 'vocabulary', 3),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'der Flughafen', 'airport', 'For planes', 'vocabulary', 4),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'das Hotel', 'hotel', 'For sleeping away', 'vocabulary', 5),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'der Pass', 'passport', 'For travel ID', 'vocabulary', 6),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'der Koffer', 'suitcase', 'For packing', 'vocabulary', 7),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'die Reise', 'trip / journey', 'Travel', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Familie und Alltag', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Homework: Die Uhrzeit', 'Complete these tasks to reinforce "Die Uhrzeit" (Familie und Alltag).', 'vocabulary', '[{"description":"Review all vocabulary from \"Die Uhrzeit\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'In this lesson on "Die Uhrzeit" (Familie und Alltag), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Die Uhrzeit\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Die Uhrzeit\""}]', ARRAY['"Die Uhrzeit" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Die Uhrzeit — Speaking 1', 'Practice the key vocabulary and phrases from "Die Uhrzeit" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Die Uhrzeit — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Die Uhrzeit — Writing Task 1', 'Write a short text (50-100 words) about die uhrzeit. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Die Uhrzeit — Conversation 1', 'Practice a realistic conversation about die uhrzeit in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Uhrzeit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Die Uhrzeit — Conversation 2', 'Practice a realistic conversation about die uhrzeit in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Uhrzeit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Die Uhrzeit — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Uhrzeit". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Die Uhrzeit', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Die Uhrzeit — Deep Understanding', 'Explain the most important concepts from "Die Uhrzeit" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Die Uhrzeit', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Die Uhrzeit — Reading Practice', 'This is a A1-level reading passage about die uhrzeit in the context of Familie und Alltag.

Die Uhrzeit is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Die Uhrzeit — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Die Uhrzeit" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 1),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Einkaufen und Essen', 'formal', false, NULL, 3),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 5),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 6),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Wie viel kostet das?', 'How much does that cost?', 'كم ثمن هذا؟', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000012', 'Ich bin 25 Jahre alt.', 'I am 25 years old.', 'عمري 25 سنة.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000012', 'Meine Telefonnummer ist...', 'My phone number is...', 'رقم هاتفي هو...', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000012', 'Wir treffen uns um halb acht.', 'We meet at half past seven.', 'نلتقي في السابعة والنصف.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000012', 'Das ist der dritte Stock.', 'That is the third floor.', 'هذا هو الطابق الثالث.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'eins', 'one', '1', 'vocabulary', 1),
  ('00000000-0000-0000-0000-000000000012', 'zehn', 'ten', '10', 'vocabulary', 2),
  ('00000000-0000-0000-0000-000000000012', 'zwanzig', 'twenty', '20', 'vocabulary', 3),
  ('00000000-0000-0000-0000-000000000012', 'hundert', 'hundred', '100', 'vocabulary', 4),
  ('00000000-0000-0000-0000-000000000012', 'tausend', 'thousand', '1,000', 'vocabulary', 5),
  ('00000000-0000-0000-0000-000000000012', 'die Nummer', 'the number', 'Phone or house', 'vocabulary', 6),
  ('00000000-0000-0000-0000-000000000012', 'der erste', 'the first', 'Ordinal (1st)', 'vocabulary', 7),
  ('00000000-0000-0000-0000-000000000012', 'die Hälfte', 'the half', '50%', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Homework: Zahlen 1–100', 'Complete these tasks to reinforce "Zahlen 1–100" (Hallo! Erste Schritte).', 'writing', '[{"description":"Review all vocabulary from \"Zahlen 1–100\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000012', 'In this lesson on "Zahlen 1–100" (Hallo! Erste Schritte), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Zahlen 1–100\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Zahlen 1–100\""}]', ARRAY['"Zahlen 1–100" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Zahlen 1–100 — Speaking 1', 'Practice the key vocabulary and phrases from "Zahlen 1–100" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Zahlen 1–100 — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Zahlen 1–100 — Writing Task 1', 'Write a short text (50-100 words) about zahlen 1–100. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Zahlen 1–100 — Conversation 1', 'Practice a realistic conversation about zahlen 1–100 in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Zahlen 1–100" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Zahlen 1–100 — Conversation 2', 'Practice a realistic conversation about zahlen 1–100 in the context of Hallo! Erste Schritte.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Zahlen 1–100" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Zahlen 1–100 — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Zahlen 1–100". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Zahlen 1–100', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Zahlen 1–100 — Deep Understanding', 'Explain the most important concepts from "Zahlen 1–100" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Zahlen 1–100', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Zahlen 1–100 — Reading Practice', 'This is a A1-level reading passage about zahlen 1–100 in the context of Hallo! Erste Schritte.

Zahlen 1–100 is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Zahlen 1–100 — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Zahlen 1–100" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Einkaufen und Essen', 'informal', false, NULL, 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 6),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 7),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Homework: Der Akkusativ', 'Complete these tasks to reinforce "Der Akkusativ" (Einkaufen und Essen).', 'speaking', '[{"description":"Review all vocabulary from \"Der Akkusativ\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'In this lesson on "Der Akkusativ" (Einkaufen und Essen), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Der Akkusativ\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Der Akkusativ\""}]', ARRAY['"Der Akkusativ" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Der Akkusativ — Speaking 1', 'Practice the key vocabulary and phrases from "Der Akkusativ" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Der Akkusativ — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Der Akkusativ — Writing Task 1', 'Write a short text (50-100 words) about der akkusativ. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Der Akkusativ — Conversation 1', 'Practice a realistic conversation about der akkusativ in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Der Akkusativ" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Der Akkusativ — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Der Akkusativ". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Der Akkusativ', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Der Akkusativ — Deep Understanding', 'Explain the most important concepts from "Der Akkusativ" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Der Akkusativ', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Der Akkusativ — Reading Practice', 'This is a A1-level reading passage about der akkusativ in the context of Einkaufen und Essen.

Der Akkusativ is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Der Akkusativ — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Der Akkusativ" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 1),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 3),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Arbeit und Beruf', 'informal', false, NULL, 5),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Homework: Regelmäßige Verben', 'Complete these tasks to reinforce "Regelmäßige Verben" (Arbeit und Beruf).', 'reading', '[{"description":"Review all vocabulary from \"Regelmäßige Verben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'In this lesson on "Regelmäßige Verben" (Arbeit und Beruf), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Regelmäßige Verben\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Regelmäßige Verben\""}]', ARRAY['"Regelmäßige Verben" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Regelmäßige Verben — Speaking 1', 'Practice the key vocabulary and phrases from "Regelmäßige Verben" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Regelmäßige Verben — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Regelmäßige Verben — Writing Task 1', 'Write a short text (50-100 words) about regelmäßige verben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Regelmäßige Verben — Conversation 1', 'Practice a realistic conversation about regelmäßige verben in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Regelmäßige Verben" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Regelmäßige Verben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Regelmäßige Verben". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Regelmäßige Verben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Regelmäßige Verben — Deep Understanding', 'Explain the most important concepts from "Regelmäßige Verben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Regelmäßige Verben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Regelmäßige Verben — Reading Practice', 'This is a A1-level reading passage about regelmäßige verben in the context of Arbeit und Beruf.

Regelmäßige Verben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Regelmäßige Verben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Regelmäßige Verben" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Homework: Meine Familie', 'Complete these tasks to reinforce "Meine Familie" (Familie und Alltag).', 'grammar', '[{"description":"Review all vocabulary from \"Meine Familie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'In this lesson on "Meine Familie" (Familie und Alltag), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Familie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Familie\""}]', ARRAY['"Meine Familie" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Familie — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Familie" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Familie — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Familie — Writing Task 1', 'Write a short text (50-100 words) about meine familie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Familie — Conversation 1', 'Practice a realistic conversation about meine familie in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Familie — Conversation 2', 'Practice a realistic conversation about meine familie in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Familie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Familie". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Meine Familie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Familie — Deep Understanding', 'Explain the most important concepts from "Meine Familie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Meine Familie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Familie — Reading Practice', 'This is a A1-level reading passage about meine familie in the context of Familie und Alltag.

Meine Familie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Meine Familie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Familie" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 1),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 2),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 3),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 4),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 5),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 6),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 7),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Homework: Einfache Sätze', 'Complete these tasks to reinforce "Einfache Sätze" (Hallo! Erste Schritte).', 'mixed', '[{"description":"Review all vocabulary from \"Einfache Sätze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'In this lesson on "Einfache Sätze" (Hallo! Erste Schritte), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einfache Sätze\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einfache Sätze\""}]', ARRAY['"Einfache Sätze" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Einfache Sätze — Speaking 1', 'Practice the key vocabulary and phrases from "Einfache Sätze" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Einfache Sätze — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Einfache Sätze — Writing Task 1', 'Write a short text (50-100 words) about einfache sätze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Einfache Sätze — Conversation 1', 'Practice a realistic conversation about einfache sätze in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einfache Sätze" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Einfache Sätze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einfache Sätze". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Einfache Sätze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Einfache Sätze — Deep Understanding', 'Explain the most important concepts from "Einfache Sätze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Einfache Sätze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Einfache Sätze — Reading Practice', 'This is a A1-level reading passage about einfache sätze in the context of Hallo! Erste Schritte.

Einfache Sätze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Einfache Sätze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einfache Sätze" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wohnen', 'informal', false, NULL, 5),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wohnen', 'neutral', false, NULL, 6),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wohnen', 'neutral', false, NULL, 7),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wohnen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Homework: Bestimmte und unbestimmte Artikel', 'Complete these tasks to reinforce "Bestimmte und unbestimmte Artikel" (Wohnen).', 'vocabulary', '[{"description":"Review all vocabulary from \"Bestimmte und unbestimmte Artikel\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'In this lesson on "Bestimmte und unbestimmte Artikel" (Wohnen), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Bestimmte und unbestimmte Artikel\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Bestimmte und unbestimmte Artikel\""}]', ARRAY['"Bestimmte und unbestimmte Artikel" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bestimmte und unbestimmte Artikel — Speaking 1', 'Practice the key vocabulary and phrases from "Bestimmte und unbestimmte Artikel" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bestimmte und unbestimmte Artikel — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bestimmte und unbestimmte Artikel — Writing Task 1', 'Write a short text (50-100 words) about bestimmte und unbestimmte artikel. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bestimmte und unbestimmte Artikel — Conversation 1', 'Practice a realistic conversation about bestimmte und unbestimmte artikel in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Bestimmte und unbestimmte Artikel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bestimmte und unbestimmte Artikel — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Bestimmte und unbestimmte Artikel". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Bestimmte und unbestimmte Artikel', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bestimmte und unbestimmte Artikel — Deep Understanding', 'Explain the most important concepts from "Bestimmte und unbestimmte Artikel" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Bestimmte und unbestimmte Artikel', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bestimmte und unbestimmte Artikel — Reading Practice', 'This is a A1-level reading passage about bestimmte und unbestimmte artikel in the context of Wohnen.

Bestimmte und unbestimmte Artikel is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Bestimmte und unbestimmte Artikel — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Bestimmte und unbestimmte Artikel" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 2),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 4),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Reisen und Freizeit', 'informal', false, NULL, 5),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 6),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Homework: Modalverben: können und müssen', 'Complete these tasks to reinforce "Modalverben: können und müssen" (Reisen und Freizeit).', 'writing', '[{"description":"Review all vocabulary from \"Modalverben: können und müssen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'In this lesson on "Modalverben: können und müssen" (Reisen und Freizeit), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modalverben: können und müssen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modalverben: können und müssen\""}]', ARRAY['"Modalverben: können und müssen" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Modalverben: können und müssen — Speaking 1', 'Practice the key vocabulary and phrases from "Modalverben: können und müssen" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Modalverben: können und müssen — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Modalverben: können und müssen — Writing Task 1', 'Write a short text (50-100 words) about modalverben: können und müssen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Modalverben: können und müssen — Conversation 1', 'Practice a realistic conversation about modalverben: können und müssen in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modalverben: können und müssen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Modalverben: können und müssen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modalverben: können und müssen". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Modalverben: können und müssen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Modalverben: können und müssen — Deep Understanding', 'Explain the most important concepts from "Modalverben: können und müssen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Modalverben: können und müssen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Modalverben: können und müssen — Reading Practice', 'This is a A1-level reading passage about modalverben: können und müssen in the context of Reisen und Freizeit.

Modalverben: können und müssen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Modalverben: können und müssen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modalverben: können und müssen" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wo ist der Bahnhof?', 'Where is the train station?', 'أين محطة القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 'تذكرة إلى برلين من فضلك.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wann fährt der Zug ab?', 'When does the train leave?', 'متى يغادر القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Ich möchte ein Zimmer reservieren.', 'I''d like to reserve a room.', 'أريد حجز غرفة.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wie viel kostet das Zimmer pro Nacht?', 'How much is the room per night?', 'كم سعر الغرفة لليلة؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Gibt es einen Parkplatz?', 'Is there a parking lot?', 'هل هناك موقف سيارات؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 6),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wo ist der Ausgang?', 'Where is the exit?', 'أين المخرج؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Zug', 'train', 'Public transport', 'vocabulary', 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Bahnhof', 'train station', 'Where trains stop', 'vocabulary', 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'die Fahrkarte', 'ticket', 'For travel', 'vocabulary', 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Flughafen', 'airport', 'For planes', 'vocabulary', 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'das Hotel', 'hotel', 'For sleeping away', 'vocabulary', 5),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Pass', 'passport', 'For travel ID', 'vocabulary', 6),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Koffer', 'suitcase', 'For packing', 'vocabulary', 7),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'die Reise', 'trip / journey', 'Travel', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Homework: Reisepläne', 'Complete these tasks to reinforce "Reisepläne" (Reisen und Freizeit).', 'speaking', '[{"description":"Review all vocabulary from \"Reisepläne\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'In this lesson on "Reisepläne" (Reisen und Freizeit), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Reisepläne\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Reisepläne\""}]', ARRAY['"Reisepläne" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Reisepläne — Speaking 1', 'Practice the key vocabulary and phrases from "Reisepläne" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Reisepläne — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Reisepläne — Writing Task 1', 'Write a short text (50-100 words) about reisepläne. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Reisepläne — Conversation 1', 'Practice a realistic conversation about reisepläne in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Reisepläne" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Reisepläne — Conversation 2', 'Practice a realistic conversation about reisepläne in the context of Reisen und Freizeit.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Reisepläne" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Reisepläne — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Reisepläne". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Reisepläne', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Reisepläne — Reading Practice', 'This is a A1-level reading passage about reisepläne in the context of Reisen und Freizeit.

Reisepläne is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Reisepläne — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Reisepläne" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Homework: Meine Wohnung', 'Complete these tasks to reinforce "Meine Wohnung" (Wohnen).', 'reading', '[{"description":"Review all vocabulary from \"Meine Wohnung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'In this lesson on "Meine Wohnung" (Wohnen), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Wohnung\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Wohnung\""}]', ARRAY['"Meine Wohnung" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Meine Wohnung — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Wohnung" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Meine Wohnung — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Meine Wohnung — Writing Task 1', 'Write a short text (50-100 words) about meine wohnung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Meine Wohnung — Conversation 1', 'Practice a realistic conversation about meine wohnung in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Wohnung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Meine Wohnung — Conversation 2', 'Practice a realistic conversation about meine wohnung in the context of Wohnen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Wohnung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Meine Wohnung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Wohnung". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Meine Wohnung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Meine Wohnung — Reading Practice', 'This is a A1-level reading passage about meine wohnung in the context of Wohnen.

Meine Wohnung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Meine Wohnung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Wohnung" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Homework: Beruf kennenlernen', 'Complete these tasks to reinforce "Beruf kennenlernen" (Arbeit und Beruf).', 'grammar', '[{"description":"Review all vocabulary from \"Beruf kennenlernen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'In this lesson on "Beruf kennenlernen" (Arbeit und Beruf), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Beruf kennenlernen\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Beruf kennenlernen\""}]', ARRAY['"Beruf kennenlernen" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Beruf kennenlernen — Speaking 1', 'Practice the key vocabulary and phrases from "Beruf kennenlernen" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Beruf kennenlernen — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Beruf kennenlernen — Writing Task 1', 'Write a short text (50-100 words) about beruf kennenlernen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Beruf kennenlernen — Conversation 1', 'Practice a realistic conversation about beruf kennenlernen in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beruf kennenlernen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Beruf kennenlernen — Conversation 2', 'Practice a realistic conversation about beruf kennenlernen in the context of Arbeit und Beruf.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beruf kennenlernen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Beruf kennenlernen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beruf kennenlernen". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Beruf kennenlernen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Beruf kennenlernen — Reading Practice', 'This is a A1-level reading passage about beruf kennenlernen in the context of Arbeit und Beruf.

Beruf kennenlernen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Beruf kennenlernen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Beruf kennenlernen" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Familie und Alltag', 'formal', false, NULL, 1),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Familie und Alltag', 'formal', false, NULL, 2),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Familie und Alltag', 'informal', false, NULL, 4),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Familie und Alltag', 'formal', false, NULL, 5),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Familie und Alltag', 'formal', false, NULL, 6),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Familie und Alltag', 'informal', false, NULL, 7),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 8),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Familie und Alltag', 'neutral', false, NULL, 9),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Familie und Alltag', 'informal', false, NULL, 10);

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
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Homework: Meine Familie vorstellen', 'Complete these tasks to reinforce "Meine Familie vorstellen" (Familie und Alltag).', 'mixed', '[{"description":"Review all vocabulary from \"Meine Familie vorstellen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'In this lesson on "Meine Familie vorstellen" (Familie und Alltag), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Familie vorstellen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Familie vorstellen\""}]', ARRAY['"Meine Familie vorstellen" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Meine Familie vorstellen — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Familie vorstellen" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Meine Familie vorstellen — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Meine Familie vorstellen — Writing Task 1', 'Write a short text (50-100 words) about meine familie vorstellen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Meine Familie vorstellen — Conversation 1', 'Practice a realistic conversation about meine familie vorstellen in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie vorstellen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Meine Familie vorstellen — Conversation 2', 'Practice a realistic conversation about meine familie vorstellen in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie vorstellen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Meine Familie vorstellen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Familie vorstellen". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Meine Familie vorstellen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Meine Familie vorstellen — Deep Understanding', 'Explain the most important concepts from "Meine Familie vorstellen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Meine Familie vorstellen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Meine Familie vorstellen — Reading Practice', 'This is a A1-level reading passage about meine familie vorstellen in the context of Familie und Alltag.

Meine Familie vorstellen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Meine Familie vorstellen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Familie vorstellen" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 1),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 3),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 4),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 6),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 7),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 9),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 10);

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
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Homework: Erste Kontakte', 'Complete these tasks to reinforce "Erste Kontakte" (Hallo! Erste Schritte).', 'vocabulary', '[{"description":"Review all vocabulary from \"Erste Kontakte\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'In this lesson on "Erste Kontakte" (Hallo! Erste Schritte), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Erste Kontakte\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Erste Kontakte\""}]', ARRAY['"Erste Kontakte" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Erste Kontakte — Speaking 1', 'Practice the key vocabulary and phrases from "Erste Kontakte" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Erste Kontakte — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Erste Kontakte — Writing Task 1', 'Write a short text (50-100 words) about erste kontakte. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Erste Kontakte — Conversation 1', 'Practice a realistic conversation about erste kontakte in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Erste Kontakte" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Erste Kontakte — Conversation 2', 'Practice a realistic conversation about erste kontakte in the context of Hallo! Erste Schritte.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Erste Kontakte" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Erste Kontakte — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Erste Kontakte". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Erste Kontakte', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Erste Kontakte — Reading Practice', 'This is a A1-level reading passage about erste kontakte in the context of Hallo! Erste Schritte.

Erste Kontakte is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Erste Kontakte — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Erste Kontakte" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Was kostet das?', 'How much does this cost?', 'كم سعر هذا؟', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 1),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Haben Sie das in einer anderen Größe?', 'Do you have this in another size?', 'هل لديك هذا بمقاس آخر؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Ich möchte nur gucken.', 'I''m just looking.', 'فقط أتفرج.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 3),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Das ist zu teuer.', 'That''s too expensive.', 'هذا غالي جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Gibt es einen Rabatt?', 'Is there a discount?', 'هل هناك خصم؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 5),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Ich nehme es!', 'I''ll take it!', 'سآخذه!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 6),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Kann ich mit Karte zahlen?', 'Can I pay by card?', 'هل يمكنني الدفع بالبطاقة؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'der Preis', 'price', 'How much', 'vocabulary', 1),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'das Geld', 'money', 'For paying', 'vocabulary', 2),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'der Euro', 'Euro', 'Currency', 'vocabulary', 3),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'der Cent', 'Cent', 'Small currency', 'vocabulary', 4),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'das Geschäft', 'shop / store', 'Where you buy', 'vocabulary', 5),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'der Markt', 'market', 'Open market', 'vocabulary', 6),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'die Kasse', 'cash register', 'Pay here', 'vocabulary', 7),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'die Quittung', 'receipt', 'Proof of purchase', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Homework: Auf dem Markt', 'Complete these tasks to reinforce "Auf dem Markt" (Einkaufen und Essen).', 'writing', '[{"description":"Review all vocabulary from \"Auf dem Markt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'In this lesson on "Auf dem Markt" (Einkaufen und Essen), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Auf dem Markt\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Auf dem Markt\""}]', ARRAY['"Auf dem Markt" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Auf dem Markt — Speaking 1', 'Practice the key vocabulary and phrases from "Auf dem Markt" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Auf dem Markt — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Auf dem Markt — Writing Task 1', 'Write a short text (50-100 words) about auf dem markt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Auf dem Markt — Conversation 1', 'Practice a realistic conversation about auf dem markt in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Auf dem Markt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Auf dem Markt — Conversation 2', 'Practice a realistic conversation about auf dem markt in the context of Einkaufen und Essen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Auf dem Markt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Auf dem Markt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Auf dem Markt". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Auf dem Markt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Auf dem Markt — Reading Practice', 'This is a A1-level reading passage about auf dem markt in the context of Einkaufen und Essen.

Auf dem Markt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Auf dem Markt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Auf dem Markt" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Homework: Wohnungssuche', 'Complete these tasks to reinforce "Wohnungssuche" (Wohnen).', 'speaking', '[{"description":"Review all vocabulary from \"Wohnungssuche\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'In this lesson on "Wohnungssuche" (Wohnen), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wohnungssuche\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wohnungssuche\""}]', ARRAY['"Wohnungssuche" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wohnungssuche — Speaking 1', 'Practice the key vocabulary and phrases from "Wohnungssuche" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wohnungssuche — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wohnungssuche — Writing Task 1', 'Write a short text (50-100 words) about wohnungssuche. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wohnungssuche — Conversation 1', 'Practice a realistic conversation about wohnungssuche in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wohnungssuche" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wohnungssuche — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wohnungssuche". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Wohnungssuche', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wohnungssuche — Reading Practice', 'This is a A1-level reading passage about wohnungssuche in the context of Wohnen.

Wohnungssuche is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wohnungssuche — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wohnungssuche" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 1),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 3),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 4),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 6),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 7),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 9),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Homework: Ein Gespräch', 'Complete these tasks to reinforce "Ein Gespräch" (Hallo! Erste Schritte).', 'reading', '[{"description":"Review all vocabulary from \"Ein Gespräch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'In this lesson on "Ein Gespräch" (Hallo! Erste Schritte), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Ein Gespräch\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Ein Gespräch\""}]', ARRAY['"Ein Gespräch" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ein Gespräch — Speaking 1', 'Practice the key vocabulary and phrases from "Ein Gespräch" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ein Gespräch — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ein Gespräch — Writing Task 1', 'Write a short text (50-100 words) about ein gespräch. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ein Gespräch — Conversation 1', 'Practice a realistic conversation about ein gespräch in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Ein Gespräch" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ein Gespräch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Ein Gespräch". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Ein Gespräch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ein Gespräch — Reading Practice', 'This is a A1-level reading passage about ein gespräch in the context of Hallo! Erste Schritte.

Ein Gespräch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ein Gespräch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Ein Gespräch" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 1),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Einkaufen und Essen', 'formal', false, NULL, 3),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 5),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 6),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Homework: Im Restaurant', 'Complete these tasks to reinforce "Im Restaurant" (Einkaufen und Essen).', 'grammar', '[{"description":"Review all vocabulary from \"Im Restaurant\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'In this lesson on "Im Restaurant" (Einkaufen und Essen), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Restaurant\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Restaurant\""}]', ARRAY['"Im Restaurant" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Im Restaurant — Speaking 1', 'Practice the key vocabulary and phrases from "Im Restaurant" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Im Restaurant — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Im Restaurant — Writing Task 1', 'Write a short text (50-100 words) about im restaurant. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Im Restaurant — Conversation 1', 'Practice a realistic conversation about im restaurant in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Im Restaurant — Conversation 2', 'Practice a realistic conversation about im restaurant in the context of Einkaufen und Essen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Im Restaurant — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Im Restaurant', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Im Restaurant — Reading Practice', 'This is a A1-level reading passage about im restaurant in the context of Einkaufen und Essen.

Im Restaurant is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Im Restaurant — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Restaurant" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Arbeit und Beruf', 'formal', false, NULL, 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Beruf', 'informal', false, NULL, 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Arbeit und Beruf', 'informal', false, NULL, 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Arbeit und Beruf', 'formal', false, NULL, 5),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Arbeit und Beruf', 'formal', false, NULL, 6),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Arbeit und Beruf', 'informal', false, NULL, 7),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 8),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 9),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Arbeit und Beruf', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Homework: Was machst du?', 'Complete these tasks to reinforce "Was machst du?" (Arbeit und Beruf).', 'mixed', '[{"description":"Review all vocabulary from \"Was machst du?\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'In this lesson on "Was machst du?" (Arbeit und Beruf), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Was machst du?\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Was machst du?\""}]', ARRAY['"Was machst du?" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Was machst du? — Speaking 1', 'Practice the key vocabulary and phrases from "Was machst du?" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Was machst du? — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Was machst du? — Writing Task 1', 'Write a short text (50-100 words) about was machst du?. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Was machst du? — Conversation 1', 'Practice a realistic conversation about was machst du? in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Was machst du?" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Was machst du? — Conversation 2', 'Practice a realistic conversation about was machst du? in the context of Arbeit und Beruf.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Was machst du?" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Was machst du? — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Was machst du?". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Was machst du?', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Was machst du? — Reading Practice', 'This is a A1-level reading passage about was machst du? in the context of Arbeit und Beruf.

Was machst du? is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Was machst du? — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Was machst du?" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Reisen und Freizeit', 'informal', false, NULL, 1),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 2),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 4),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 5),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 6),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Reisen und Freizeit', 'informal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Homework: Freizeitaktivitäten', 'Complete these tasks to reinforce "Freizeitaktivitäten" (Reisen und Freizeit).', 'vocabulary', '[{"description":"Review all vocabulary from \"Freizeitaktivitäten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'In this lesson on "Freizeitaktivitäten" (Reisen und Freizeit), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Freizeitaktivitäten\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Freizeitaktivitäten\""}]', ARRAY['"Freizeitaktivitäten" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Freizeitaktivitäten — Speaking 1', 'Practice the key vocabulary and phrases from "Freizeitaktivitäten" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Freizeitaktivitäten — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Freizeitaktivitäten — Writing Task 1', 'Write a short text (50-100 words) about freizeitaktivitäten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Freizeitaktivitäten — Conversation 1', 'Practice a realistic conversation about freizeitaktivitäten in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Freizeitaktivitäten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Freizeitaktivitäten — Conversation 2', 'Practice a realistic conversation about freizeitaktivitäten in the context of Reisen und Freizeit.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Freizeitaktivitäten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Freizeitaktivitäten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Freizeitaktivitäten". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Freizeitaktivitäten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Freizeitaktivitäten — Reading Practice', 'This is a A1-level reading passage about freizeitaktivitäten in the context of Reisen und Freizeit.

Freizeitaktivitäten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Freizeitaktivitäten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Freizeitaktivitäten" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Homework: Die Wohnung beschreiben', 'Complete these tasks to reinforce "Die Wohnung beschreiben" (Wohnen).', 'writing', '[{"description":"Review all vocabulary from \"Die Wohnung beschreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'In this lesson on "Die Wohnung beschreiben" (Wohnen), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Die Wohnung beschreiben\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Die Wohnung beschreiben\""}]', ARRAY['"Die Wohnung beschreiben" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Wohnung beschreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Die Wohnung beschreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Wohnung beschreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Wohnung beschreiben — Writing Task 1', 'Write a short text (50-100 words) about die wohnung beschreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Wohnung beschreiben — Conversation 1', 'Practice a realistic conversation about die wohnung beschreiben in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Wohnung beschreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Wohnung beschreiben — Conversation 2', 'Practice a realistic conversation about die wohnung beschreiben in the context of Wohnen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Wohnung beschreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Wohnung beschreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Wohnung beschreiben". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Die Wohnung beschreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Wohnung beschreiben — Reading Practice', 'This is a A1-level reading passage about die wohnung beschreiben in the context of Wohnen.

Die Wohnung beschreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Die Wohnung beschreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Die Wohnung beschreiben" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 1),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 3),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Einkaufen und Essen', 'formal', false, NULL, 5);

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
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Homework: Modul 4 Wiederholung', 'Complete these tasks to reinforce "Modul 4 Wiederholung" (Einkaufen und Essen).', 'speaking', '[{"description":"Review all vocabulary from \"Modul 4 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'In this lesson on "Modul 4 Wiederholung" (Einkaufen und Essen), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 4 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 4 Wiederholung\""}]', ARRAY['"Modul 4 Wiederholung" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Modul 4 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 4 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Modul 4 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Modul 4 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 4 wiederholung in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 4 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Modul 4 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 4 Wiederholung". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Modul 4 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Modul 4 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 4 wiederholung in the context of Einkaufen und Essen.

Modul 4 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Modul 4 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 4 Wiederholung" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 3),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Familie und Alltag', 'informal', false, NULL, 5),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Homework: Possessivartikel und sein/haben', 'Complete these tasks to reinforce "Possessivartikel und sein/haben" (Familie und Alltag).', 'reading', '[{"description":"Review all vocabulary from \"Possessivartikel und sein/haben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'In this lesson on "Possessivartikel und sein/haben" (Familie und Alltag), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Possessivartikel und sein/haben\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Possessivartikel und sein/haben\""}]', ARRAY['"Possessivartikel und sein/haben" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Possessivartikel und sein/haben — Speaking 1', 'Practice the key vocabulary and phrases from "Possessivartikel und sein/haben" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Possessivartikel und sein/haben — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Possessivartikel und sein/haben — Writing Task 1', 'Write a short text (50-100 words) about possessivartikel und sein/haben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Possessivartikel und sein/haben — Conversation 1', 'Practice a realistic conversation about possessivartikel und sein/haben in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Possessivartikel und sein/haben" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Possessivartikel und sein/haben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Possessivartikel und sein/haben". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Possessivartikel und sein/haben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Possessivartikel und sein/haben — Deep Understanding', 'Explain the most important concepts from "Possessivartikel und sein/haben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Possessivartikel und sein/haben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Possessivartikel und sein/haben — Reading Practice', 'This is a A1-level reading passage about possessivartikel und sein/haben in the context of Familie und Alltag.

Possessivartikel und sein/haben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Possessivartikel und sein/haben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Possessivartikel und sein/haben" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Homework: Mein Beruf', 'Complete these tasks to reinforce "Mein Beruf" (Arbeit und Beruf).', 'grammar', '[{"description":"Review all vocabulary from \"Mein Beruf\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'In this lesson on "Mein Beruf" (Arbeit und Beruf), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Beruf\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Beruf\""}]', ARRAY['"Mein Beruf" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mein Beruf — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Beruf" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mein Beruf — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mein Beruf — Writing Task 1', 'Write a short text (50-100 words) about mein beruf. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mein Beruf — Writing Task 2', 'Write 5 questions about mein beruf and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mein Beruf — Conversation 1', 'Practice a realistic conversation about mein beruf in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Beruf" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mein Beruf — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Beruf". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Mein Beruf', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mein Beruf — Reading Practice', 'This is a A1-level reading passage about mein beruf in the context of Arbeit und Beruf.

Mein Beruf is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mein Beruf — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Beruf" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 1),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 3),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 4),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 6),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 7),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 9),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 10);

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
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Homework: Sich vorstellen', 'Complete these tasks to reinforce "Sich vorstellen" (Hallo! Erste Schritte).', 'mixed', '[{"description":"Review all vocabulary from \"Sich vorstellen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'In this lesson on "Sich vorstellen" (Hallo! Erste Schritte), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Sich vorstellen\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Sich vorstellen\""}]', ARRAY['"Sich vorstellen" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Sich vorstellen — Speaking 1', 'Practice the key vocabulary and phrases from "Sich vorstellen" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Sich vorstellen — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Sich vorstellen — Writing Task 1', 'Write a short text (50-100 words) about sich vorstellen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Sich vorstellen — Conversation 1', 'Practice a realistic conversation about sich vorstellen in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Sich vorstellen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Sich vorstellen — Conversation 2', 'Practice a realistic conversation about sich vorstellen in the context of Hallo! Erste Schritte.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Sich vorstellen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Sich vorstellen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sich vorstellen". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Sich vorstellen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Sich vorstellen — Reading Practice', 'This is a A1-level reading passage about sich vorstellen in the context of Hallo! Erste Schritte.

Sich vorstellen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Sich vorstellen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Sich vorstellen" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 4),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5);

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
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Homework: Modul 6 Wiederholung', 'Complete these tasks to reinforce "Modul 6 Wiederholung" (Reisen und Freizeit).', 'vocabulary', '[{"description":"Review all vocabulary from \"Modul 6 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'In this lesson on "Modul 6 Wiederholung" (Reisen und Freizeit), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 6 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 6 Wiederholung\""}]', ARRAY['"Modul 6 Wiederholung" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Modul 6 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 6 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Modul 6 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Modul 6 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 6 wiederholung in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 6 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Modul 6 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 6 Wiederholung". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Modul 6 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Modul 6 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 6 wiederholung in the context of Reisen und Freizeit.

Modul 6 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Modul 6 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 6 Wiederholung" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 1),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 3),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 4),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 6),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 7),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 9),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 10);

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
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Homework: Mein Steckbrief', 'Complete these tasks to reinforce "Mein Steckbrief" (Hallo! Erste Schritte).', 'writing', '[{"description":"Review all vocabulary from \"Mein Steckbrief\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'In this lesson on "Mein Steckbrief" (Hallo! Erste Schritte), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Steckbrief\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Steckbrief\""}]', ARRAY['"Mein Steckbrief" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mein Steckbrief — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Steckbrief" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mein Steckbrief — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mein Steckbrief — Writing Task 1', 'Write a short text (50-100 words) about mein steckbrief. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mein Steckbrief — Writing Task 2', 'Write 5 questions about mein steckbrief and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mein Steckbrief — Conversation 1', 'Practice a realistic conversation about mein steckbrief in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Steckbrief" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mein Steckbrief — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Steckbrief". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Mein Steckbrief', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mein Steckbrief — Reading Practice', 'This is a A1-level reading passage about mein steckbrief in the context of Hallo! Erste Schritte.

Mein Steckbrief is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mein Steckbrief — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Steckbrief" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Homework: Meine Familie', 'Complete these tasks to reinforce "Meine Familie" (Familie und Alltag).', 'speaking', '[{"description":"Review all vocabulary from \"Meine Familie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'In this lesson on "Meine Familie" (Familie und Alltag), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Familie\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Familie\""}]', ARRAY['"Meine Familie" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meine Familie — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Familie" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meine Familie — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meine Familie — Writing Task 1', 'Write a short text (50-100 words) about meine familie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meine Familie — Conversation 1', 'Practice a realistic conversation about meine familie in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meine Familie — Conversation 2', 'Practice a realistic conversation about meine familie in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meine Familie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Familie". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Meine Familie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meine Familie — Reading Practice', 'This is a A1-level reading passage about meine familie in the context of Familie und Alltag.

Meine Familie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Meine Familie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Familie" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wo ist der Bahnhof?', 'Where is the train station?', 'أين محطة القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 'تذكرة إلى برلين من فضلك.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wann fährt der Zug ab?', 'When does the train leave?', 'متى يغادر القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Ich möchte ein Zimmer reservieren.', 'I''d like to reserve a room.', 'أريد حجز غرفة.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 4),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wie viel kostet das Zimmer pro Nacht?', 'How much is the room per night?', 'كم سعر الغرفة لليلة؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Gibt es einen Parkplatz?', 'Is there a parking lot?', 'هل هناك موقف سيارات؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 6),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wo ist der Ausgang?', 'Where is the exit?', 'أين المخرج؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Zug', 'train', 'Public transport', 'vocabulary', 1),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Bahnhof', 'train station', 'Where trains stop', 'vocabulary', 2),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'die Fahrkarte', 'ticket', 'For travel', 'vocabulary', 3),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Flughafen', 'airport', 'For planes', 'vocabulary', 4),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'das Hotel', 'hotel', 'For sleeping away', 'vocabulary', 5),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Pass', 'passport', 'For travel ID', 'vocabulary', 6),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Koffer', 'suitcase', 'For packing', 'vocabulary', 7),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'die Reise', 'trip / journey', 'Travel', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Homework: Am Bahnhof', 'Complete these tasks to reinforce "Am Bahnhof" (Reisen und Freizeit).', 'reading', '[{"description":"Review all vocabulary from \"Am Bahnhof\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'In this lesson on "Am Bahnhof" (Reisen und Freizeit), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Am Bahnhof\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Am Bahnhof\""}]', ARRAY['"Am Bahnhof" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Am Bahnhof — Speaking 1', 'Practice the key vocabulary and phrases from "Am Bahnhof" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Am Bahnhof — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Am Bahnhof — Writing Task 1', 'Write a short text (50-100 words) about am bahnhof. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Am Bahnhof — Conversation 1', 'Practice a realistic conversation about am bahnhof in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Am Bahnhof" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Am Bahnhof — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Am Bahnhof". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Am Bahnhof', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Am Bahnhof — Reading Practice', 'This is a A1-level reading passage about am bahnhof in the context of Reisen und Freizeit.

Am Bahnhof is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Am Bahnhof — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Am Bahnhof" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Homework: Mein Zuhause', 'Complete these tasks to reinforce "Mein Zuhause" (Wohnen).', 'grammar', '[{"description":"Review all vocabulary from \"Mein Zuhause\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'In this lesson on "Mein Zuhause" (Wohnen), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Zuhause\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Zuhause\""}]', ARRAY['"Mein Zuhause" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mein Zuhause — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Zuhause" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mein Zuhause — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mein Zuhause — Writing Task 1', 'Write a short text (50-100 words) about mein zuhause. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mein Zuhause — Writing Task 2', 'Write 5 questions about mein zuhause and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mein Zuhause — Conversation 1', 'Practice a realistic conversation about mein zuhause in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Zuhause" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mein Zuhause — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Zuhause". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Mein Zuhause', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mein Zuhause — Reading Practice', 'This is a A1-level reading passage about mein zuhause in the context of Wohnen.

Mein Zuhause is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mein Zuhause — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Zuhause" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Was kostet das?', 'How much does this cost?', 'كم سعر هذا؟', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 1),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Haben Sie das in einer anderen Größe?', 'Do you have this in another size?', 'هل لديك هذا بمقاس آخر؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Ich möchte nur gucken.', 'I''m just looking.', 'فقط أتفرج.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 3),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Das ist zu teuer.', 'That''s too expensive.', 'هذا غالي جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Gibt es einen Rabatt?', 'Is there a discount?', 'هل هناك خصم؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 5),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Ich nehme es!', 'I''ll take it!', 'سآخذه!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 6),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Kann ich mit Karte zahlen?', 'Can I pay by card?', 'هل يمكنني الدفع بالبطاقة؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Preis', 'price', 'How much', 'vocabulary', 1),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'das Geld', 'money', 'For paying', 'vocabulary', 2),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Euro', 'Euro', 'Currency', 'vocabulary', 3),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Cent', 'Cent', 'Small currency', 'vocabulary', 4),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'das Geschäft', 'shop / store', 'Where you buy', 'vocabulary', 5),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Markt', 'market', 'Open market', 'vocabulary', 6),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'die Kasse', 'cash register', 'Pay here', 'vocabulary', 7),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'die Quittung', 'receipt', 'Proof of purchase', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Homework: Im Supermarkt', 'Complete these tasks to reinforce "Im Supermarkt" (Einkaufen und Essen).', 'mixed', '[{"description":"Review all vocabulary from \"Im Supermarkt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'In this lesson on "Im Supermarkt" (Einkaufen und Essen), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Supermarkt\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Supermarkt\""}]', ARRAY['"Im Supermarkt" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Im Supermarkt — Speaking 1', 'Practice the key vocabulary and phrases from "Im Supermarkt" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Im Supermarkt — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Im Supermarkt — Writing Task 1', 'Write a short text (50-100 words) about im supermarkt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Im Supermarkt — Conversation 1', 'Practice a realistic conversation about im supermarkt in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Supermarkt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Im Supermarkt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Supermarkt". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Im Supermarkt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Im Supermarkt — Reading Practice', 'This is a A1-level reading passage about im supermarkt in the context of Einkaufen und Essen.

Im Supermarkt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Im Supermarkt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Supermarkt" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 1),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 2),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 3),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Arbeit und Beruf', 'formal', false, NULL, 5);

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
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Homework: Modul 5 Wiederholung', 'Complete these tasks to reinforce "Modul 5 Wiederholung" (Arbeit und Beruf).', 'vocabulary', '[{"description":"Review all vocabulary from \"Modul 5 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'In this lesson on "Modul 5 Wiederholung" (Arbeit und Beruf), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 5 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 5 Wiederholung\""}]', ARRAY['"Modul 5 Wiederholung" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Modul 5 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 5 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Modul 5 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Modul 5 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 5 wiederholung in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 5 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Modul 5 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 5 Wiederholung". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Modul 5 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Modul 5 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 5 wiederholung in the context of Arbeit und Beruf.

Modul 5 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Modul 5 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 5 Wiederholung" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Homework: Im Büro', 'Complete these tasks to reinforce "Im Büro" (Arbeit und Beruf).', 'writing', '[{"description":"Review all vocabulary from \"Im Büro\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'In this lesson on "Im Büro" (Arbeit und Beruf), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Büro\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Büro\""}]', ARRAY['"Im Büro" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Im Büro — Speaking 1', 'Practice the key vocabulary and phrases from "Im Büro" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Im Büro — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Im Büro — Writing Task 1', 'Write a short text (50-100 words) about im büro. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Im Büro — Conversation 1', 'Practice a realistic conversation about im büro in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Büro" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Im Büro — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Büro". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Im Büro', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Im Büro — Reading Practice', 'This is a A1-level reading passage about im büro in the context of Arbeit und Beruf.

Im Büro is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Im Büro — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Büro" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Was kostet das?', 'How much does this cost?', 'كم سعر هذا؟', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 1),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Haben Sie das in einer anderen Größe?', 'Do you have this in another size?', 'هل لديك هذا بمقاس آخر؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Ich möchte nur gucken.', 'I''m just looking.', 'فقط أتفرج.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 3),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Das ist zu teuer.', 'That''s too expensive.', 'هذا غالي جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Gibt es einen Rabatt?', 'Is there a discount?', 'هل هناك خصم؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 5),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Ich nehme es!', 'I''ll take it!', 'سآخذه!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 6),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Kann ich mit Karte zahlen?', 'Can I pay by card?', 'هل يمكنني الدفع بالبطاقة؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'der Preis', 'price', 'How much', 'vocabulary', 1),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'das Geld', 'money', 'For paying', 'vocabulary', 2),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'der Euro', 'Euro', 'Currency', 'vocabulary', 3),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'der Cent', 'Cent', 'Small currency', 'vocabulary', 4),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'das Geschäft', 'shop / store', 'Where you buy', 'vocabulary', 5),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'der Markt', 'market', 'Open market', 'vocabulary', 6),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'die Kasse', 'cash register', 'Pay here', 'vocabulary', 7),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'die Quittung', 'receipt', 'Proof of purchase', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Homework: Einkaufsliste', 'Complete these tasks to reinforce "Einkaufsliste" (Einkaufen und Essen).', 'speaking', '[{"description":"Review all vocabulary from \"Einkaufsliste\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'In this lesson on "Einkaufsliste" (Einkaufen und Essen), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einkaufsliste\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einkaufsliste\""}]', ARRAY['"Einkaufsliste" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Einkaufsliste — Speaking 1', 'Practice the key vocabulary and phrases from "Einkaufsliste" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Einkaufsliste — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Einkaufsliste — Writing Task 1', 'Write a short text (50-100 words) about einkaufsliste. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Einkaufsliste — Writing Task 2', 'Write 5 questions about einkaufsliste and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Einkaufsliste — Conversation 1', 'Practice a realistic conversation about einkaufsliste in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einkaufsliste" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Einkaufsliste — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einkaufsliste". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Einkaufsliste', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Einkaufsliste — Reading Practice', 'This is a A1-level reading passage about einkaufsliste in the context of Einkaufen und Essen.

Einkaufsliste is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Einkaufsliste — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einkaufsliste" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 1),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 3),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 4),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5);

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
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Homework: Modul 1 Wiederholung', 'Complete these tasks to reinforce "Modul 1 Wiederholung" (Hallo! Erste Schritte).', 'reading', '[{"description":"Review all vocabulary from \"Modul 1 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'In this lesson on "Modul 1 Wiederholung" (Hallo! Erste Schritte), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 1 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 1 Wiederholung\""}]', ARRAY['"Modul 1 Wiederholung" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Modul 1 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 1 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Modul 1 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Modul 1 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 1 wiederholung in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 1 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Modul 1 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 1 Wiederholung". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Modul 1 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Modul 1 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 1 wiederholung in the context of Hallo! Erste Schritte.

Modul 1 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Modul 1 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 1 Wiederholung" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wo ist der Bahnhof?', 'Where is the train station?', 'أين محطة القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 'تذكرة إلى برلين من فضلك.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wann fährt der Zug ab?', 'When does the train leave?', 'متى يغادر القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Ich möchte ein Zimmer reservieren.', 'I''d like to reserve a room.', 'أريد حجز غرفة.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 4),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wie viel kostet das Zimmer pro Nacht?', 'How much is the room per night?', 'كم سعر الغرفة لليلة؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Gibt es einen Parkplatz?', 'Is there a parking lot?', 'هل هناك موقف سيارات؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 6),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wo ist der Ausgang?', 'Where is the exit?', 'أين المخرج؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Zug', 'train', 'Public transport', 'vocabulary', 1),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Bahnhof', 'train station', 'Where trains stop', 'vocabulary', 2),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'die Fahrkarte', 'ticket', 'For travel', 'vocabulary', 3),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Flughafen', 'airport', 'For planes', 'vocabulary', 4),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'das Hotel', 'hotel', 'For sleeping away', 'vocabulary', 5),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Pass', 'passport', 'For travel ID', 'vocabulary', 6),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Koffer', 'suitcase', 'For packing', 'vocabulary', 7),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'die Reise', 'trip / journey', 'Travel', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Homework: Meine Reise', 'Complete these tasks to reinforce "Meine Reise" (Reisen und Freizeit).', 'grammar', '[{"description":"Review all vocabulary from \"Meine Reise\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'In this lesson on "Meine Reise" (Reisen und Freizeit), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Reise\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Reise\""}]', ARRAY['"Meine Reise" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Meine Reise — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Reise" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Meine Reise — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Meine Reise — Writing Task 1', 'Write a short text (50-100 words) about meine reise. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Meine Reise — Writing Task 2', 'Write 5 questions about meine reise and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Meine Reise — Conversation 1', 'Practice a realistic conversation about meine reise in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Reise" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Meine Reise — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Reise". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Meine Reise', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Meine Reise — Reading Practice', 'This is a A1-level reading passage about meine reise in the context of Reisen und Freizeit.

Meine Reise is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Meine Reise — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Reise" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wohnen', 'formal', false, NULL, 2),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wohnen', 'formal', false, NULL, 5);

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
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Homework: Modul 3 Wiederholung', 'Complete these tasks to reinforce "Modul 3 Wiederholung" (Wohnen).', 'mixed', '[{"description":"Review all vocabulary from \"Modul 3 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'In this lesson on "Modul 3 Wiederholung" (Wohnen), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 3 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 3 Wiederholung\""}]', ARRAY['"Modul 3 Wiederholung" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Modul 3 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 3 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Modul 3 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Modul 3 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 3 wiederholung in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 3 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Modul 3 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 3 Wiederholung". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Modul 3 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Modul 3 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 3 wiederholung in the context of Wohnen.

Modul 3 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Modul 3 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 3 Wiederholung" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Homework: Familienfragen', 'Complete these tasks to reinforce "Familienfragen" (Familie und Alltag).', 'vocabulary', '[{"description":"Review all vocabulary from \"Familienfragen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'In this lesson on "Familienfragen" (Familie und Alltag), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Familienfragen\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Familienfragen\""}]', ARRAY['"Familienfragen" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Familienfragen — Speaking 1', 'Practice the key vocabulary and phrases from "Familienfragen" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Familienfragen — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Familienfragen — Writing Task 1', 'Write a short text (50-100 words) about familienfragen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Familienfragen — Conversation 1', 'Practice a realistic conversation about familienfragen in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Familienfragen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Familienfragen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Familienfragen". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Familienfragen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Familienfragen — Reading Practice', 'This is a A1-level reading passage about familienfragen in the context of Familie und Alltag.

Familienfragen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Familienfragen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Familienfragen" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Homework: Über Familie sprechen', 'Complete these tasks to reinforce "Über Familie sprechen" (Familie und Alltag).', 'writing', '[{"description":"Review all vocabulary from \"Über Familie sprechen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'In this lesson on "Über Familie sprechen" (Familie und Alltag), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Über Familie sprechen\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Über Familie sprechen\""}]', ARRAY['"Über Familie sprechen" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Über Familie sprechen — Speaking 1', 'Practice the key vocabulary and phrases from "Über Familie sprechen" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Über Familie sprechen — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Über Familie sprechen — Writing Task 1', 'Write a short text (50-100 words) about über familie sprechen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Über Familie sprechen — Conversation 1', 'Practice a realistic conversation about über familie sprechen in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Über Familie sprechen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Über Familie sprechen — Conversation 2', 'Practice a realistic conversation about über familie sprechen in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Über Familie sprechen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Über Familie sprechen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Über Familie sprechen". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Über Familie sprechen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Über Familie sprechen — Reading Practice', 'This is a A1-level reading passage about über familie sprechen in the context of Familie und Alltag.

Über Familie sprechen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Über Familie sprechen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Über Familie sprechen" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Homework: Meine Familie beschreiben', 'Complete these tasks to reinforce "Meine Familie beschreiben" (Familie und Alltag).', 'speaking', '[{"description":"Review all vocabulary from \"Meine Familie beschreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'In this lesson on "Meine Familie beschreiben" (Familie und Alltag), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Familie beschreiben\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Familie beschreiben\""}]', ARRAY['"Meine Familie beschreiben" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Meine Familie beschreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Familie beschreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Meine Familie beschreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Meine Familie beschreiben — Writing Task 1', 'Write a short text (50-100 words) about meine familie beschreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Meine Familie beschreiben — Writing Task 2', 'Write 5 questions about meine familie beschreiben and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Meine Familie beschreiben — Conversation 1', 'Practice a realistic conversation about meine familie beschreiben in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie beschreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Meine Familie beschreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Familie beschreiben". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Meine Familie beschreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Meine Familie beschreiben — Reading Practice', 'This is a A1-level reading passage about meine familie beschreiben in the context of Familie und Alltag.

Meine Familie beschreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Meine Familie beschreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Familie beschreiben" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Familie und Alltag', 'formal', false, NULL, 2),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Familie und Alltag', 'neutral', false, NULL, 3),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Familie und Alltag', 'formal', false, NULL, 5);

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
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Homework: Modul 2 Wiederholung', 'Complete these tasks to reinforce "Modul 2 Wiederholung" (Familie und Alltag).', 'reading', '[{"description":"Review all vocabulary from \"Modul 2 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'In this lesson on "Modul 2 Wiederholung" (Familie und Alltag), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 2 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 2 Wiederholung\""}]', ARRAY['"Modul 2 Wiederholung" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Modul 2 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 2 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Modul 2 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Modul 2 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 2 wiederholung in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 2 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Modul 2 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 2 Wiederholung". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Modul 2 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Modul 2 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 2 wiederholung in the context of Familie und Alltag.

Modul 2 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Modul 2 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 2 Wiederholung" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');