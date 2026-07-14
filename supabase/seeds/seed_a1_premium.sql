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
  ('1504373b-231d-488c-a478-55fe577d904f', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('1504373b-231d-488c-a478-55fe577d904f', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('1504373b-231d-488c-a478-55fe577d904f', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('1504373b-231d-488c-a478-55fe577d904f', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('1504373b-231d-488c-a478-55fe577d904f', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('1504373b-231d-488c-a478-55fe577d904f', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('1504373b-231d-488c-a478-55fe577d904f', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('1504373b-231d-488c-a478-55fe577d904f', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('1504373b-231d-488c-a478-55fe577d904f', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('1504373b-231d-488c-a478-55fe577d904f', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('1504373b-231d-488c-a478-55fe577d904f', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('1504373b-231d-488c-a478-55fe577d904f', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('1504373b-231d-488c-a478-55fe577d904f', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('1504373b-231d-488c-a478-55fe577d904f', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('1504373b-231d-488c-a478-55fe577d904f', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'Homework: Die Familie', 'Complete these tasks to reinforce "Die Familie" (Familie und Alltag).', 'writing', '[{"description":"Review all vocabulary from \"Die Familie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'In this lesson on "Die Familie" (Familie und Alltag), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Die Familie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Die Familie\""}]', ARRAY['"Die Familie" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'Die Familie — Speaking 1', 'Practice the key vocabulary and phrases from "Die Familie" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'Die Familie — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'Die Familie — Writing Task 1', 'Write a short text (50-100 words) about die familie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'Die Familie — Conversation 1', 'Practice a realistic conversation about die familie in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'Die Familie — Conversation 2', 'Practice a realistic conversation about die familie in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'Die Familie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Familie". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Die Familie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'Die Familie — Deep Understanding', 'Explain the most important concepts from "Die Familie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Die Familie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'Die Familie — Reading Practice', 'This is a A1-level reading passage about die familie in the context of Familie und Alltag.

Die Familie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('1504373b-231d-488c-a478-55fe577d904f', 'Die Familie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Die Familie" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Homework: Mein Zuhause', 'Complete these tasks to reinforce "Mein Zuhause" (Wohnen).', 'speaking', '[{"description":"Review all vocabulary from \"Mein Zuhause\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'In this lesson on "Mein Zuhause" (Wohnen), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Zuhause\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Zuhause\""}]', ARRAY['"Mein Zuhause" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Mein Zuhause — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Zuhause" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Mein Zuhause — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Mein Zuhause — Writing Task 1', 'Write a short text (50-100 words) about mein zuhause. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Mein Zuhause — Conversation 1', 'Practice a realistic conversation about mein zuhause in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Zuhause" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Mein Zuhause — Conversation 2', 'Practice a realistic conversation about mein zuhause in the context of Wohnen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Zuhause" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Mein Zuhause — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Zuhause". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Mein Zuhause', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Mein Zuhause — Deep Understanding', 'Explain the most important concepts from "Mein Zuhause" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Mein Zuhause', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Mein Zuhause — Reading Practice', 'This is a A1-level reading passage about mein zuhause in the context of Wohnen.

Mein Zuhause is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d30468f9-c786-4d53-a46e-6f8e05b004f3', 'Mein Zuhause — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Zuhause" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 1),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Einkaufen und Essen', 'formal', false, NULL, 3),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 5),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 6),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Homework: Lebensmittel', 'Complete these tasks to reinforce "Lebensmittel" (Einkaufen und Essen).', 'reading', '[{"description":"Review all vocabulary from \"Lebensmittel\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'In this lesson on "Lebensmittel" (Einkaufen und Essen), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Lebensmittel\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Lebensmittel\""}]', ARRAY['"Lebensmittel" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Lebensmittel — Speaking 1', 'Practice the key vocabulary and phrases from "Lebensmittel" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Lebensmittel — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Lebensmittel — Writing Task 1', 'Write a short text (50-100 words) about lebensmittel. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Lebensmittel — Conversation 1', 'Practice a realistic conversation about lebensmittel in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Lebensmittel — Conversation 2', 'Practice a realistic conversation about lebensmittel in the context of Einkaufen und Essen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Lebensmittel — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Lebensmittel". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Lebensmittel', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Lebensmittel — Deep Understanding', 'Explain the most important concepts from "Lebensmittel" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Lebensmittel', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Lebensmittel — Reading Practice', 'This is a A1-level reading passage about lebensmittel in the context of Einkaufen und Essen.

Lebensmittel is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0bad20d0-335d-445a-aea7-8a1bf92f3c41', 'Lebensmittel — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Lebensmittel" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Homework: Berufe', 'Complete these tasks to reinforce "Berufe" (Arbeit und Beruf).', 'grammar', '[{"description":"Review all vocabulary from \"Berufe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'In this lesson on "Berufe" (Arbeit und Beruf), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Berufe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Berufe\""}]', ARRAY['"Berufe" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Berufe — Speaking 1', 'Practice the key vocabulary and phrases from "Berufe" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Berufe — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Berufe — Writing Task 1', 'Write a short text (50-100 words) about berufe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Berufe — Conversation 1', 'Practice a realistic conversation about berufe in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Berufe" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Berufe — Conversation 2', 'Practice a realistic conversation about berufe in the context of Arbeit und Beruf.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Berufe" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Berufe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Berufe". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Berufe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Berufe — Deep Understanding', 'Explain the most important concepts from "Berufe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Berufe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Berufe — Reading Practice', 'This is a A1-level reading passage about berufe in the context of Arbeit und Beruf.

Berufe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9b8d1904-c03a-42b6-9314-3988f774e91e', 'Berufe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Berufe" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Wo ist der Bahnhof?', 'Where is the train station?', 'أين محطة القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 'تذكرة إلى برلين من فضلك.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Wann fährt der Zug ab?', 'When does the train leave?', 'متى يغادر القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Ich möchte ein Zimmer reservieren.', 'I''d like to reserve a room.', 'أريد حجز غرفة.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 4),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Wie viel kostet das Zimmer pro Nacht?', 'How much is the room per night?', 'كم سعر الغرفة لليلة؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Gibt es einen Parkplatz?', 'Is there a parking lot?', 'هل هناك موقف سيارات؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 6),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Wo ist der Ausgang?', 'Where is the exit?', 'أين المخرج؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'der Zug', 'train', 'Public transport', 'vocabulary', 1),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'der Bahnhof', 'train station', 'Where trains stop', 'vocabulary', 2),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'die Fahrkarte', 'ticket', 'For travel', 'vocabulary', 3),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'der Flughafen', 'airport', 'For planes', 'vocabulary', 4),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'das Hotel', 'hotel', 'For sleeping away', 'vocabulary', 5),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'der Pass', 'passport', 'For travel ID', 'vocabulary', 6),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'der Koffer', 'suitcase', 'For packing', 'vocabulary', 7),
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'die Reise', 'trip / journey', 'Travel', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Homework: Reisen', 'Complete these tasks to reinforce "Reisen" (Reisen und Freizeit).', 'mixed', '[{"description":"Review all vocabulary from \"Reisen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'In this lesson on "Reisen" (Reisen und Freizeit), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Reisen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Reisen\""}]', ARRAY['"Reisen" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Reisen — Speaking 1', 'Practice the key vocabulary and phrases from "Reisen" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Reisen — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Reisen — Writing Task 1', 'Write a short text (50-100 words) about reisen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Reisen — Conversation 1', 'Practice a realistic conversation about reisen in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Reisen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Reisen — Conversation 2', 'Practice a realistic conversation about reisen in the context of Reisen und Freizeit.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Reisen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Reisen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Reisen". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Reisen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Reisen — Deep Understanding', 'Explain the most important concepts from "Reisen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Reisen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Reisen — Reading Practice', 'This is a A1-level reading passage about reisen in the context of Reisen und Freizeit.

Reisen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0a5079ef-8c7a-410c-b54c-e2432656bd89', 'Reisen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Reisen" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Familie und Alltag', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Homework: Mein Tagesablauf', 'Complete these tasks to reinforce "Mein Tagesablauf" (Familie und Alltag).', 'vocabulary', '[{"description":"Review all vocabulary from \"Mein Tagesablauf\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'In this lesson on "Mein Tagesablauf" (Familie und Alltag), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Tagesablauf\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Tagesablauf\""}]', ARRAY['"Mein Tagesablauf" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Mein Tagesablauf — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Tagesablauf" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Mein Tagesablauf — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Mein Tagesablauf — Writing Task 1', 'Write a short text (50-100 words) about mein tagesablauf. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Mein Tagesablauf — Conversation 1', 'Practice a realistic conversation about mein tagesablauf in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Tagesablauf" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Mein Tagesablauf — Conversation 2', 'Practice a realistic conversation about mein tagesablauf in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Tagesablauf" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Mein Tagesablauf — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Tagesablauf". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Mein Tagesablauf', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Mein Tagesablauf — Deep Understanding', 'Explain the most important concepts from "Mein Tagesablauf" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Mein Tagesablauf', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Mein Tagesablauf — Reading Practice', 'This is a A1-level reading passage about mein tagesablauf in the context of Familie und Alltag.

Mein Tagesablauf is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('55e1a963-d6d2-42d7-bc85-0600d5374dd2', 'Mein Tagesablauf — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Tagesablauf" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 1),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Einkaufen und Essen', 'formal', false, NULL, 3),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 5),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 6),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Homework: Im Restaurant', 'Complete these tasks to reinforce "Im Restaurant" (Einkaufen und Essen).', 'writing', '[{"description":"Review all vocabulary from \"Im Restaurant\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'In this lesson on "Im Restaurant" (Einkaufen und Essen), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Restaurant\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Restaurant\""}]', ARRAY['"Im Restaurant" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Im Restaurant — Speaking 1', 'Practice the key vocabulary and phrases from "Im Restaurant" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Im Restaurant — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Im Restaurant — Writing Task 1', 'Write a short text (50-100 words) about im restaurant. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Im Restaurant — Conversation 1', 'Practice a realistic conversation about im restaurant in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Im Restaurant — Conversation 2', 'Practice a realistic conversation about im restaurant in the context of Einkaufen und Essen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Im Restaurant — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Im Restaurant', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Im Restaurant — Deep Understanding', 'Explain the most important concepts from "Im Restaurant" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Im Restaurant', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Im Restaurant — Reading Practice', 'This is a A1-level reading passage about im restaurant in the context of Einkaufen und Essen.

Im Restaurant is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('3ee4834e-d2d1-4786-9dda-cd64207845d3', 'Im Restaurant — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Restaurant" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Homework: Möbel und Haushalt', 'Complete these tasks to reinforce "Möbel und Haushalt" (Wohnen).', 'speaking', '[{"description":"Review all vocabulary from \"Möbel und Haushalt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'In this lesson on "Möbel und Haushalt" (Wohnen), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Möbel und Haushalt\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Möbel und Haushalt\""}]', ARRAY['"Möbel und Haushalt" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Möbel und Haushalt — Speaking 1', 'Practice the key vocabulary and phrases from "Möbel und Haushalt" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Möbel und Haushalt — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Möbel und Haushalt — Writing Task 1', 'Write a short text (50-100 words) about möbel und haushalt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Möbel und Haushalt — Conversation 1', 'Practice a realistic conversation about möbel und haushalt in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Möbel und Haushalt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Möbel und Haushalt — Conversation 2', 'Practice a realistic conversation about möbel und haushalt in the context of Wohnen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Möbel und Haushalt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Möbel und Haushalt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Möbel und Haushalt". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Möbel und Haushalt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Möbel und Haushalt — Deep Understanding', 'Explain the most important concepts from "Möbel und Haushalt" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Möbel und Haushalt', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Möbel und Haushalt — Reading Practice', 'This is a A1-level reading passage about möbel und haushalt in the context of Wohnen.

Möbel und Haushalt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('08f6827c-4b05-4bb8-bd6c-98afe1577fb8', 'Möbel und Haushalt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Möbel und Haushalt" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Reisen und Freizeit', 'informal', false, NULL, 1),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 2),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 4),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 5),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 6),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Reisen und Freizeit', 'informal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Homework: Hobbys und Freizeit', 'Complete these tasks to reinforce "Hobbys und Freizeit" (Reisen und Freizeit).', 'reading', '[{"description":"Review all vocabulary from \"Hobbys und Freizeit\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'In this lesson on "Hobbys und Freizeit" (Reisen und Freizeit), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Hobbys und Freizeit\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Hobbys und Freizeit\""}]', ARRAY['"Hobbys und Freizeit" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Hobbys und Freizeit — Speaking 1', 'Practice the key vocabulary and phrases from "Hobbys und Freizeit" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Hobbys und Freizeit — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Hobbys und Freizeit — Writing Task 1', 'Write a short text (50-100 words) about hobbys und freizeit. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Hobbys und Freizeit — Conversation 1', 'Practice a realistic conversation about hobbys und freizeit in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Hobbys und Freizeit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Hobbys und Freizeit — Conversation 2', 'Practice a realistic conversation about hobbys und freizeit in the context of Reisen und Freizeit.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Hobbys und Freizeit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Hobbys und Freizeit — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Hobbys und Freizeit". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Hobbys und Freizeit', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Hobbys und Freizeit — Deep Understanding', 'Explain the most important concepts from "Hobbys und Freizeit" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Hobbys und Freizeit', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Hobbys und Freizeit — Reading Practice', 'This is a A1-level reading passage about hobbys und freizeit in the context of Reisen und Freizeit.

Hobbys und Freizeit is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e681b63d-2241-4b1a-93e8-a50b40c5da98', 'Hobbys und Freizeit — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Hobbys und Freizeit" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Homework: Im Büro', 'Complete these tasks to reinforce "Im Büro" (Arbeit und Beruf).', 'grammar', '[{"description":"Review all vocabulary from \"Im Büro\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'In this lesson on "Im Büro" (Arbeit und Beruf), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Büro\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Büro\""}]', ARRAY['"Im Büro" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Im Büro — Speaking 1', 'Practice the key vocabulary and phrases from "Im Büro" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Im Büro — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Im Büro — Writing Task 1', 'Write a short text (50-100 words) about im büro. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Im Büro — Conversation 1', 'Practice a realistic conversation about im büro in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Büro" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Im Büro — Conversation 2', 'Practice a realistic conversation about im büro in the context of Arbeit und Beruf.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Büro" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Im Büro — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Büro". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Im Büro', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Im Büro — Deep Understanding', 'Explain the most important concepts from "Im Büro" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Im Büro', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Im Büro — Reading Practice', 'This is a A1-level reading passage about im büro in the context of Arbeit und Beruf.

Im Büro is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('6dc734f4-8429-48ae-8d1c-64c3568eb578', 'Im Büro — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Büro" aus dem Modul "Arbeit und Beruf".

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
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('1028897c-1a26-4d12-8c33-c7f82cd213b6', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'Wo ist der Bahnhof?', 'Where is the train station?', 'أين محطة القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 'تذكرة إلى برلين من فضلك.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'Wann fährt der Zug ab?', 'When does the train leave?', 'متى يغادر القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'Ich möchte ein Zimmer reservieren.', 'I''d like to reserve a room.', 'أريد حجز غرفة.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 4),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'Wie viel kostet das Zimmer pro Nacht?', 'How much is the room per night?', 'كم سعر الغرفة لليلة؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'Gibt es einen Parkplatz?', 'Is there a parking lot?', 'هل هناك موقف سيارات؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 6),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'Wo ist der Ausgang?', 'Where is the exit?', 'أين المخرج؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'der Zug', 'train', 'Public transport', 'vocabulary', 1),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'der Bahnhof', 'train station', 'Where trains stop', 'vocabulary', 2),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'die Fahrkarte', 'ticket', 'For travel', 'vocabulary', 3),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'der Flughafen', 'airport', 'For planes', 'vocabulary', 4),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'das Hotel', 'hotel', 'For sleeping away', 'vocabulary', 5),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'der Pass', 'passport', 'For travel ID', 'vocabulary', 6),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'der Koffer', 'suitcase', 'For packing', 'vocabulary', 7),
  ('7013488a-a79f-4ee9-977f-2af77320935c', 'die Reise', 'trip / journey', 'Travel', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('9328cb63-0e99-46fd-987a-1c1947c275e3', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Familie und Alltag', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Homework: Die Uhrzeit', 'Complete these tasks to reinforce "Die Uhrzeit" (Familie und Alltag).', 'vocabulary', '[{"description":"Review all vocabulary from \"Die Uhrzeit\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'In this lesson on "Die Uhrzeit" (Familie und Alltag), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Die Uhrzeit\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Die Uhrzeit\""}]', ARRAY['"Die Uhrzeit" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Die Uhrzeit — Speaking 1', 'Practice the key vocabulary and phrases from "Die Uhrzeit" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Die Uhrzeit — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Die Uhrzeit — Writing Task 1', 'Write a short text (50-100 words) about die uhrzeit. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Die Uhrzeit — Conversation 1', 'Practice a realistic conversation about die uhrzeit in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Uhrzeit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Die Uhrzeit — Conversation 2', 'Practice a realistic conversation about die uhrzeit in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Uhrzeit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Die Uhrzeit — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Uhrzeit". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Die Uhrzeit', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Die Uhrzeit — Deep Understanding', 'Explain the most important concepts from "Die Uhrzeit" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Die Uhrzeit', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Die Uhrzeit — Reading Practice', 'This is a A1-level reading passage about die uhrzeit in the context of Familie und Alltag.

Die Uhrzeit is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('1bf9b0ad-240c-472b-b90f-13b6daad10cc', 'Die Uhrzeit — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Die Uhrzeit" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 1),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Einkaufen und Essen', 'formal', false, NULL, 3),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 5),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 6),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('21249249-dc5d-4a92-a135-d2ab7d5ef7b0', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

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
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 1),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 2),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 3),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Einkaufen und Essen', 'informal', false, NULL, 5),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 6),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 7),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Homework: Der Akkusativ', 'Complete these tasks to reinforce "Der Akkusativ" (Einkaufen und Essen).', 'speaking', '[{"description":"Review all vocabulary from \"Der Akkusativ\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'In this lesson on "Der Akkusativ" (Einkaufen und Essen), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Der Akkusativ\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Der Akkusativ\""}]', ARRAY['"Der Akkusativ" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Der Akkusativ — Speaking 1', 'Practice the key vocabulary and phrases from "Der Akkusativ" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Der Akkusativ — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Der Akkusativ — Writing Task 1', 'Write a short text (50-100 words) about der akkusativ. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Der Akkusativ — Conversation 1', 'Practice a realistic conversation about der akkusativ in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Der Akkusativ" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Der Akkusativ — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Der Akkusativ". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Der Akkusativ', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Der Akkusativ — Deep Understanding', 'Explain the most important concepts from "Der Akkusativ" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Der Akkusativ', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Der Akkusativ — Reading Practice', 'This is a A1-level reading passage about der akkusativ in the context of Einkaufen und Essen.

Der Akkusativ is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('eb21d469-1aca-4c9f-b3b1-d033a228fb41', 'Der Akkusativ — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Der Akkusativ" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 1),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 3),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Arbeit und Beruf', 'informal', false, NULL, 5),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Homework: Regelmäßige Verben', 'Complete these tasks to reinforce "Regelmäßige Verben" (Arbeit und Beruf).', 'reading', '[{"description":"Review all vocabulary from \"Regelmäßige Verben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'In this lesson on "Regelmäßige Verben" (Arbeit und Beruf), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Regelmäßige Verben\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Regelmäßige Verben\""}]', ARRAY['"Regelmäßige Verben" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Regelmäßige Verben — Speaking 1', 'Practice the key vocabulary and phrases from "Regelmäßige Verben" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Regelmäßige Verben — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Regelmäßige Verben — Writing Task 1', 'Write a short text (50-100 words) about regelmäßige verben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Regelmäßige Verben — Conversation 1', 'Practice a realistic conversation about regelmäßige verben in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Regelmäßige Verben" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Regelmäßige Verben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Regelmäßige Verben". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Regelmäßige Verben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Regelmäßige Verben — Deep Understanding', 'Explain the most important concepts from "Regelmäßige Verben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Regelmäßige Verben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Regelmäßige Verben — Reading Practice', 'This is a A1-level reading passage about regelmäßige verben in the context of Arbeit und Beruf.

Regelmäßige Verben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0655f7ae-8286-4c2f-a435-f3eb2ead5d7a', 'Regelmäßige Verben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Regelmäßige Verben" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('d7e43934-370b-4336-8aaf-83120793671f', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Homework: Meine Familie', 'Complete these tasks to reinforce "Meine Familie" (Familie und Alltag).', 'grammar', '[{"description":"Review all vocabulary from \"Meine Familie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'In this lesson on "Meine Familie" (Familie und Alltag), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Familie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Familie\""}]', ARRAY['"Meine Familie" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Familie — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Familie" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Familie — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Familie — Writing Task 1', 'Write a short text (50-100 words) about meine familie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Familie — Conversation 1', 'Practice a realistic conversation about meine familie in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Familie — Conversation 2', 'Practice a realistic conversation about meine familie in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Familie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Familie". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Meine Familie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Familie — Deep Understanding', 'Explain the most important concepts from "Meine Familie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Meine Familie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Familie — Reading Practice', 'This is a A1-level reading passage about meine familie in the context of Familie und Alltag.

Meine Familie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d7e43934-370b-4336-8aaf-83120793671f', 'Meine Familie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Familie" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 1),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 2),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 3),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 4),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 5),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 6),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 7),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Homework: Einfache Sätze', 'Complete these tasks to reinforce "Einfache Sätze" (Hallo! Erste Schritte).', 'mixed', '[{"description":"Review all vocabulary from \"Einfache Sätze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'In this lesson on "Einfache Sätze" (Hallo! Erste Schritte), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einfache Sätze\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einfache Sätze\""}]', ARRAY['"Einfache Sätze" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Einfache Sätze — Speaking 1', 'Practice the key vocabulary and phrases from "Einfache Sätze" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Einfache Sätze — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Einfache Sätze — Writing Task 1', 'Write a short text (50-100 words) about einfache sätze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Einfache Sätze — Conversation 1', 'Practice a realistic conversation about einfache sätze in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einfache Sätze" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Einfache Sätze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einfache Sätze". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Einfache Sätze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Einfache Sätze — Deep Understanding', 'Explain the most important concepts from "Einfache Sätze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Einfache Sätze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Einfache Sätze — Reading Practice', 'This is a A1-level reading passage about einfache sätze in the context of Hallo! Erste Schritte.

Einfache Sätze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('674a3aca-ffa2-47a5-9125-6cb1ce8f5477', 'Einfache Sätze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einfache Sätze" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Wohnen', 'informal', false, NULL, 5),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Wohnen', 'neutral', false, NULL, 6),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Wohnen', 'neutral', false, NULL, 7),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Wohnen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Homework: Bestimmte und unbestimmte Artikel', 'Complete these tasks to reinforce "Bestimmte und unbestimmte Artikel" (Wohnen).', 'vocabulary', '[{"description":"Review all vocabulary from \"Bestimmte und unbestimmte Artikel\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'In this lesson on "Bestimmte und unbestimmte Artikel" (Wohnen), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Bestimmte und unbestimmte Artikel\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Bestimmte und unbestimmte Artikel\""}]', ARRAY['"Bestimmte und unbestimmte Artikel" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Bestimmte und unbestimmte Artikel — Speaking 1', 'Practice the key vocabulary and phrases from "Bestimmte und unbestimmte Artikel" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Bestimmte und unbestimmte Artikel — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Bestimmte und unbestimmte Artikel — Writing Task 1', 'Write a short text (50-100 words) about bestimmte und unbestimmte artikel. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Bestimmte und unbestimmte Artikel — Conversation 1', 'Practice a realistic conversation about bestimmte und unbestimmte artikel in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Bestimmte und unbestimmte Artikel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Bestimmte und unbestimmte Artikel — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Bestimmte und unbestimmte Artikel". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Bestimmte und unbestimmte Artikel', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Bestimmte und unbestimmte Artikel — Deep Understanding', 'Explain the most important concepts from "Bestimmte und unbestimmte Artikel" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Bestimmte und unbestimmte Artikel', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Bestimmte und unbestimmte Artikel — Reading Practice', 'This is a A1-level reading passage about bestimmte und unbestimmte artikel in the context of Wohnen.

Bestimmte und unbestimmte Artikel is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('cb97df7d-45ed-406b-adb1-cd85bf36fd35', 'Bestimmte und unbestimmte Artikel — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Bestimmte und unbestimmte Artikel" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 2),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 4),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Reisen und Freizeit', 'informal', false, NULL, 5),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 6),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Homework: Modalverben: können und müssen', 'Complete these tasks to reinforce "Modalverben: können und müssen" (Reisen und Freizeit).', 'writing', '[{"description":"Review all vocabulary from \"Modalverben: können und müssen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'In this lesson on "Modalverben: können und müssen" (Reisen und Freizeit), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modalverben: können und müssen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modalverben: können und müssen\""}]', ARRAY['"Modalverben: können und müssen" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Modalverben: können und müssen — Speaking 1', 'Practice the key vocabulary and phrases from "Modalverben: können und müssen" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Modalverben: können und müssen — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Modalverben: können und müssen — Writing Task 1', 'Write a short text (50-100 words) about modalverben: können und müssen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Modalverben: können und müssen — Conversation 1', 'Practice a realistic conversation about modalverben: können und müssen in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modalverben: können und müssen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Modalverben: können und müssen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modalverben: können und müssen". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Modalverben: können und müssen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Modalverben: können und müssen — Deep Understanding', 'Explain the most important concepts from "Modalverben: können und müssen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Modalverben: können und müssen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Modalverben: können und müssen — Reading Practice', 'This is a A1-level reading passage about modalverben: können und müssen in the context of Reisen und Freizeit.

Modalverben: können und müssen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('eaa33b93-db26-44d5-9a07-766973052186', 'Modalverben: können und müssen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modalverben: können und müssen" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Wo ist der Bahnhof?', 'Where is the train station?', 'أين محطة القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 'تذكرة إلى برلين من فضلك.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Wann fährt der Zug ab?', 'When does the train leave?', 'متى يغادر القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Ich möchte ein Zimmer reservieren.', 'I''d like to reserve a room.', 'أريد حجز غرفة.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 4),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Wie viel kostet das Zimmer pro Nacht?', 'How much is the room per night?', 'كم سعر الغرفة لليلة؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Gibt es einen Parkplatz?', 'Is there a parking lot?', 'هل هناك موقف سيارات؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 6),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Wo ist der Ausgang?', 'Where is the exit?', 'أين المخرج؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'der Zug', 'train', 'Public transport', 'vocabulary', 1),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'der Bahnhof', 'train station', 'Where trains stop', 'vocabulary', 2),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'die Fahrkarte', 'ticket', 'For travel', 'vocabulary', 3),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'der Flughafen', 'airport', 'For planes', 'vocabulary', 4),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'das Hotel', 'hotel', 'For sleeping away', 'vocabulary', 5),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'der Pass', 'passport', 'For travel ID', 'vocabulary', 6),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'der Koffer', 'suitcase', 'For packing', 'vocabulary', 7),
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'die Reise', 'trip / journey', 'Travel', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Homework: Reisepläne', 'Complete these tasks to reinforce "Reisepläne" (Reisen und Freizeit).', 'speaking', '[{"description":"Review all vocabulary from \"Reisepläne\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'In this lesson on "Reisepläne" (Reisen und Freizeit), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Reisepläne\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Reisepläne\""}]', ARRAY['"Reisepläne" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Reisepläne — Speaking 1', 'Practice the key vocabulary and phrases from "Reisepläne" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Reisepläne — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Reisepläne — Writing Task 1', 'Write a short text (50-100 words) about reisepläne. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Reisepläne — Conversation 1', 'Practice a realistic conversation about reisepläne in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Reisepläne" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Reisepläne — Conversation 2', 'Practice a realistic conversation about reisepläne in the context of Reisen und Freizeit.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Reisepläne" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Reisepläne — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Reisepläne". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Reisepläne', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Reisepläne — Reading Practice', 'This is a A1-level reading passage about reisepläne in the context of Reisen und Freizeit.

Reisepläne is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('515ea949-1ceb-4b37-9af9-e6e331d15ffe', 'Reisepläne — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Reisepläne" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Homework: Meine Wohnung', 'Complete these tasks to reinforce "Meine Wohnung" (Wohnen).', 'reading', '[{"description":"Review all vocabulary from \"Meine Wohnung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'In this lesson on "Meine Wohnung" (Wohnen), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Wohnung\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Wohnung\""}]', ARRAY['"Meine Wohnung" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Meine Wohnung — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Wohnung" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Meine Wohnung — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Meine Wohnung — Writing Task 1', 'Write a short text (50-100 words) about meine wohnung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Meine Wohnung — Conversation 1', 'Practice a realistic conversation about meine wohnung in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Wohnung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Meine Wohnung — Conversation 2', 'Practice a realistic conversation about meine wohnung in the context of Wohnen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Wohnung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Meine Wohnung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Wohnung". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Meine Wohnung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Meine Wohnung — Reading Practice', 'This is a A1-level reading passage about meine wohnung in the context of Wohnen.

Meine Wohnung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('be81c5e3-502a-4b74-92fa-8508730510d2', 'Meine Wohnung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Wohnung" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Homework: Beruf kennenlernen', 'Complete these tasks to reinforce "Beruf kennenlernen" (Arbeit und Beruf).', 'grammar', '[{"description":"Review all vocabulary from \"Beruf kennenlernen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'In this lesson on "Beruf kennenlernen" (Arbeit und Beruf), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Beruf kennenlernen\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Beruf kennenlernen\""}]', ARRAY['"Beruf kennenlernen" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Beruf kennenlernen — Speaking 1', 'Practice the key vocabulary and phrases from "Beruf kennenlernen" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Beruf kennenlernen — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Beruf kennenlernen — Writing Task 1', 'Write a short text (50-100 words) about beruf kennenlernen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Beruf kennenlernen — Conversation 1', 'Practice a realistic conversation about beruf kennenlernen in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beruf kennenlernen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Beruf kennenlernen — Conversation 2', 'Practice a realistic conversation about beruf kennenlernen in the context of Arbeit und Beruf.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beruf kennenlernen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Beruf kennenlernen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beruf kennenlernen". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Beruf kennenlernen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Beruf kennenlernen — Reading Practice', 'This is a A1-level reading passage about beruf kennenlernen in the context of Arbeit und Beruf.

Beruf kennenlernen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('3797507f-fcee-454a-aaf7-efc714a31e75', 'Beruf kennenlernen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Beruf kennenlernen" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Familie und Alltag', 'formal', false, NULL, 1),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Familie und Alltag', 'formal', false, NULL, 2),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Familie und Alltag', 'informal', false, NULL, 4),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Familie und Alltag', 'formal', false, NULL, 5),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Familie und Alltag', 'formal', false, NULL, 6),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Familie und Alltag', 'informal', false, NULL, 7),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 8),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Familie und Alltag', 'neutral', false, NULL, 9),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Familie und Alltag', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Homework: Meine Familie vorstellen', 'Complete these tasks to reinforce "Meine Familie vorstellen" (Familie und Alltag).', 'mixed', '[{"description":"Review all vocabulary from \"Meine Familie vorstellen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'In this lesson on "Meine Familie vorstellen" (Familie und Alltag), you learned key vocabulary concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Familie vorstellen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Familie vorstellen\""}]', ARRAY['"Meine Familie vorstellen" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Meine Familie vorstellen — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Familie vorstellen" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Meine Familie vorstellen — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Meine Familie vorstellen — Writing Task 1', 'Write a short text (50-100 words) about meine familie vorstellen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Meine Familie vorstellen — Conversation 1', 'Practice a realistic conversation about meine familie vorstellen in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie vorstellen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Meine Familie vorstellen — Conversation 2', 'Practice a realistic conversation about meine familie vorstellen in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie vorstellen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Meine Familie vorstellen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Familie vorstellen". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Meine Familie vorstellen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Meine Familie vorstellen — Deep Understanding', 'Explain the most important concepts from "Meine Familie vorstellen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Meine Familie vorstellen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Meine Familie vorstellen — Reading Practice', 'This is a A1-level reading passage about meine familie vorstellen in the context of Familie und Alltag.

Meine Familie vorstellen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('cc52f5e7-86e4-4be3-9bfc-066b11f3bd36', 'Meine Familie vorstellen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Familie vorstellen" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 1),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 3),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 4),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 6),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 7),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 9),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Homework: Erste Kontakte', 'Complete these tasks to reinforce "Erste Kontakte" (Hallo! Erste Schritte).', 'vocabulary', '[{"description":"Review all vocabulary from \"Erste Kontakte\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'In this lesson on "Erste Kontakte" (Hallo! Erste Schritte), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Erste Kontakte\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Erste Kontakte\""}]', ARRAY['"Erste Kontakte" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Erste Kontakte — Speaking 1', 'Practice the key vocabulary and phrases from "Erste Kontakte" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Erste Kontakte — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Erste Kontakte — Writing Task 1', 'Write a short text (50-100 words) about erste kontakte. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Erste Kontakte — Conversation 1', 'Practice a realistic conversation about erste kontakte in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Erste Kontakte" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Erste Kontakte — Conversation 2', 'Practice a realistic conversation about erste kontakte in the context of Hallo! Erste Schritte.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Erste Kontakte" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Erste Kontakte — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Erste Kontakte". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Erste Kontakte', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Erste Kontakte — Reading Practice', 'This is a A1-level reading passage about erste kontakte in the context of Hallo! Erste Schritte.

Erste Kontakte is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8c44b522-b8c6-4393-be40-3518aafca056', 'Erste Kontakte — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Erste Kontakte" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Was kostet das?', 'How much does this cost?', 'كم سعر هذا؟', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 1),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Haben Sie das in einer anderen Größe?', 'Do you have this in another size?', 'هل لديك هذا بمقاس آخر؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Ich möchte nur gucken.', 'I''m just looking.', 'فقط أتفرج.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 3),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Das ist zu teuer.', 'That''s too expensive.', 'هذا غالي جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Gibt es einen Rabatt?', 'Is there a discount?', 'هل هناك خصم؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 5),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Ich nehme es!', 'I''ll take it!', 'سآخذه!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 6),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Kann ich mit Karte zahlen?', 'Can I pay by card?', 'هل يمكنني الدفع بالبطاقة؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'der Preis', 'price', 'How much', 'vocabulary', 1),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'das Geld', 'money', 'For paying', 'vocabulary', 2),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'der Euro', 'Euro', 'Currency', 'vocabulary', 3),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'der Cent', 'Cent', 'Small currency', 'vocabulary', 4),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'das Geschäft', 'shop / store', 'Where you buy', 'vocabulary', 5),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'der Markt', 'market', 'Open market', 'vocabulary', 6),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'die Kasse', 'cash register', 'Pay here', 'vocabulary', 7),
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'die Quittung', 'receipt', 'Proof of purchase', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Homework: Auf dem Markt', 'Complete these tasks to reinforce "Auf dem Markt" (Einkaufen und Essen).', 'writing', '[{"description":"Review all vocabulary from \"Auf dem Markt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'In this lesson on "Auf dem Markt" (Einkaufen und Essen), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Auf dem Markt\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Auf dem Markt\""}]', ARRAY['"Auf dem Markt" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Auf dem Markt — Speaking 1', 'Practice the key vocabulary and phrases from "Auf dem Markt" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Auf dem Markt — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Auf dem Markt — Writing Task 1', 'Write a short text (50-100 words) about auf dem markt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Auf dem Markt — Conversation 1', 'Practice a realistic conversation about auf dem markt in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Auf dem Markt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Auf dem Markt — Conversation 2', 'Practice a realistic conversation about auf dem markt in the context of Einkaufen und Essen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Auf dem Markt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Auf dem Markt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Auf dem Markt". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Auf dem Markt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Auf dem Markt — Reading Practice', 'This is a A1-level reading passage about auf dem markt in the context of Einkaufen und Essen.

Auf dem Markt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('635fdd64-c274-4975-ab86-ee7f5a53e0ba', 'Auf dem Markt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Auf dem Markt" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Homework: Wohnungssuche', 'Complete these tasks to reinforce "Wohnungssuche" (Wohnen).', 'speaking', '[{"description":"Review all vocabulary from \"Wohnungssuche\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'In this lesson on "Wohnungssuche" (Wohnen), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wohnungssuche\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wohnungssuche\""}]', ARRAY['"Wohnungssuche" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Wohnungssuche — Speaking 1', 'Practice the key vocabulary and phrases from "Wohnungssuche" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Wohnungssuche — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Wohnungssuche — Writing Task 1', 'Write a short text (50-100 words) about wohnungssuche. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Wohnungssuche — Conversation 1', 'Practice a realistic conversation about wohnungssuche in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wohnungssuche" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Wohnungssuche — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wohnungssuche". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Wohnungssuche', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Wohnungssuche — Reading Practice', 'This is a A1-level reading passage about wohnungssuche in the context of Wohnen.

Wohnungssuche is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 94, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ff894ff8-67a6-4b39-9b38-673084b3cfbd', 'Wohnungssuche — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wohnungssuche" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('8846ab90-f969-4fe6-ad3a-4f01c9c93528', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 1),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 3),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 4),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 6),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 7),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 9),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Homework: Ein Gespräch', 'Complete these tasks to reinforce "Ein Gespräch" (Hallo! Erste Schritte).', 'reading', '[{"description":"Review all vocabulary from \"Ein Gespräch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'In this lesson on "Ein Gespräch" (Hallo! Erste Schritte), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Ein Gespräch\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Ein Gespräch\""}]', ARRAY['"Ein Gespräch" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Ein Gespräch — Speaking 1', 'Practice the key vocabulary and phrases from "Ein Gespräch" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Ein Gespräch — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Ein Gespräch — Writing Task 1', 'Write a short text (50-100 words) about ein gespräch. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Ein Gespräch — Conversation 1', 'Practice a realistic conversation about ein gespräch in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Ein Gespräch" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Ein Gespräch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Ein Gespräch". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Ein Gespräch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Ein Gespräch — Reading Practice', 'This is a A1-level reading passage about ein gespräch in the context of Hallo! Erste Schritte.

Ein Gespräch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('88b432fb-6695-4ae5-a77f-a240784ee290', 'Ein Gespräch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Ein Gespräch" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 1),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Einkaufen und Essen', 'formal', false, NULL, 3),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 5),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Einkaufen und Essen', 'formal', false, NULL, 6),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Homework: Im Restaurant', 'Complete these tasks to reinforce "Im Restaurant" (Einkaufen und Essen).', 'grammar', '[{"description":"Review all vocabulary from \"Im Restaurant\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'In this lesson on "Im Restaurant" (Einkaufen und Essen), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Restaurant\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Restaurant\""}]', ARRAY['"Im Restaurant" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Im Restaurant — Speaking 1', 'Practice the key vocabulary and phrases from "Im Restaurant" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Im Restaurant — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Im Restaurant — Writing Task 1', 'Write a short text (50-100 words) about im restaurant. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Im Restaurant — Conversation 1', 'Practice a realistic conversation about im restaurant in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Im Restaurant — Conversation 2', 'Practice a realistic conversation about im restaurant in the context of Einkaufen und Essen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Im Restaurant — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Im Restaurant', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Im Restaurant — Reading Practice', 'This is a A1-level reading passage about im restaurant in the context of Einkaufen und Essen.

Im Restaurant is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b71f20fb-b54e-4195-ad90-f8a20b9c4c5b', 'Im Restaurant — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Restaurant" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Arbeit und Beruf', 'formal', false, NULL, 2),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Beruf', 'informal', false, NULL, 3),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Arbeit und Beruf', 'informal', false, NULL, 4),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Arbeit und Beruf', 'formal', false, NULL, 5),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Arbeit und Beruf', 'formal', false, NULL, 6),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Arbeit und Beruf', 'informal', false, NULL, 7),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 8),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 9),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Arbeit und Beruf', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Homework: Was machst du?', 'Complete these tasks to reinforce "Was machst du?" (Arbeit und Beruf).', 'mixed', '[{"description":"Review all vocabulary from \"Was machst du?\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'In this lesson on "Was machst du?" (Arbeit und Beruf), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Was machst du?\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Was machst du?\""}]', ARRAY['"Was machst du?" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Was machst du? — Speaking 1', 'Practice the key vocabulary and phrases from "Was machst du?" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Was machst du? — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Was machst du? — Writing Task 1', 'Write a short text (50-100 words) about was machst du?. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Was machst du? — Conversation 1', 'Practice a realistic conversation about was machst du? in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Was machst du?" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Was machst du? — Conversation 2', 'Practice a realistic conversation about was machst du? in the context of Arbeit und Beruf.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Was machst du?" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Was machst du? — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Was machst du?". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Was machst du?', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Was machst du? — Reading Practice', 'This is a A1-level reading passage about was machst du? in the context of Arbeit und Beruf.

Was machst du? is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('47b1aa16-a16f-41d7-9bad-e7a06376f6e0', 'Was machst du? — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Was machst du?" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Was machst du in deiner Freizeit?', 'What do you do in your free time?', 'ماذا تفعل في وقت فراغك؟', 'Used in Reisen und Freizeit', 'informal', false, NULL, 1),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Ich spiele gerne Fußball.', 'I like playing football.', 'أحب لعب كرة القدم.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 2),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 'هوايتي القراءة.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Ich höre gerne Musik.', 'I like listening to music.', 'أحب الاستماع إلى الموسيقى.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 4),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Wir gehen oft spazieren.', 'We often go for walks.', 'نذهب غالباً للتنزه.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 5),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Sie reist sehr gern.', 'She likes traveling very much.', 'هي تحب السفر كثيراً.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 6),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Hast du ein Hobby?', 'Do you have a hobby?', 'هل لديك هواية؟', 'Used in Reisen und Freizeit', 'informal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Homework: Freizeitaktivitäten', 'Complete these tasks to reinforce "Freizeitaktivitäten" (Reisen und Freizeit).', 'vocabulary', '[{"description":"Review all vocabulary from \"Freizeitaktivitäten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'In this lesson on "Freizeitaktivitäten" (Reisen und Freizeit), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Freizeitaktivitäten\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Freizeitaktivitäten\""}]', ARRAY['"Freizeitaktivitäten" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Freizeitaktivitäten — Speaking 1', 'Practice the key vocabulary and phrases from "Freizeitaktivitäten" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Freizeitaktivitäten — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Freizeitaktivitäten — Writing Task 1', 'Write a short text (50-100 words) about freizeitaktivitäten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Freizeitaktivitäten — Conversation 1', 'Practice a realistic conversation about freizeitaktivitäten in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Freizeitaktivitäten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Freizeitaktivitäten — Conversation 2', 'Practice a realistic conversation about freizeitaktivitäten in the context of Reisen und Freizeit.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Freizeitaktivitäten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Freizeitaktivitäten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Freizeitaktivitäten". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Freizeitaktivitäten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Freizeitaktivitäten — Reading Practice', 'This is a A1-level reading passage about freizeitaktivitäten in the context of Reisen und Freizeit.

Freizeitaktivitäten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('dac0eae0-d3b0-4303-a6bb-d6595ad7be0a', 'Freizeitaktivitäten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Freizeitaktivitäten" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Homework: Die Wohnung beschreiben', 'Complete these tasks to reinforce "Die Wohnung beschreiben" (Wohnen).', 'writing', '[{"description":"Review all vocabulary from \"Die Wohnung beschreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'In this lesson on "Die Wohnung beschreiben" (Wohnen), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Die Wohnung beschreiben\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Die Wohnung beschreiben\""}]', ARRAY['"Die Wohnung beschreiben" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Die Wohnung beschreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Die Wohnung beschreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Die Wohnung beschreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Die Wohnung beschreiben — Writing Task 1', 'Write a short text (50-100 words) about die wohnung beschreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Die Wohnung beschreiben — Conversation 1', 'Practice a realistic conversation about die wohnung beschreiben in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Wohnung beschreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Die Wohnung beschreiben — Conversation 2', 'Practice a realistic conversation about die wohnung beschreiben in the context of Wohnen.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Die Wohnung beschreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Die Wohnung beschreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Wohnung beschreiben". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Die Wohnung beschreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Die Wohnung beschreiben — Reading Practice', 'This is a A1-level reading passage about die wohnung beschreiben in the context of Wohnen.

Die Wohnung beschreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('7815c2ce-a702-469e-ad83-b9ad2ffd0102', 'Die Wohnung beschreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Die Wohnung beschreiben" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 1),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 3),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Einkaufen und Essen', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Homework: Modul 4 Wiederholung', 'Complete these tasks to reinforce "Modul 4 Wiederholung" (Einkaufen und Essen).', 'speaking', '[{"description":"Review all vocabulary from \"Modul 4 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'In this lesson on "Modul 4 Wiederholung" (Einkaufen und Essen), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 4 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 4 Wiederholung\""}]', ARRAY['"Modul 4 Wiederholung" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Modul 4 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 4 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Modul 4 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Modul 4 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 4 wiederholung in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 4 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Modul 4 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 4 Wiederholung". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Modul 4 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Modul 4 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 4 wiederholung in the context of Einkaufen und Essen.

Modul 4 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('74953b53-7cd6-4114-a85f-52c41b8dc430', 'Modul 4 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 4 Wiederholung" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 3),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Familie und Alltag', 'informal', false, NULL, 5),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Homework: Possessivartikel und sein/haben', 'Complete these tasks to reinforce "Possessivartikel und sein/haben" (Familie und Alltag).', 'reading', '[{"description":"Review all vocabulary from \"Possessivartikel und sein/haben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'In this lesson on "Possessivartikel und sein/haben" (Familie und Alltag), you learned key grammar concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Possessivartikel und sein/haben\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Possessivartikel und sein/haben\""}]', ARRAY['"Possessivartikel und sein/haben" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Possessivartikel und sein/haben — Speaking 1', 'Practice the key vocabulary and phrases from "Possessivartikel und sein/haben" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Possessivartikel und sein/haben — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Possessivartikel und sein/haben — Writing Task 1', 'Write a short text (50-100 words) about possessivartikel und sein/haben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Possessivartikel und sein/haben — Conversation 1', 'Practice a realistic conversation about possessivartikel und sein/haben in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Possessivartikel und sein/haben" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Possessivartikel und sein/haben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Possessivartikel und sein/haben". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Possessivartikel und sein/haben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Possessivartikel und sein/haben — Deep Understanding', 'Explain the most important concepts from "Possessivartikel und sein/haben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Possessivartikel und sein/haben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Possessivartikel und sein/haben — Reading Practice', 'This is a A1-level reading passage about possessivartikel und sein/haben in the context of Familie und Alltag.

Possessivartikel und sein/haben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0eb17a2a-0c64-43a1-a2c9-9c2e04e6bc0d', 'Possessivartikel und sein/haben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Possessivartikel und sein/haben" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Homework: Mein Beruf', 'Complete these tasks to reinforce "Mein Beruf" (Arbeit und Beruf).', 'grammar', '[{"description":"Review all vocabulary from \"Mein Beruf\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'In this lesson on "Mein Beruf" (Arbeit und Beruf), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Beruf\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Beruf\""}]', ARRAY['"Mein Beruf" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Mein Beruf — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Beruf" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Mein Beruf — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Mein Beruf — Writing Task 1', 'Write a short text (50-100 words) about mein beruf. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Mein Beruf — Writing Task 2', 'Write 5 questions about mein beruf and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Mein Beruf — Conversation 1', 'Practice a realistic conversation about mein beruf in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Beruf" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Mein Beruf — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Beruf". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Mein Beruf', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Mein Beruf — Reading Practice', 'This is a A1-level reading passage about mein beruf in the context of Arbeit und Beruf.

Mein Beruf is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8585120b-9ac3-4054-a40d-aafc92b27d2d', 'Mein Beruf — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Beruf" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 1),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 3),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 4),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 6),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 7),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 9),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Homework: Sich vorstellen', 'Complete these tasks to reinforce "Sich vorstellen" (Hallo! Erste Schritte).', 'mixed', '[{"description":"Review all vocabulary from \"Sich vorstellen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'In this lesson on "Sich vorstellen" (Hallo! Erste Schritte), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Sich vorstellen\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Sich vorstellen\""}]', ARRAY['"Sich vorstellen" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Sich vorstellen — Speaking 1', 'Practice the key vocabulary and phrases from "Sich vorstellen" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Sich vorstellen — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Sich vorstellen — Writing Task 1', 'Write a short text (50-100 words) about sich vorstellen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Sich vorstellen — Conversation 1', 'Practice a realistic conversation about sich vorstellen in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Sich vorstellen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Sich vorstellen — Conversation 2', 'Practice a realistic conversation about sich vorstellen in the context of Hallo! Erste Schritte.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Sich vorstellen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Sich vorstellen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Sich vorstellen". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Sich vorstellen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Sich vorstellen — Reading Practice', 'This is a A1-level reading passage about sich vorstellen in the context of Hallo! Erste Schritte.

Sich vorstellen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4f96826f-a0f9-4b73-ac53-afb481af88bb', 'Sich vorstellen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Sich vorstellen" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 4),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Homework: Modul 6 Wiederholung', 'Complete these tasks to reinforce "Modul 6 Wiederholung" (Reisen und Freizeit).', 'vocabulary', '[{"description":"Review all vocabulary from \"Modul 6 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'In this lesson on "Modul 6 Wiederholung" (Reisen und Freizeit), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 6 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 6 Wiederholung\""}]', ARRAY['"Modul 6 Wiederholung" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Modul 6 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 6 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Modul 6 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Modul 6 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 6 wiederholung in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 6 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Modul 6 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 6 Wiederholung". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Modul 6 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Modul 6 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 6 wiederholung in the context of Reisen und Freizeit.

Modul 6 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8230cd20-b54a-4554-b807-08abe663a99f', 'Modul 6 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 6 Wiederholung" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 1),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 3),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 4),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 6),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 7),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 8),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 9),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Hallo! Erste Schritte', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Homework: Mein Steckbrief', 'Complete these tasks to reinforce "Mein Steckbrief" (Hallo! Erste Schritte).', 'writing', '[{"description":"Review all vocabulary from \"Mein Steckbrief\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'In this lesson on "Mein Steckbrief" (Hallo! Erste Schritte), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Steckbrief\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Steckbrief\""}]', ARRAY['"Mein Steckbrief" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Mein Steckbrief — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Steckbrief" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Mein Steckbrief — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Mein Steckbrief — Writing Task 1', 'Write a short text (50-100 words) about mein steckbrief. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Mein Steckbrief — Writing Task 2', 'Write 5 questions about mein steckbrief and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Mein Steckbrief — Conversation 1', 'Practice a realistic conversation about mein steckbrief in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Steckbrief" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Mein Steckbrief — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Steckbrief". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Mein Steckbrief', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Mein Steckbrief — Reading Practice', 'This is a A1-level reading passage about mein steckbrief in the context of Hallo! Erste Schritte.

Mein Steckbrief is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0f80930a-0da4-4053-932e-81b774c37430', 'Mein Steckbrief — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Steckbrief" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Homework: Meine Familie', 'Complete these tasks to reinforce "Meine Familie" (Familie und Alltag).', 'speaking', '[{"description":"Review all vocabulary from \"Meine Familie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'In this lesson on "Meine Familie" (Familie und Alltag), you learned key reading concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Familie\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Familie\""}]', ARRAY['"Meine Familie" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Meine Familie — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Familie" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Meine Familie — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Meine Familie — Writing Task 1', 'Write a short text (50-100 words) about meine familie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Meine Familie — Conversation 1', 'Practice a realistic conversation about meine familie in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Meine Familie — Conversation 2', 'Practice a realistic conversation about meine familie in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Meine Familie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Familie". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Meine Familie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Meine Familie — Reading Practice', 'This is a A1-level reading passage about meine familie in the context of Familie und Alltag.

Meine Familie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('cf51aba4-5c6e-44b2-b8b2-751c9a395afa', 'Meine Familie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Familie" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Wo ist der Bahnhof?', 'Where is the train station?', 'أين محطة القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 'تذكرة إلى برلين من فضلك.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Wann fährt der Zug ab?', 'When does the train leave?', 'متى يغادر القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Ich möchte ein Zimmer reservieren.', 'I''d like to reserve a room.', 'أريد حجز غرفة.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 4),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Wie viel kostet das Zimmer pro Nacht?', 'How much is the room per night?', 'كم سعر الغرفة لليلة؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Gibt es einen Parkplatz?', 'Is there a parking lot?', 'هل هناك موقف سيارات؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 6),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Wo ist der Ausgang?', 'Where is the exit?', 'أين المخرج؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'der Zug', 'train', 'Public transport', 'vocabulary', 1),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'der Bahnhof', 'train station', 'Where trains stop', 'vocabulary', 2),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'die Fahrkarte', 'ticket', 'For travel', 'vocabulary', 3),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'der Flughafen', 'airport', 'For planes', 'vocabulary', 4),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'das Hotel', 'hotel', 'For sleeping away', 'vocabulary', 5),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'der Pass', 'passport', 'For travel ID', 'vocabulary', 6),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'der Koffer', 'suitcase', 'For packing', 'vocabulary', 7),
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'die Reise', 'trip / journey', 'Travel', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Homework: Am Bahnhof', 'Complete these tasks to reinforce "Am Bahnhof" (Reisen und Freizeit).', 'reading', '[{"description":"Review all vocabulary from \"Am Bahnhof\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'In this lesson on "Am Bahnhof" (Reisen und Freizeit), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Am Bahnhof\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Am Bahnhof\""}]', ARRAY['"Am Bahnhof" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Am Bahnhof — Speaking 1', 'Practice the key vocabulary and phrases from "Am Bahnhof" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Am Bahnhof — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Am Bahnhof — Writing Task 1', 'Write a short text (50-100 words) about am bahnhof. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Am Bahnhof — Conversation 1', 'Practice a realistic conversation about am bahnhof in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Am Bahnhof" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Am Bahnhof — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Am Bahnhof". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Am Bahnhof', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Am Bahnhof — Reading Practice', 'This is a A1-level reading passage about am bahnhof in the context of Reisen und Freizeit.

Am Bahnhof is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9aa9be98-7f06-4b12-8860-9c0605287a05', 'Am Bahnhof — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Am Bahnhof" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Ich wohne in einer Wohnung.', 'I live in an apartment.', 'أسكن في شقة.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Meine Wohnung hat drei Zimmer.', 'My apartment has three rooms.', 'شقتي فيها ثلاث غرف.', 'Used in Wohnen', 'neutral', false, NULL, 2),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Die Miete ist 800 Euro warm.', 'The rent is 800 euros including utilities.', 'الإيجار 800 يورو شامل التدفئة.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Das Wohnzimmer ist sehr gemütlich.', 'The living room is very cozy.', 'غرفة المعيشة مريحة جداً.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Die Küche ist modern eingerichtet.', 'The kitchen is modernly furnished.', 'المطبخ مجهز بشكل حديث.', 'Used in Wohnen', 'neutral', false, NULL, 5),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Wir suchen eine neue Wohnung.', 'We are looking for a new apartment.', 'نبحث عن شقة جديدة.', 'Used in Wohnen', 'neutral', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'das Zimmer', 'room', 'A room in a house', 'vocabulary', 1),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'die Küche', 'kitchen', 'Where you cook', 'vocabulary', 2),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'das Bad', 'bathroom', 'Short for Badezimmer', 'vocabulary', 3),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'das Schlafzimmer', 'bedroom', 'Where you sleep', 'vocabulary', 4),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'der Tisch', 'table', 'Furniture', 'vocabulary', 5),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'der Stuhl', 'chair', 'To sit on', 'vocabulary', 6),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'das Bett', 'bed', 'For sleeping', 'vocabulary', 7),
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'der Schrank', 'wardrobe', 'For clothes', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Homework: Mein Zuhause', 'Complete these tasks to reinforce "Mein Zuhause" (Wohnen).', 'grammar', '[{"description":"Review all vocabulary from \"Mein Zuhause\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'In this lesson on "Mein Zuhause" (Wohnen), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Zuhause\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Zuhause\""}]', ARRAY['"Mein Zuhause" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Mein Zuhause — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Zuhause" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Mein Zuhause — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Mein Zuhause — Writing Task 1', 'Write a short text (50-100 words) about mein zuhause. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Mein Zuhause — Writing Task 2', 'Write 5 questions about mein zuhause and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Mein Zuhause — Conversation 1', 'Practice a realistic conversation about mein zuhause in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Zuhause" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Mein Zuhause — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Zuhause". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Mein Zuhause', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Mein Zuhause — Reading Practice', 'This is a A1-level reading passage about mein zuhause in the context of Wohnen.

Mein Zuhause is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 96, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('1e99c683-777e-4af4-921d-24b0dec9e44e', 'Mein Zuhause — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Zuhause" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Was kostet das?', 'How much does this cost?', 'كم سعر هذا؟', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 1),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Haben Sie das in einer anderen Größe?', 'Do you have this in another size?', 'هل لديك هذا بمقاس آخر؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Ich möchte nur gucken.', 'I''m just looking.', 'فقط أتفرج.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 3),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Das ist zu teuer.', 'That''s too expensive.', 'هذا غالي جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Gibt es einen Rabatt?', 'Is there a discount?', 'هل هناك خصم؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 5),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Ich nehme es!', 'I''ll take it!', 'سآخذه!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 6),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Kann ich mit Karte zahlen?', 'Can I pay by card?', 'هل يمكنني الدفع بالبطاقة؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'der Preis', 'price', 'How much', 'vocabulary', 1),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'das Geld', 'money', 'For paying', 'vocabulary', 2),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'der Euro', 'Euro', 'Currency', 'vocabulary', 3),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'der Cent', 'Cent', 'Small currency', 'vocabulary', 4),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'das Geschäft', 'shop / store', 'Where you buy', 'vocabulary', 5),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'der Markt', 'market', 'Open market', 'vocabulary', 6),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'die Kasse', 'cash register', 'Pay here', 'vocabulary', 7),
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'die Quittung', 'receipt', 'Proof of purchase', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Homework: Im Supermarkt', 'Complete these tasks to reinforce "Im Supermarkt" (Einkaufen und Essen).', 'mixed', '[{"description":"Review all vocabulary from \"Im Supermarkt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'In this lesson on "Im Supermarkt" (Einkaufen und Essen), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Supermarkt\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Supermarkt\""}]', ARRAY['"Im Supermarkt" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Im Supermarkt — Speaking 1', 'Practice the key vocabulary and phrases from "Im Supermarkt" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Im Supermarkt — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Im Supermarkt — Writing Task 1', 'Write a short text (50-100 words) about im supermarkt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Im Supermarkt — Conversation 1', 'Practice a realistic conversation about im supermarkt in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Supermarkt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Im Supermarkt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Supermarkt". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Im Supermarkt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Im Supermarkt — Reading Practice', 'This is a A1-level reading passage about im supermarkt in the context of Einkaufen und Essen.

Im Supermarkt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('78a03a98-57ff-4bb1-a5dd-781072044e38', 'Im Supermarkt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Supermarkt" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 1),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 2),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 3),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Arbeit und Beruf', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Homework: Modul 5 Wiederholung', 'Complete these tasks to reinforce "Modul 5 Wiederholung" (Arbeit und Beruf).', 'vocabulary', '[{"description":"Review all vocabulary from \"Modul 5 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'In this lesson on "Modul 5 Wiederholung" (Arbeit und Beruf), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 5 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 5 Wiederholung\""}]', ARRAY['"Modul 5 Wiederholung" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Modul 5 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 5 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Modul 5 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Modul 5 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 5 wiederholung in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 5 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Modul 5 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 5 Wiederholung". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Modul 5 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Modul 5 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 5 wiederholung in the context of Arbeit und Beruf.

Modul 5 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('33cac9a0-80c9-4fbf-9fbf-d06d999f42eb', 'Modul 5 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 5 Wiederholung" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 1),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 2),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Beruf', 'formal', false, NULL, 3),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 4),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 5),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 6),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Beruf', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Homework: Im Büro', 'Complete these tasks to reinforce "Im Büro" (Arbeit und Beruf).', 'writing', '[{"description":"Review all vocabulary from \"Im Büro\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'In this lesson on "Im Büro" (Arbeit und Beruf), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Büro\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Büro\""}]', ARRAY['"Im Büro" core vocabulary', 'Arbeit und Beruf key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Im Büro — Speaking 1', 'Practice the key vocabulary and phrases from "Im Büro" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Im Büro — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Beruf. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Beruf', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Im Büro — Writing Task 1', 'Write a short text (50-100 words) about im büro. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Im Büro — Conversation 1', 'Practice a realistic conversation about im büro in the context of Arbeit und Beruf.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Büro" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Im Büro — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Büro". The dialogue should be realistic and related to Arbeit und Beruf.', 'Creative practice for Im Büro', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Im Büro — Reading Practice', 'This is a A1-level reading passage about im büro in the context of Arbeit und Beruf.

Im Büro is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Beruf" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c2c152de-cefc-4ccb-be55-dca477cc3ab5', 'Im Büro — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Büro" aus dem Modul "Arbeit und Beruf".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Beruf');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Was kostet das?', 'How much does this cost?', 'كم سعر هذا؟', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 1),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Haben Sie das in einer anderen Größe?', 'Do you have this in another size?', 'هل لديك هذا بمقاس آخر؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 2),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Ich möchte nur gucken.', 'I''m just looking.', 'فقط أتفرج.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 3),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Das ist zu teuer.', 'That''s too expensive.', 'هذا غالي جداً.', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 4),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Gibt es einen Rabatt?', 'Is there a discount?', 'هل هناك خصم؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 5),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Ich nehme es!', 'I''ll take it!', 'سآخذه!', 'Used in Einkaufen und Essen', 'neutral', false, NULL, 6),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Kann ich mit Karte zahlen?', 'Can I pay by card?', 'هل يمكنني الدفع بالبطاقة؟', 'Used in Einkaufen und Essen', 'formal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'der Preis', 'price', 'How much', 'vocabulary', 1),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'das Geld', 'money', 'For paying', 'vocabulary', 2),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'der Euro', 'Euro', 'Currency', 'vocabulary', 3),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'der Cent', 'Cent', 'Small currency', 'vocabulary', 4),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'das Geschäft', 'shop / store', 'Where you buy', 'vocabulary', 5),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'der Markt', 'market', 'Open market', 'vocabulary', 6),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'die Kasse', 'cash register', 'Pay here', 'vocabulary', 7),
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'die Quittung', 'receipt', 'Proof of purchase', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Homework: Einkaufsliste', 'Complete these tasks to reinforce "Einkaufsliste" (Einkaufen und Essen).', 'speaking', '[{"description":"Review all vocabulary from \"Einkaufsliste\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'In this lesson on "Einkaufsliste" (Einkaufen und Essen), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einkaufsliste\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einkaufsliste\""}]', ARRAY['"Einkaufsliste" core vocabulary', 'Einkaufen und Essen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Einkaufsliste — Speaking 1', 'Practice the key vocabulary and phrases from "Einkaufsliste" aloud. Focus on correct pronunciation.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Einkaufsliste — Speaking 2', 'Role-play: Imagine you are in a situation related to Einkaufen und Essen. Have a dialogue with a partner.', 'Speaking practice for Einkaufen und Essen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Einkaufsliste — Writing Task 1', 'Write a short text (50-100 words) about einkaufsliste. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Einkaufsliste — Writing Task 2', 'Write 5 questions about einkaufsliste and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Einkaufsliste — Conversation 1', 'Practice a realistic conversation about einkaufsliste in the context of Einkaufen und Essen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einkaufsliste" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Einkaufsliste — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einkaufsliste". The dialogue should be realistic and related to Einkaufen und Essen.', 'Creative practice for Einkaufsliste', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Einkaufsliste — Reading Practice', 'This is a A1-level reading passage about einkaufsliste in the context of Einkaufen und Essen.

Einkaufsliste is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Einkaufen und Essen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('70f6d652-fbef-4ad9-9774-a8e61dc3736a', 'Einkaufsliste — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einkaufsliste" aus dem Modul "Einkaufen und Essen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Einkaufen und Essen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 1),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 2),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 3),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Hallo! Erste Schritte', 'neutral', false, NULL, 4),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Hallo! Erste Schritte', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Homework: Modul 1 Wiederholung', 'Complete these tasks to reinforce "Modul 1 Wiederholung" (Hallo! Erste Schritte).', 'reading', '[{"description":"Review all vocabulary from \"Modul 1 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'In this lesson on "Modul 1 Wiederholung" (Hallo! Erste Schritte), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 1 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 1 Wiederholung\""}]', ARRAY['"Modul 1 Wiederholung" core vocabulary', 'Hallo! Erste Schritte key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Modul 1 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 1 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Modul 1 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Hallo! Erste Schritte. Have a dialogue with a partner.', 'Speaking practice for Hallo! Erste Schritte', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Modul 1 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 1 wiederholung in the context of Hallo! Erste Schritte.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 1 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Modul 1 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 1 Wiederholung". The dialogue should be realistic and related to Hallo! Erste Schritte.', 'Creative practice for Modul 1 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Modul 1 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 1 wiederholung in the context of Hallo! Erste Schritte.

Modul 1 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Hallo! Erste Schritte" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('6d1d52d5-1e46-48df-bebb-d4c596d0c20e', 'Modul 1 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 1 Wiederholung" aus dem Modul "Hallo! Erste Schritte".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Hallo! Erste Schritte');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Wo ist der Bahnhof?', 'Where is the train station?', 'أين محطة القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 1),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 'تذكرة إلى برلين من فضلك.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 2),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Wann fährt der Zug ab?', 'When does the train leave?', 'متى يغادر القطار؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 3),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Ich möchte ein Zimmer reservieren.', 'I''d like to reserve a room.', 'أريد حجز غرفة.', 'Used in Reisen und Freizeit', 'formal', false, NULL, 4),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Wie viel kostet das Zimmer pro Nacht?', 'How much is the room per night?', 'كم سعر الغرفة لليلة؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 5),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Gibt es einen Parkplatz?', 'Is there a parking lot?', 'هل هناك موقف سيارات؟', 'Used in Reisen und Freizeit', 'formal', false, NULL, 6),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Wo ist der Ausgang?', 'Where is the exit?', 'أين المخرج؟', 'Used in Reisen und Freizeit', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'der Zug', 'train', 'Public transport', 'vocabulary', 1),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'der Bahnhof', 'train station', 'Where trains stop', 'vocabulary', 2),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'die Fahrkarte', 'ticket', 'For travel', 'vocabulary', 3),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'der Flughafen', 'airport', 'For planes', 'vocabulary', 4),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'das Hotel', 'hotel', 'For sleeping away', 'vocabulary', 5),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'der Pass', 'passport', 'For travel ID', 'vocabulary', 6),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'der Koffer', 'suitcase', 'For packing', 'vocabulary', 7),
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'die Reise', 'trip / journey', 'Travel', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Homework: Meine Reise', 'Complete these tasks to reinforce "Meine Reise" (Reisen und Freizeit).', 'grammar', '[{"description":"Review all vocabulary from \"Meine Reise\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'In this lesson on "Meine Reise" (Reisen und Freizeit), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Reise\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Reise\""}]', ARRAY['"Meine Reise" core vocabulary', 'Reisen und Freizeit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Meine Reise — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Reise" aloud. Focus on correct pronunciation.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Meine Reise — Speaking 2', 'Role-play: Imagine you are in a situation related to Reisen und Freizeit. Have a dialogue with a partner.', 'Speaking practice for Reisen und Freizeit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Meine Reise — Writing Task 1', 'Write a short text (50-100 words) about meine reise. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Meine Reise — Writing Task 2', 'Write 5 questions about meine reise and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Meine Reise — Conversation 1', 'Practice a realistic conversation about meine reise in the context of Reisen und Freizeit.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Reise" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Meine Reise — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Reise". The dialogue should be realistic and related to Reisen und Freizeit.', 'Creative practice for Meine Reise', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Meine Reise — Reading Practice', 'This is a A1-level reading passage about meine reise in the context of Reisen und Freizeit.

Meine Reise is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Reisen und Freizeit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('1159d19f-8447-43fd-8bbc-db4667681781', 'Meine Reise — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Reise" aus dem Modul "Reisen und Freizeit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Reisen und Freizeit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Wohnen', 'neutral', false, NULL, 1),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Wohnen', 'formal', false, NULL, 2),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Wohnen', 'neutral', false, NULL, 3),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Wohnen', 'neutral', false, NULL, 4),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Wohnen', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Homework: Modul 3 Wiederholung', 'Complete these tasks to reinforce "Modul 3 Wiederholung" (Wohnen).', 'mixed', '[{"description":"Review all vocabulary from \"Modul 3 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'In this lesson on "Modul 3 Wiederholung" (Wohnen), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 3 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 3 Wiederholung\""}]', ARRAY['"Modul 3 Wiederholung" core vocabulary', 'Wohnen key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Modul 3 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 3 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Modul 3 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Wohnen. Have a dialogue with a partner.', 'Speaking practice for Wohnen', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Modul 3 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 3 wiederholung in the context of Wohnen.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 3 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Modul 3 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 3 Wiederholung". The dialogue should be realistic and related to Wohnen.', 'Creative practice for Modul 3 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Modul 3 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 3 wiederholung in the context of Wohnen.

Modul 3 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wohnen" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('53b41073-7b4f-4b0e-94cc-37dba9d6ff74', 'Modul 3 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 3 Wiederholung" aus dem Modul "Wohnen".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wohnen');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Homework: Familienfragen', 'Complete these tasks to reinforce "Familienfragen" (Familie und Alltag).', 'vocabulary', '[{"description":"Review all vocabulary from \"Familienfragen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'In this lesson on "Familienfragen" (Familie und Alltag), you learned key listening concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Familienfragen\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Familienfragen\""}]', ARRAY['"Familienfragen" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Familienfragen — Speaking 1', 'Practice the key vocabulary and phrases from "Familienfragen" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Familienfragen — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Familienfragen — Writing Task 1', 'Write a short text (50-100 words) about familienfragen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Familienfragen — Conversation 1', 'Practice a realistic conversation about familienfragen in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Familienfragen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Familienfragen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Familienfragen". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Familienfragen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Familienfragen — Reading Practice', 'This is a A1-level reading passage about familienfragen in the context of Familie und Alltag.

Familienfragen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('445d4bd4-7857-45b9-abfd-187b06ee1b5f', 'Familienfragen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Familienfragen" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Homework: Über Familie sprechen', 'Complete these tasks to reinforce "Über Familie sprechen" (Familie und Alltag).', 'writing', '[{"description":"Review all vocabulary from \"Über Familie sprechen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'In this lesson on "Über Familie sprechen" (Familie und Alltag), you learned key speaking concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Über Familie sprechen\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Über Familie sprechen\""}]', ARRAY['"Über Familie sprechen" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Über Familie sprechen — Speaking 1', 'Practice the key vocabulary and phrases from "Über Familie sprechen" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Über Familie sprechen — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Über Familie sprechen — Writing Task 1', 'Write a short text (50-100 words) about über familie sprechen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Über Familie sprechen — Conversation 1', 'Practice a realistic conversation about über familie sprechen in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Über Familie sprechen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Über Familie sprechen — Conversation 2', 'Practice a realistic conversation about über familie sprechen in the context of Familie und Alltag.', 'Customer', 'Assistant', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Über Familie sprechen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Über Familie sprechen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Über Familie sprechen". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Über Familie sprechen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Über Familie sprechen — Reading Practice', 'This is a A1-level reading passage about über familie sprechen in the context of Familie und Alltag.

Über Familie sprechen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('17b293ad-d7a8-4c2d-9fd3-e73a920dbc84', 'Über Familie sprechen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Über Familie sprechen" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Familie und Alltag', 'neutral', false, NULL, 2),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Familie und Alltag', 'informal', false, NULL, 3),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Familie und Alltag', 'neutral', false, NULL, 5),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Familie und Alltag', 'neutral', false, NULL, 6),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Familie und Alltag', 'neutral', false, NULL, 7),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Familie und Alltag', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Homework: Meine Familie beschreiben', 'Complete these tasks to reinforce "Meine Familie beschreiben" (Familie und Alltag).', 'speaking', '[{"description":"Review all vocabulary from \"Meine Familie beschreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'In this lesson on "Meine Familie beschreiben" (Familie und Alltag), you learned key writing concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Meine Familie beschreiben\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Meine Familie beschreiben\""}]', ARRAY['"Meine Familie beschreiben" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Meine Familie beschreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Meine Familie beschreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Meine Familie beschreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Meine Familie beschreiben — Writing Task 1', 'Write a short text (50-100 words) about meine familie beschreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Meine Familie beschreiben — Writing Task 2', 'Write 5 questions about meine familie beschreiben and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Meine Familie beschreiben — Conversation 1', 'Practice a realistic conversation about meine familie beschreiben in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Meine Familie beschreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Meine Familie beschreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Familie beschreiben". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Meine Familie beschreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Meine Familie beschreiben — Reading Practice', 'This is a A1-level reading passage about meine familie beschreiben in the context of Familie und Alltag.

Meine Familie beschreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9ff67cd4-055b-4bfb-ac28-1f1ad4146824', 'Meine Familie beschreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Meine Familie beschreiben" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Familie und Alltag', 'neutral', false, NULL, 1),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Familie und Alltag', 'formal', false, NULL, 2),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Familie und Alltag', 'neutral', false, NULL, 3),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Familie und Alltag', 'neutral', false, NULL, 4),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Familie und Alltag', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Homework: Modul 2 Wiederholung', 'Complete these tasks to reinforce "Modul 2 Wiederholung" (Familie und Alltag).', 'reading', '[{"description":"Review all vocabulary from \"Modul 2 Wiederholung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'In this lesson on "Modul 2 Wiederholung" (Familie und Alltag), you learned key review concepts at A1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modul 2 Wiederholung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modul 2 Wiederholung\""}]', ARRAY['"Modul 2 Wiederholung" core vocabulary', 'Familie und Alltag key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Modul 2 Wiederholung — Speaking 1', 'Practice the key vocabulary and phrases from "Modul 2 Wiederholung" aloud. Focus on correct pronunciation.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Modul 2 Wiederholung — Speaking 2', 'Role-play: Imagine you are in a situation related to Familie und Alltag. Have a dialogue with a partner.', 'Speaking practice for Familie und Alltag', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Modul 2 Wiederholung — Conversation 1', 'Practice a realistic conversation about modul 2 wiederholung in the context of Familie und Alltag.', 'Student', 'Teacher', 'You are a student at A1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modul 2 Wiederholung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Modul 2 Wiederholung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modul 2 Wiederholung". The dialogue should be realistic and related to Familie und Alltag.', 'Creative practice for Modul 2 Wiederholung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Modul 2 Wiederholung — Reading Practice', 'This is a A1-level reading passage about modul 2 wiederholung in the context of Familie und Alltag.

Modul 2 Wiederholung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Familie und Alltag" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('2a28d2e5-4810-4756-b173-214d0ef70aee', 'Modul 2 Wiederholung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modul 2 Wiederholung" aus dem Modul "Familie und Alltag".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Familie und Alltag');