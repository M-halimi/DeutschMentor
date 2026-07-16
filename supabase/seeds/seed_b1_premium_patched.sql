-- ============================================================
-- PREMIUM CONTENT SEED — Level B1
-- Generated for 72 lessons across 12 modules
-- ============================================================


INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000010', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000010', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000010', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000010', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000010', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000010', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000010', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 10);

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
  ('00000000-0000-0000-0000-000000000010', 'Homework: Gesundheit und Krankheit', 'Complete these tasks to reinforce "Gesundheit und Krankheit" (Gesundheit und ErnÃ¤hrung).', 'vocabulary', '[{"description":"Review all vocabulary from \"Gesundheit und Krankheit\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000010', 'In this lesson on "Gesundheit und Krankheit" (Gesundheit und ErnÃ¤hrung), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Gesundheit und Krankheit\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Gesundheit und Krankheit\""}]', ARRAY['"Gesundheit und Krankheit" core vocabulary', 'Gesundheit und ErnÃ¤hrung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Gesundheit und Krankheit — Speaking 1', 'Practice the key vocabulary and phrases from "Gesundheit und Krankheit" aloud. Focus on correct pronunciation.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Gesundheit und Krankheit — Speaking 2', 'Role-play: Imagine you are in a situation related to Gesundheit und ErnÃ¤hrung. Have a dialogue with a partner.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Gesundheit und Krankheit — Writing Task 1', 'Write a short text (50-100 words) about gesundheit und krankheit. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Gesundheit und Krankheit — Conversation 1', 'Practice a realistic conversation about gesundheit und krankheit in the context of Gesundheit und ErnÃ¤hrung.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesundheit und Krankheit" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Gesundheit und Krankheit — Conversation 2', 'Practice a realistic conversation about gesundheit und krankheit in the context of Gesundheit und ErnÃ¤hrung.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesundheit und Krankheit" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Gesundheit und Krankheit — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesundheit und Krankheit". The dialogue should be realistic and related to Gesundheit und ErnÃ¤hrung.', 'Creative practice for Gesundheit und Krankheit', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Gesundheit und Krankheit — Deep Understanding', 'Explain the most important concepts from "Gesundheit und Krankheit" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Gesundheit und Krankheit', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Gesundheit und Krankheit — Reading Practice', 'This is a B1-level reading passage about gesundheit und krankheit in the context of Gesundheit und ErnÃ¤hrung.

Gesundheit und Krankheit is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Gesundheit und ErnÃ¤hrung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Gesundheit und Krankheit — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Gesundheit und Krankheit" aus dem Modul "Gesundheit und ErnÃ¤hrung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Gesundheit und ErnÃ¤hrung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000011', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000011', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000011', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000011', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000011', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('00000000-0000-0000-0000-000000000011', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('00000000-0000-0000-0000-000000000011', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('00000000-0000-0000-0000-000000000011', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('00000000-0000-0000-0000-000000000011', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('00000000-0000-0000-0000-000000000011', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('00000000-0000-0000-0000-000000000011', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('00000000-0000-0000-0000-000000000011', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Homework: Tagesablauf und Alltag', 'Complete these tasks to reinforce "Tagesablauf und Alltag" (Alltag und Gesellschaft).', 'writing', '[{"description":"Review all vocabulary from \"Tagesablauf und Alltag\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000011', 'In this lesson on "Tagesablauf und Alltag" (Alltag und Gesellschaft), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Tagesablauf und Alltag\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Tagesablauf und Alltag\""}]', ARRAY['"Tagesablauf und Alltag" core vocabulary', 'Alltag und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Tagesablauf und Alltag — Speaking 1', 'Practice the key vocabulary and phrases from "Tagesablauf und Alltag" aloud. Focus on correct pronunciation.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Tagesablauf und Alltag — Speaking 2', 'Role-play: Imagine you are in a situation related to Alltag und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Tagesablauf und Alltag — Writing Task 1', 'Write a short text (50-100 words) about tagesablauf und alltag. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Tagesablauf und Alltag — Conversation 1', 'Practice a realistic conversation about tagesablauf und alltag in the context of Alltag und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Tagesablauf und Alltag" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Tagesablauf und Alltag — Conversation 2', 'Practice a realistic conversation about tagesablauf und alltag in the context of Alltag und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Tagesablauf und Alltag" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Tagesablauf und Alltag — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Tagesablauf und Alltag". The dialogue should be realistic and related to Alltag und Gesellschaft.', 'Creative practice for Tagesablauf und Alltag', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Tagesablauf und Alltag — Deep Understanding', 'Explain the most important concepts from "Tagesablauf und Alltag" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Tagesablauf und Alltag', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Tagesablauf und Alltag — Reading Practice', 'This is a B1-level reading passage about tagesablauf und alltag in the context of Alltag und Gesellschaft.

Tagesablauf und Alltag is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Alltag und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Tagesablauf und Alltag — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Tagesablauf und Alltag" aus dem Modul "Alltag und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Alltag und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000012', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000012', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000012', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000012', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000012', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000012', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000012', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('00000000-0000-0000-0000-000000000012', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('00000000-0000-0000-0000-000000000012', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('00000000-0000-0000-0000-000000000012', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('00000000-0000-0000-0000-000000000012', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('00000000-0000-0000-0000-000000000012', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('00000000-0000-0000-0000-000000000012', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('00000000-0000-0000-0000-000000000012', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Homework: Beziehungen und Familie', 'Complete these tasks to reinforce "Beziehungen und Familie" (Beziehungen und Kommunikation).', 'speaking', '[{"description":"Review all vocabulary from \"Beziehungen und Familie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000012', 'In this lesson on "Beziehungen und Familie" (Beziehungen und Kommunikation), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Beziehungen und Familie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Beziehungen und Familie\""}]', ARRAY['"Beziehungen und Familie" core vocabulary', 'Beziehungen und Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Beziehungen und Familie — Speaking 1', 'Practice the key vocabulary and phrases from "Beziehungen und Familie" aloud. Focus on correct pronunciation.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Beziehungen und Familie — Speaking 2', 'Role-play: Imagine you are in a situation related to Beziehungen und Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Beziehungen und Familie — Writing Task 1', 'Write a short text (50-100 words) about beziehungen und familie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Beziehungen und Familie — Conversation 1', 'Practice a realistic conversation about beziehungen und familie in the context of Beziehungen und Kommunikation.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beziehungen und Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Beziehungen und Familie — Conversation 2', 'Practice a realistic conversation about beziehungen und familie in the context of Beziehungen und Kommunikation.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beziehungen und Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Beziehungen und Familie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beziehungen und Familie". The dialogue should be realistic and related to Beziehungen und Kommunikation.', 'Creative practice for Beziehungen und Familie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Beziehungen und Familie — Deep Understanding', 'Explain the most important concepts from "Beziehungen und Familie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Beziehungen und Familie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Beziehungen und Familie — Reading Practice', 'This is a B1-level reading passage about beziehungen und familie in the context of Beziehungen und Kommunikation.

Beziehungen und Familie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Beziehungen und Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Beziehungen und Familie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Beziehungen und Familie" aus dem Modul "Beziehungen und Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Beziehungen und Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 2),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 3),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 4),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 5),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 6),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Homework: Berufe und Arbeitsplatze', 'Complete these tasks to reinforce "Berufe und Arbeitsplatze" (Arbeit und Karriere).', 'reading', '[{"description":"Review all vocabulary from \"Berufe und Arbeitsplatze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'In this lesson on "Berufe und Arbeitsplatze" (Arbeit und Karriere), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Berufe und Arbeitsplatze\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Berufe und Arbeitsplatze\""}]', ARRAY['"Berufe und Arbeitsplatze" core vocabulary', 'Arbeit und Karriere key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Berufe und Arbeitsplatze — Speaking 1', 'Practice the key vocabulary and phrases from "Berufe und Arbeitsplatze" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Berufe und Arbeitsplatze — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Karriere. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Berufe und Arbeitsplatze — Writing Task 1', 'Write a short text (50-100 words) about berufe und arbeitsplatze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Berufe und Arbeitsplatze — Conversation 1', 'Practice a realistic conversation about berufe und arbeitsplatze in the context of Arbeit und Karriere.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Berufe und Arbeitsplatze" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Berufe und Arbeitsplatze — Conversation 2', 'Practice a realistic conversation about berufe und arbeitsplatze in the context of Arbeit und Karriere.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Berufe und Arbeitsplatze" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Berufe und Arbeitsplatze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Berufe und Arbeitsplatze". The dialogue should be realistic and related to Arbeit und Karriere.', 'Creative practice for Berufe und Arbeitsplatze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Berufe und Arbeitsplatze — Deep Understanding', 'Explain the most important concepts from "Berufe und Arbeitsplatze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Berufe und Arbeitsplatze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Berufe und Arbeitsplatze — Reading Practice', 'This is a B1-level reading passage about berufe und arbeitsplatze in the context of Arbeit und Karriere.

Berufe und Arbeitsplatze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Karriere" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Berufe und Arbeitsplatze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Berufe und Arbeitsplatze" aus dem Modul "Arbeit und Karriere".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Karriere');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Das Wetter ist heute schön.', 'The weather is nice today.', 'الطقس جميل اليوم.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Es regnet.', 'It is raining.', 'إنها تمطر.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 2),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Die Sonne scheint.', 'The sun is shining.', 'الشمس مشرقة.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 3),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Es ist kalt draußen.', 'It is cold outside.', 'الجو بارد في الخارج.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wie wird das Wetter morgen?', 'What will the weather be like tomorrow?', 'كيف سيكون الطقس غداً؟', 'Used in Umwelt und Natur', 'neutral', false, NULL, 5);

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
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Homework: Umwelt und Klima', 'Complete these tasks to reinforce "Umwelt und Klima" (Umwelt und Natur).', 'grammar', '[{"description":"Review all vocabulary from \"Umwelt und Klima\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'In this lesson on "Umwelt und Klima" (Umwelt und Natur), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Umwelt und Klima\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Umwelt und Klima\""}]', ARRAY['"Umwelt und Klima" core vocabulary', 'Umwelt und Natur key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Umwelt und Klima — Speaking 1', 'Practice the key vocabulary and phrases from "Umwelt und Klima" aloud. Focus on correct pronunciation.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Umwelt und Klima — Speaking 2', 'Role-play: Imagine you are in a situation related to Umwelt und Natur. Have a dialogue with a partner.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Umwelt und Klima — Writing Task 1', 'Write a short text (50-100 words) about umwelt und klima. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Umwelt und Klima — Conversation 1', 'Practice a realistic conversation about umwelt und klima in the context of Umwelt und Natur.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Umwelt und Klima" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Umwelt und Klima — Conversation 2', 'Practice a realistic conversation about umwelt und klima in the context of Umwelt und Natur.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Umwelt und Klima" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Umwelt und Klima — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Umwelt und Klima". The dialogue should be realistic and related to Umwelt und Natur.', 'Creative practice for Umwelt und Klima', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Umwelt und Klima — Deep Understanding', 'Explain the most important concepts from "Umwelt und Klima" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Umwelt und Klima', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Umwelt und Klima — Reading Practice', 'This is a B1-level reading passage about umwelt und klima in the context of Umwelt und Natur.

Umwelt und Klima is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Umwelt und Natur" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Umwelt und Klima — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Umwelt und Klima" aus dem Modul "Umwelt und Natur".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Umwelt und Natur');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Technologie', 'formal', false, NULL, 1),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medien und Technologie', 'formal', false, NULL, 2),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Technologie', 'informal', false, NULL, 3),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medien und Technologie', 'informal', false, NULL, 4),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medien und Technologie', 'formal', false, NULL, 5),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medien und Technologie', 'formal', false, NULL, 6),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medien und Technologie', 'informal', false, NULL, 7),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medien und Technologie', 'neutral', false, NULL, 8),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medien und Technologie', 'neutral', false, NULL, 9),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medien und Technologie', 'informal', false, NULL, 10);

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
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Homework: Medien und Nachrichten', 'Complete these tasks to reinforce "Medien und Nachrichten" (Medien und Technologie).', 'mixed', '[{"description":"Review all vocabulary from \"Medien und Nachrichten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'In this lesson on "Medien und Nachrichten" (Medien und Technologie), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Medien und Nachrichten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Medien und Nachrichten\""}]', ARRAY['"Medien und Nachrichten" core vocabulary', 'Medien und Technologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Medien und Nachrichten — Speaking 1', 'Practice the key vocabulary and phrases from "Medien und Nachrichten" aloud. Focus on correct pronunciation.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Medien und Nachrichten — Speaking 2', 'Role-play: Imagine you are in a situation related to Medien und Technologie. Have a dialogue with a partner.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Medien und Nachrichten — Writing Task 1', 'Write a short text (50-100 words) about medien und nachrichten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Medien und Nachrichten — Conversation 1', 'Practice a realistic conversation about medien und nachrichten in the context of Medien und Technologie.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medien und Nachrichten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Medien und Nachrichten — Conversation 2', 'Practice a realistic conversation about medien und nachrichten in the context of Medien und Technologie.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medien und Nachrichten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Medien und Nachrichten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Medien und Nachrichten". The dialogue should be realistic and related to Medien und Technologie.', 'Creative practice for Medien und Nachrichten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Medien und Nachrichten — Deep Understanding', 'Explain the most important concepts from "Medien und Nachrichten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Medien und Nachrichten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Medien und Nachrichten — Reading Practice', 'This is a B1-level reading passage about medien und nachrichten in the context of Medien und Technologie.

Medien und Nachrichten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medien und Technologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Medien und Nachrichten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Medien und Nachrichten" aus dem Modul "Medien und Technologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medien und Technologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Technologie', 'formal', false, NULL, 1),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medien und Technologie', 'formal', false, NULL, 2),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Technologie', 'informal', false, NULL, 3),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medien und Technologie', 'informal', false, NULL, 4),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medien und Technologie', 'formal', false, NULL, 5),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medien und Technologie', 'formal', false, NULL, 6),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medien und Technologie', 'informal', false, NULL, 7),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medien und Technologie', 'neutral', false, NULL, 8),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medien und Technologie', 'neutral', false, NULL, 9),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medien und Technologie', 'informal', false, NULL, 10);

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
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Homework: Medien und Nachrichten', 'Complete these tasks to reinforce "Medien und Nachrichten" (Medien und Technologie).', 'vocabulary', '[{"description":"Review all vocabulary from \"Medien und Nachrichten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'In this lesson on "Medien und Nachrichten" (Medien und Technologie), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Medien und Nachrichten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Medien und Nachrichten\""}]', ARRAY['"Medien und Nachrichten" core vocabulary', 'Medien und Technologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medien und Nachrichten — Speaking 1', 'Practice the key vocabulary and phrases from "Medien und Nachrichten" aloud. Focus on correct pronunciation.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medien und Nachrichten — Speaking 2', 'Role-play: Imagine you are in a situation related to Medien und Technologie. Have a dialogue with a partner.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medien und Nachrichten — Writing Task 1', 'Write a short text (50-100 words) about medien und nachrichten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medien und Nachrichten — Conversation 1', 'Practice a realistic conversation about medien und nachrichten in the context of Medien und Technologie.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medien und Nachrichten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medien und Nachrichten — Conversation 2', 'Practice a realistic conversation about medien und nachrichten in the context of Medien und Technologie.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Medien und Nachrichten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medien und Nachrichten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Medien und Nachrichten". The dialogue should be realistic and related to Medien und Technologie.', 'Creative practice for Medien und Nachrichten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medien und Nachrichten — Deep Understanding', 'Explain the most important concepts from "Medien und Nachrichten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Medien und Nachrichten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medien und Nachrichten — Reading Practice', 'This is a B1-level reading passage about medien und nachrichten in the context of Medien und Technologie.

Medien und Nachrichten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medien und Technologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Medien und Nachrichten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Medien und Nachrichten" aus dem Modul "Medien und Technologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medien und Technologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Homework: Tagesablauf und Alltag', 'Complete these tasks to reinforce "Tagesablauf und Alltag" (Alltag und Gesellschaft).', 'writing', '[{"description":"Review all vocabulary from \"Tagesablauf und Alltag\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'In this lesson on "Tagesablauf und Alltag" (Alltag und Gesellschaft), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Tagesablauf und Alltag\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Tagesablauf und Alltag\""}]', ARRAY['"Tagesablauf und Alltag" core vocabulary', 'Alltag und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tagesablauf und Alltag — Speaking 1', 'Practice the key vocabulary and phrases from "Tagesablauf und Alltag" aloud. Focus on correct pronunciation.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tagesablauf und Alltag — Speaking 2', 'Role-play: Imagine you are in a situation related to Alltag und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tagesablauf und Alltag — Writing Task 1', 'Write a short text (50-100 words) about tagesablauf und alltag. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tagesablauf und Alltag — Conversation 1', 'Practice a realistic conversation about tagesablauf und alltag in the context of Alltag und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Tagesablauf und Alltag" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tagesablauf und Alltag — Conversation 2', 'Practice a realistic conversation about tagesablauf und alltag in the context of Alltag und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Tagesablauf und Alltag" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tagesablauf und Alltag — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Tagesablauf und Alltag". The dialogue should be realistic and related to Alltag und Gesellschaft.', 'Creative practice for Tagesablauf und Alltag', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tagesablauf und Alltag — Deep Understanding', 'Explain the most important concepts from "Tagesablauf und Alltag" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Tagesablauf und Alltag', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tagesablauf und Alltag — Reading Practice', 'This is a B1-level reading passage about tagesablauf und alltag in the context of Alltag und Gesellschaft.

Tagesablauf und Alltag is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Alltag und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Tagesablauf und Alltag — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Tagesablauf und Alltag" aus dem Modul "Alltag und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Alltag und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Das Wetter ist heute schön.', 'The weather is nice today.', 'الطقس جميل اليوم.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Es regnet.', 'It is raining.', 'إنها تمطر.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 2),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Die Sonne scheint.', 'The sun is shining.', 'الشمس مشرقة.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 3),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Es ist kalt draußen.', 'It is cold outside.', 'الجو بارد في الخارج.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wie wird das Wetter morgen?', 'What will the weather be like tomorrow?', 'كيف سيكون الطقس غداً؟', 'Used in Umwelt und Natur', 'neutral', false, NULL, 5);

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
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Homework: Umwelt und Klima', 'Complete these tasks to reinforce "Umwelt und Klima" (Umwelt und Natur).', 'speaking', '[{"description":"Review all vocabulary from \"Umwelt und Klima\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'In this lesson on "Umwelt und Klima" (Umwelt und Natur), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Umwelt und Klima\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Umwelt und Klima\""}]', ARRAY['"Umwelt und Klima" core vocabulary', 'Umwelt und Natur key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Umwelt und Klima — Speaking 1', 'Practice the key vocabulary and phrases from "Umwelt und Klima" aloud. Focus on correct pronunciation.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Umwelt und Klima — Speaking 2', 'Role-play: Imagine you are in a situation related to Umwelt und Natur. Have a dialogue with a partner.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Umwelt und Klima — Writing Task 1', 'Write a short text (50-100 words) about umwelt und klima. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Umwelt und Klima — Conversation 1', 'Practice a realistic conversation about umwelt und klima in the context of Umwelt und Natur.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Umwelt und Klima" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Umwelt und Klima — Conversation 2', 'Practice a realistic conversation about umwelt und klima in the context of Umwelt und Natur.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Umwelt und Klima" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Umwelt und Klima — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Umwelt und Klima". The dialogue should be realistic and related to Umwelt und Natur.', 'Creative practice for Umwelt und Klima', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Umwelt und Klima — Deep Understanding', 'Explain the most important concepts from "Umwelt und Klima" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Umwelt und Klima', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Umwelt und Klima — Reading Practice', 'This is a B1-level reading passage about umwelt und klima in the context of Umwelt und Natur.

Umwelt und Klima is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Umwelt und Natur" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Umwelt und Klima — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Umwelt und Klima" aus dem Modul "Umwelt und Natur".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Umwelt und Natur');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Meine Familie ist groß.', 'My family is big.', 'عائلتي كبيرة.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 1),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Ich habe einen Bruder.', 'I have a brother.', 'لدي أخ.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 2),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Hast du Geschwister?', 'Do you have siblings?', 'هل لديك أخوة؟', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 3),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Meine Mutter arbeitet als Ärztin.', 'My mother works as a doctor.', 'والدتي تعمل كطبيبة.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 4),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Mein Vater ist Ingenieur.', 'My father is an engineer.', 'والدي مهندس.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 5),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wir wohnen zusammen.', 'We live together.', 'نسكن معاً.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 6),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Ich liebe meine Familie.', 'I love my family.', 'أحب عائلتي.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 7),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wie viele Personen sind in deiner Familie?', 'How many people are in your family?', 'كم عدد أفراد عائلتك؟', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Vater', 'father', 'Parent (male)', 'vocabulary', 1),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'die Mutter', 'mother', 'Parent (female)', 'vocabulary', 2),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Bruder', 'brother', 'Sibling (male)', 'vocabulary', 3),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'die Schwester', 'sister', 'Sibling (female)', 'vocabulary', 4),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Sohn', 'son', 'Child (male)', 'vocabulary', 5),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'die Tochter', 'daughter', 'Child (female)', 'vocabulary', 6),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Opa', 'grandpa', 'Grandfather', 'vocabulary', 7),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'die Oma', 'grandma', 'Grandmother', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Homework: Beziehungen und Familie', 'Complete these tasks to reinforce "Beziehungen und Familie" (Beziehungen und Kommunikation).', 'reading', '[{"description":"Review all vocabulary from \"Beziehungen und Familie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'In this lesson on "Beziehungen und Familie" (Beziehungen und Kommunikation), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Beziehungen und Familie\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Beziehungen und Familie\""}]', ARRAY['"Beziehungen und Familie" core vocabulary', 'Beziehungen und Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Beziehungen und Familie — Speaking 1', 'Practice the key vocabulary and phrases from "Beziehungen und Familie" aloud. Focus on correct pronunciation.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Beziehungen und Familie — Speaking 2', 'Role-play: Imagine you are in a situation related to Beziehungen und Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Beziehungen und Familie — Writing Task 1', 'Write a short text (50-100 words) about beziehungen und familie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Beziehungen und Familie — Conversation 1', 'Practice a realistic conversation about beziehungen und familie in the context of Beziehungen und Kommunikation.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beziehungen und Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Beziehungen und Familie — Conversation 2', 'Practice a realistic conversation about beziehungen und familie in the context of Beziehungen und Kommunikation.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beziehungen und Familie" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Beziehungen und Familie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beziehungen und Familie". The dialogue should be realistic and related to Beziehungen und Kommunikation.', 'Creative practice for Beziehungen und Familie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Beziehungen und Familie — Deep Understanding', 'Explain the most important concepts from "Beziehungen und Familie" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Beziehungen und Familie', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Beziehungen und Familie — Reading Practice', 'This is a B1-level reading passage about beziehungen und familie in the context of Beziehungen und Kommunikation.

Beziehungen und Familie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Beziehungen und Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Beziehungen und Familie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Beziehungen und Familie" aus dem Modul "Beziehungen und Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Beziehungen und Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 2),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 3),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 4),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 5),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 6),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Homework: Berufe und Arbeitsplatze', 'Complete these tasks to reinforce "Berufe und Arbeitsplatze" (Arbeit und Karriere).', 'grammar', '[{"description":"Review all vocabulary from \"Berufe und Arbeitsplatze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'In this lesson on "Berufe und Arbeitsplatze" (Arbeit und Karriere), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Berufe und Arbeitsplatze\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Berufe und Arbeitsplatze\""}]', ARRAY['"Berufe und Arbeitsplatze" core vocabulary', 'Arbeit und Karriere key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Berufe und Arbeitsplatze — Speaking 1', 'Practice the key vocabulary and phrases from "Berufe und Arbeitsplatze" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Berufe und Arbeitsplatze — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Karriere. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Berufe und Arbeitsplatze — Writing Task 1', 'Write a short text (50-100 words) about berufe und arbeitsplatze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Berufe und Arbeitsplatze — Conversation 1', 'Practice a realistic conversation about berufe und arbeitsplatze in the context of Arbeit und Karriere.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Berufe und Arbeitsplatze" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Berufe und Arbeitsplatze — Conversation 2', 'Practice a realistic conversation about berufe und arbeitsplatze in the context of Arbeit und Karriere.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Berufe und Arbeitsplatze" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Berufe und Arbeitsplatze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Berufe und Arbeitsplatze". The dialogue should be realistic and related to Arbeit und Karriere.', 'Creative practice for Berufe und Arbeitsplatze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Berufe und Arbeitsplatze — Deep Understanding', 'Explain the most important concepts from "Berufe und Arbeitsplatze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Berufe und Arbeitsplatze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Berufe und Arbeitsplatze — Reading Practice', 'This is a B1-level reading passage about berufe und arbeitsplatze in the context of Arbeit und Karriere.

Berufe und Arbeitsplatze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Karriere" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Berufe und Arbeitsplatze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Berufe und Arbeitsplatze" aus dem Modul "Arbeit und Karriere".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Karriere');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 1),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 2),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 3),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 4),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 5),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 6),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 7),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 8),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 9),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 10);

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
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Homework: Gesundheit und Krankheit', 'Complete these tasks to reinforce "Gesundheit und Krankheit" (Gesundheit und ErnÃ¤hrung).', 'mixed', '[{"description":"Review all vocabulary from \"Gesundheit und Krankheit\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'In this lesson on "Gesundheit und Krankheit" (Gesundheit und ErnÃ¤hrung), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Gesundheit und Krankheit\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Gesundheit und Krankheit\""}]', ARRAY['"Gesundheit und Krankheit" core vocabulary', 'Gesundheit und ErnÃ¤hrung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Gesundheit und Krankheit — Speaking 1', 'Practice the key vocabulary and phrases from "Gesundheit und Krankheit" aloud. Focus on correct pronunciation.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Gesundheit und Krankheit — Speaking 2', 'Role-play: Imagine you are in a situation related to Gesundheit und ErnÃ¤hrung. Have a dialogue with a partner.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Gesundheit und Krankheit — Writing Task 1', 'Write a short text (50-100 words) about gesundheit und krankheit. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Gesundheit und Krankheit — Conversation 1', 'Practice a realistic conversation about gesundheit und krankheit in the context of Gesundheit und ErnÃ¤hrung.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesundheit und Krankheit" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Gesundheit und Krankheit — Conversation 2', 'Practice a realistic conversation about gesundheit und krankheit in the context of Gesundheit und ErnÃ¤hrung.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesundheit und Krankheit" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Gesundheit und Krankheit — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesundheit und Krankheit". The dialogue should be realistic and related to Gesundheit und ErnÃ¤hrung.', 'Creative practice for Gesundheit und Krankheit', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Gesundheit und Krankheit — Deep Understanding', 'Explain the most important concepts from "Gesundheit und Krankheit" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Gesundheit und Krankheit', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Gesundheit und Krankheit — Reading Practice', 'This is a B1-level reading passage about gesundheit und krankheit in the context of Gesundheit und ErnÃ¤hrung.

Gesundheit und Krankheit is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Gesundheit und ErnÃ¤hrung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Gesundheit und Krankheit — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Gesundheit und Krankheit" aus dem Modul "Gesundheit und ErnÃ¤hrung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Gesundheit und ErnÃ¤hrung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 2),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 3),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 4),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 5),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 6),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 7);

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
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Homework: Bewerbung und Lebenslauf', 'Complete these tasks to reinforce "Bewerbung und Lebenslauf" (Arbeit und Karriere).', 'vocabulary', '[{"description":"Review all vocabulary from \"Bewerbung und Lebenslauf\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'In this lesson on "Bewerbung und Lebenslauf" (Arbeit und Karriere), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Bewerbung und Lebenslauf\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Bewerbung und Lebenslauf\""}]', ARRAY['"Bewerbung und Lebenslauf" core vocabulary', 'Arbeit und Karriere key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bewerbung und Lebenslauf — Speaking 1', 'Practice the key vocabulary and phrases from "Bewerbung und Lebenslauf" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bewerbung und Lebenslauf — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Karriere. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bewerbung und Lebenslauf — Writing Task 1', 'Write a short text (50-100 words) about bewerbung und lebenslauf. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bewerbung und Lebenslauf — Conversation 1', 'Practice a realistic conversation about bewerbung und lebenslauf in the context of Arbeit und Karriere.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Bewerbung und Lebenslauf" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bewerbung und Lebenslauf — Conversation 2', 'Practice a realistic conversation about bewerbung und lebenslauf in the context of Arbeit und Karriere.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Bewerbung und Lebenslauf" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bewerbung und Lebenslauf — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Bewerbung und Lebenslauf". The dialogue should be realistic and related to Arbeit und Karriere.', 'Creative practice for Bewerbung und Lebenslauf', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bewerbung und Lebenslauf — Deep Understanding', 'Explain the most important concepts from "Bewerbung und Lebenslauf" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Bewerbung und Lebenslauf', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bewerbung und Lebenslauf — Reading Practice', 'This is a B1-level reading passage about bewerbung und lebenslauf in the context of Arbeit und Karriere.

Bewerbung und Lebenslauf is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Karriere" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Bewerbung und Lebenslauf — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Bewerbung und Lebenslauf" aus dem Modul "Arbeit und Karriere".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Karriere');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 7),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 8),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 9),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 10);

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
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Homework: ErnÃ¤hrung und NÃ¤hrstoffe', 'Complete these tasks to reinforce "ErnÃ¤hrung und NÃ¤hrstoffe" (Gesundheit und ErnÃ¤hrung).', 'writing', '[{"description":"Review all vocabulary from \"ErnÃ¤hrung und NÃ¤hrstoffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'In this lesson on "ErnÃ¤hrung und NÃ¤hrstoffe" (Gesundheit und ErnÃ¤hrung), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"ErnÃ¤hrung und NÃ¤hrstoffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"ErnÃ¤hrung und NÃ¤hrstoffe\""}]', ARRAY['"ErnÃ¤hrung und NÃ¤hrstoffe" core vocabulary', 'Gesundheit und ErnÃ¤hrung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ErnÃ¤hrung und NÃ¤hrstoffe — Speaking 1', 'Practice the key vocabulary and phrases from "ErnÃ¤hrung und NÃ¤hrstoffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ErnÃ¤hrung und NÃ¤hrstoffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Gesundheit und ErnÃ¤hrung. Have a dialogue with a partner.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ErnÃ¤hrung und NÃ¤hrstoffe — Writing Task 1', 'Write a short text (50-100 words) about ernã¤hrung und nã¤hrstoffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ErnÃ¤hrung und NÃ¤hrstoffe — Conversation 1', 'Practice a realistic conversation about ernã¤hrung und nã¤hrstoffe in the context of Gesundheit und ErnÃ¤hrung.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "ErnÃ¤hrung und NÃ¤hrstoffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ErnÃ¤hrung und NÃ¤hrstoffe — Conversation 2', 'Practice a realistic conversation about ernã¤hrung und nã¤hrstoffe in the context of Gesundheit und ErnÃ¤hrung.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "ErnÃ¤hrung und NÃ¤hrstoffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ErnÃ¤hrung und NÃ¤hrstoffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "ErnÃ¤hrung und NÃ¤hrstoffe". The dialogue should be realistic and related to Gesundheit und ErnÃ¤hrung.', 'Creative practice for ErnÃ¤hrung und NÃ¤hrstoffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ErnÃ¤hrung und NÃ¤hrstoffe — Deep Understanding', 'Explain the most important concepts from "ErnÃ¤hrung und NÃ¤hrstoffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for ErnÃ¤hrung und NÃ¤hrstoffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ErnÃ¤hrung und NÃ¤hrstoffe — Reading Practice', 'This is a B1-level reading passage about ernã¤hrung und nã¤hrstoffe in the context of Gesundheit und ErnÃ¤hrung.

ErnÃ¤hrung und NÃ¤hrstoffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Gesundheit und ErnÃ¤hrung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'ErnÃ¤hrung und NÃ¤hrstoffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "ErnÃ¤hrung und NÃ¤hrstoffe" aus dem Modul "Gesundheit und ErnÃ¤hrung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Gesundheit und ErnÃ¤hrung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 1),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 2),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 3),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 4),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 5),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 6),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 7),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 8),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 9),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 10);

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
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Homework: ErnÃ¤hrung und NÃ¤hrstoffe', 'Complete these tasks to reinforce "ErnÃ¤hrung und NÃ¤hrstoffe" (Gesundheit und ErnÃ¤hrung).', 'speaking', '[{"description":"Review all vocabulary from \"ErnÃ¤hrung und NÃ¤hrstoffe\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'In this lesson on "ErnÃ¤hrung und NÃ¤hrstoffe" (Gesundheit und ErnÃ¤hrung), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"ErnÃ¤hrung und NÃ¤hrstoffe\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"ErnÃ¤hrung und NÃ¤hrstoffe\""}]', ARRAY['"ErnÃ¤hrung und NÃ¤hrstoffe" core vocabulary', 'Gesundheit und ErnÃ¤hrung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ErnÃ¤hrung und NÃ¤hrstoffe — Speaking 1', 'Practice the key vocabulary and phrases from "ErnÃ¤hrung und NÃ¤hrstoffe" aloud. Focus on correct pronunciation.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ErnÃ¤hrung und NÃ¤hrstoffe — Speaking 2', 'Role-play: Imagine you are in a situation related to Gesundheit und ErnÃ¤hrung. Have a dialogue with a partner.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ErnÃ¤hrung und NÃ¤hrstoffe — Writing Task 1', 'Write a short text (50-100 words) about ernã¤hrung und nã¤hrstoffe. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ErnÃ¤hrung und NÃ¤hrstoffe — Conversation 1', 'Practice a realistic conversation about ernã¤hrung und nã¤hrstoffe in the context of Gesundheit und ErnÃ¤hrung.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "ErnÃ¤hrung und NÃ¤hrstoffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ErnÃ¤hrung und NÃ¤hrstoffe — Conversation 2', 'Practice a realistic conversation about ernã¤hrung und nã¤hrstoffe in the context of Gesundheit und ErnÃ¤hrung.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "ErnÃ¤hrung und NÃ¤hrstoffe" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ErnÃ¤hrung und NÃ¤hrstoffe — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "ErnÃ¤hrung und NÃ¤hrstoffe". The dialogue should be realistic and related to Gesundheit und ErnÃ¤hrung.', 'Creative practice for ErnÃ¤hrung und NÃ¤hrstoffe', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ErnÃ¤hrung und NÃ¤hrstoffe — Deep Understanding', 'Explain the most important concepts from "ErnÃ¤hrung und NÃ¤hrstoffe" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for ErnÃ¤hrung und NÃ¤hrstoffe', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ErnÃ¤hrung und NÃ¤hrstoffe — Reading Practice', 'This is a B1-level reading passage about ernã¤hrung und nã¤hrstoffe in the context of Gesundheit und ErnÃ¤hrung.

ErnÃ¤hrung und NÃ¤hrstoffe is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Gesundheit und ErnÃ¤hrung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'ErnÃ¤hrung und NÃ¤hrstoffe — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "ErnÃ¤hrung und NÃ¤hrstoffe" aus dem Modul "Gesundheit und ErnÃ¤hrung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Gesundheit und ErnÃ¤hrung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Technologie', 'formal', false, NULL, 1),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medien und Technologie', 'formal', false, NULL, 2),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Technologie', 'informal', false, NULL, 3),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medien und Technologie', 'informal', false, NULL, 4),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medien und Technologie', 'formal', false, NULL, 5),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medien und Technologie', 'formal', false, NULL, 6),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medien und Technologie', 'informal', false, NULL, 7),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medien und Technologie', 'neutral', false, NULL, 8),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medien und Technologie', 'neutral', false, NULL, 9),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medien und Technologie', 'informal', false, NULL, 10);

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
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Homework: Technologie und digitale Welt', 'Complete these tasks to reinforce "Technologie und digitale Welt" (Medien und Technologie).', 'reading', '[{"description":"Review all vocabulary from \"Technologie und digitale Welt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'In this lesson on "Technologie und digitale Welt" (Medien und Technologie), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Technologie und digitale Welt\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Technologie und digitale Welt\""}]', ARRAY['"Technologie und digitale Welt" core vocabulary', 'Medien und Technologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Technologie und digitale Welt — Speaking 1', 'Practice the key vocabulary and phrases from "Technologie und digitale Welt" aloud. Focus on correct pronunciation.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Technologie und digitale Welt — Speaking 2', 'Role-play: Imagine you are in a situation related to Medien und Technologie. Have a dialogue with a partner.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Technologie und digitale Welt — Writing Task 1', 'Write a short text (50-100 words) about technologie und digitale welt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Technologie und digitale Welt — Conversation 1', 'Practice a realistic conversation about technologie und digitale welt in the context of Medien und Technologie.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Technologie und digitale Welt" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Technologie und digitale Welt — Conversation 2', 'Practice a realistic conversation about technologie und digitale welt in the context of Medien und Technologie.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Technologie und digitale Welt" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Technologie und digitale Welt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Technologie und digitale Welt". The dialogue should be realistic and related to Medien und Technologie.', 'Creative practice for Technologie und digitale Welt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Technologie und digitale Welt — Deep Understanding', 'Explain the most important concepts from "Technologie und digitale Welt" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Technologie und digitale Welt', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Technologie und digitale Welt — Reading Practice', 'This is a B1-level reading passage about technologie und digitale welt in the context of Medien und Technologie.

Technologie und digitale Welt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medien und Technologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Technologie und digitale Welt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Technologie und digitale Welt" aus dem Modul "Medien und Technologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medien und Technologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 1),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 2),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 3),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 4),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 5),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 6),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 7),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 8),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 9),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 10);

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
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Homework: Kommunikation und GesprÃ¤che', 'Complete these tasks to reinforce "Kommunikation und GesprÃ¤che" (Beziehungen und Kommunikation).', 'grammar', '[{"description":"Review all vocabulary from \"Kommunikation und GesprÃ¤che\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'In this lesson on "Kommunikation und GesprÃ¤che" (Beziehungen und Kommunikation), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kommunikation und GesprÃ¤che\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kommunikation und GesprÃ¤che\""}]', ARRAY['"Kommunikation und GesprÃ¤che" core vocabulary', 'Beziehungen und Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kommunikation und GesprÃ¤che — Speaking 1', 'Practice the key vocabulary and phrases from "Kommunikation und GesprÃ¤che" aloud. Focus on correct pronunciation.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kommunikation und GesprÃ¤che — Speaking 2', 'Role-play: Imagine you are in a situation related to Beziehungen und Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kommunikation und GesprÃ¤che — Writing Task 1', 'Write a short text (50-100 words) about kommunikation und gesprã¤che. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kommunikation und GesprÃ¤che — Conversation 1', 'Practice a realistic conversation about kommunikation und gesprã¤che in the context of Beziehungen und Kommunikation.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kommunikation und GesprÃ¤che" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kommunikation und GesprÃ¤che — Conversation 2', 'Practice a realistic conversation about kommunikation und gesprã¤che in the context of Beziehungen und Kommunikation.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kommunikation und GesprÃ¤che" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kommunikation und GesprÃ¤che — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kommunikation und GesprÃ¤che". The dialogue should be realistic and related to Beziehungen und Kommunikation.', 'Creative practice for Kommunikation und GesprÃ¤che', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kommunikation und GesprÃ¤che — Deep Understanding', 'Explain the most important concepts from "Kommunikation und GesprÃ¤che" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kommunikation und GesprÃ¤che', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kommunikation und GesprÃ¤che — Reading Practice', 'This is a B1-level reading passage about kommunikation und gesprã¤che in the context of Beziehungen und Kommunikation.

Kommunikation und GesprÃ¤che is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Beziehungen und Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Kommunikation und GesprÃ¤che — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kommunikation und GesprÃ¤che" aus dem Modul "Beziehungen und Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Beziehungen und Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 1),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 2),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 3),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 4),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 5),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 6),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 7),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 8),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 9),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 10);

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
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Homework: Kommunikation und GesprÃ¤che', 'Complete these tasks to reinforce "Kommunikation und GesprÃ¤che" (Beziehungen und Kommunikation).', 'mixed', '[{"description":"Review all vocabulary from \"Kommunikation und GesprÃ¤che\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'In this lesson on "Kommunikation und GesprÃ¤che" (Beziehungen und Kommunikation), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kommunikation und GesprÃ¤che\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kommunikation und GesprÃ¤che\""}]', ARRAY['"Kommunikation und GesprÃ¤che" core vocabulary', 'Beziehungen und Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Kommunikation und GesprÃ¤che — Speaking 1', 'Practice the key vocabulary and phrases from "Kommunikation und GesprÃ¤che" aloud. Focus on correct pronunciation.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Kommunikation und GesprÃ¤che — Speaking 2', 'Role-play: Imagine you are in a situation related to Beziehungen und Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Kommunikation und GesprÃ¤che — Writing Task 1', 'Write a short text (50-100 words) about kommunikation und gesprã¤che. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Kommunikation und GesprÃ¤che — Conversation 1', 'Practice a realistic conversation about kommunikation und gesprã¤che in the context of Beziehungen und Kommunikation.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kommunikation und GesprÃ¤che" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Kommunikation und GesprÃ¤che — Conversation 2', 'Practice a realistic conversation about kommunikation und gesprã¤che in the context of Beziehungen und Kommunikation.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kommunikation und GesprÃ¤che" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Kommunikation und GesprÃ¤che — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kommunikation und GesprÃ¤che". The dialogue should be realistic and related to Beziehungen und Kommunikation.', 'Creative practice for Kommunikation und GesprÃ¤che', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Kommunikation und GesprÃ¤che — Deep Understanding', 'Explain the most important concepts from "Kommunikation und GesprÃ¤che" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kommunikation und GesprÃ¤che', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Kommunikation und GesprÃ¤che — Reading Practice', 'This is a B1-level reading passage about kommunikation und gesprã¤che in the context of Beziehungen und Kommunikation.

Kommunikation und GesprÃ¤che is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Beziehungen und Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Kommunikation und GesprÃ¤che — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kommunikation und GesprÃ¤che" aus dem Modul "Beziehungen und Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Beziehungen und Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Homework: Gesellschaft und Zusammenleben', 'Complete these tasks to reinforce "Gesellschaft und Zusammenleben" (Alltag und Gesellschaft).', 'vocabulary', '[{"description":"Review all vocabulary from \"Gesellschaft und Zusammenleben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'In this lesson on "Gesellschaft und Zusammenleben" (Alltag und Gesellschaft), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Gesellschaft und Zusammenleben\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Gesellschaft und Zusammenleben\""}]', ARRAY['"Gesellschaft und Zusammenleben" core vocabulary', 'Alltag und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Gesellschaft und Zusammenleben — Speaking 1', 'Practice the key vocabulary and phrases from "Gesellschaft und Zusammenleben" aloud. Focus on correct pronunciation.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Gesellschaft und Zusammenleben — Speaking 2', 'Role-play: Imagine you are in a situation related to Alltag und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Gesellschaft und Zusammenleben — Writing Task 1', 'Write a short text (50-100 words) about gesellschaft und zusammenleben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Gesellschaft und Zusammenleben — Conversation 1', 'Practice a realistic conversation about gesellschaft und zusammenleben in the context of Alltag und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesellschaft und Zusammenleben" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Gesellschaft und Zusammenleben — Conversation 2', 'Practice a realistic conversation about gesellschaft und zusammenleben in the context of Alltag und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesellschaft und Zusammenleben" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Gesellschaft und Zusammenleben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesellschaft und Zusammenleben". The dialogue should be realistic and related to Alltag und Gesellschaft.', 'Creative practice for Gesellschaft und Zusammenleben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Gesellschaft und Zusammenleben — Deep Understanding', 'Explain the most important concepts from "Gesellschaft und Zusammenleben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Gesellschaft und Zusammenleben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Gesellschaft und Zusammenleben — Reading Practice', 'This is a B1-level reading passage about gesellschaft und zusammenleben in the context of Alltag und Gesellschaft.

Gesellschaft und Zusammenleben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Alltag und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Gesellschaft und Zusammenleben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Gesellschaft und Zusammenleben" aus dem Modul "Alltag und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Alltag und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 2),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 3),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 4),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 5),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 6),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Homework: Bewerbung und Lebenslauf', 'Complete these tasks to reinforce "Bewerbung und Lebenslauf" (Arbeit und Karriere).', 'writing', '[{"description":"Review all vocabulary from \"Bewerbung und Lebenslauf\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'In this lesson on "Bewerbung und Lebenslauf" (Arbeit und Karriere), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Bewerbung und Lebenslauf\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Bewerbung und Lebenslauf\""}]', ARRAY['"Bewerbung und Lebenslauf" core vocabulary', 'Arbeit und Karriere key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bewerbung und Lebenslauf — Speaking 1', 'Practice the key vocabulary and phrases from "Bewerbung und Lebenslauf" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bewerbung und Lebenslauf — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Karriere. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bewerbung und Lebenslauf — Writing Task 1', 'Write a short text (50-100 words) about bewerbung und lebenslauf. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bewerbung und Lebenslauf — Conversation 1', 'Practice a realistic conversation about bewerbung und lebenslauf in the context of Arbeit und Karriere.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Bewerbung und Lebenslauf" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bewerbung und Lebenslauf — Conversation 2', 'Practice a realistic conversation about bewerbung und lebenslauf in the context of Arbeit und Karriere.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Bewerbung und Lebenslauf" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bewerbung und Lebenslauf — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Bewerbung und Lebenslauf". The dialogue should be realistic and related to Arbeit und Karriere.', 'Creative practice for Bewerbung und Lebenslauf', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bewerbung und Lebenslauf — Deep Understanding', 'Explain the most important concepts from "Bewerbung und Lebenslauf" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Bewerbung und Lebenslauf', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bewerbung und Lebenslauf — Reading Practice', 'This is a B1-level reading passage about bewerbung und lebenslauf in the context of Arbeit und Karriere.

Bewerbung und Lebenslauf is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Karriere" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bewerbung und Lebenslauf — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Bewerbung und Lebenslauf" aus dem Modul "Arbeit und Karriere".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Karriere');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Homework: Gesellschaft und Zusammenleben', 'Complete these tasks to reinforce "Gesellschaft und Zusammenleben" (Alltag und Gesellschaft).', 'speaking', '[{"description":"Review all vocabulary from \"Gesellschaft und Zusammenleben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'In this lesson on "Gesellschaft und Zusammenleben" (Alltag und Gesellschaft), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Gesellschaft und Zusammenleben\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Gesellschaft und Zusammenleben\""}]', ARRAY['"Gesellschaft und Zusammenleben" core vocabulary', 'Alltag und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesellschaft und Zusammenleben — Speaking 1', 'Practice the key vocabulary and phrases from "Gesellschaft und Zusammenleben" aloud. Focus on correct pronunciation.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesellschaft und Zusammenleben — Speaking 2', 'Role-play: Imagine you are in a situation related to Alltag und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesellschaft und Zusammenleben — Writing Task 1', 'Write a short text (50-100 words) about gesellschaft und zusammenleben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesellschaft und Zusammenleben — Conversation 1', 'Practice a realistic conversation about gesellschaft und zusammenleben in the context of Alltag und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesellschaft und Zusammenleben" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesellschaft und Zusammenleben — Conversation 2', 'Practice a realistic conversation about gesellschaft und zusammenleben in the context of Alltag und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Gesellschaft und Zusammenleben" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesellschaft und Zusammenleben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesellschaft und Zusammenleben". The dialogue should be realistic and related to Alltag und Gesellschaft.', 'Creative practice for Gesellschaft und Zusammenleben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesellschaft und Zusammenleben — Deep Understanding', 'Explain the most important concepts from "Gesellschaft und Zusammenleben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Gesellschaft und Zusammenleben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesellschaft und Zusammenleben — Reading Practice', 'This is a B1-level reading passage about gesellschaft und zusammenleben in the context of Alltag und Gesellschaft.

Gesellschaft und Zusammenleben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Alltag und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Gesellschaft und Zusammenleben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Gesellschaft und Zusammenleben" aus dem Modul "Alltag und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Alltag und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 2),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Umwelt und Natur', 'informal', false, NULL, 3),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 5),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Umwelt und Natur', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Homework: Natur und Jahreszeiten', 'Complete these tasks to reinforce "Natur und Jahreszeiten" (Umwelt und Natur).', 'reading', '[{"description":"Review all vocabulary from \"Natur und Jahreszeiten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'In this lesson on "Natur und Jahreszeiten" (Umwelt und Natur), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Natur und Jahreszeiten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Natur und Jahreszeiten\""}]', ARRAY['"Natur und Jahreszeiten" core vocabulary', 'Umwelt und Natur key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Natur und Jahreszeiten — Speaking 1', 'Practice the key vocabulary and phrases from "Natur und Jahreszeiten" aloud. Focus on correct pronunciation.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Natur und Jahreszeiten — Speaking 2', 'Role-play: Imagine you are in a situation related to Umwelt und Natur. Have a dialogue with a partner.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Natur und Jahreszeiten — Writing Task 1', 'Write a short text (50-100 words) about natur und jahreszeiten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Natur und Jahreszeiten — Conversation 1', 'Practice a realistic conversation about natur und jahreszeiten in the context of Umwelt und Natur.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Natur und Jahreszeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Natur und Jahreszeiten — Conversation 2', 'Practice a realistic conversation about natur und jahreszeiten in the context of Umwelt und Natur.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Natur und Jahreszeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Natur und Jahreszeiten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Natur und Jahreszeiten". The dialogue should be realistic and related to Umwelt und Natur.', 'Creative practice for Natur und Jahreszeiten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Natur und Jahreszeiten — Deep Understanding', 'Explain the most important concepts from "Natur und Jahreszeiten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Natur und Jahreszeiten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Natur und Jahreszeiten — Reading Practice', 'This is a B1-level reading passage about natur und jahreszeiten in the context of Umwelt und Natur.

Natur und Jahreszeiten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Umwelt und Natur" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Natur und Jahreszeiten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Natur und Jahreszeiten" aus dem Modul "Umwelt und Natur".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Umwelt und Natur');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 2),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Umwelt und Natur', 'informal', false, NULL, 3),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 5),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Umwelt und Natur', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Homework: Natur und Jahreszeiten', 'Complete these tasks to reinforce "Natur und Jahreszeiten" (Umwelt und Natur).', 'grammar', '[{"description":"Review all vocabulary from \"Natur und Jahreszeiten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'In this lesson on "Natur und Jahreszeiten" (Umwelt und Natur), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Natur und Jahreszeiten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Natur und Jahreszeiten\""}]', ARRAY['"Natur und Jahreszeiten" core vocabulary', 'Umwelt und Natur key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Natur und Jahreszeiten — Speaking 1', 'Practice the key vocabulary and phrases from "Natur und Jahreszeiten" aloud. Focus on correct pronunciation.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Natur und Jahreszeiten — Speaking 2', 'Role-play: Imagine you are in a situation related to Umwelt und Natur. Have a dialogue with a partner.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Natur und Jahreszeiten — Writing Task 1', 'Write a short text (50-100 words) about natur und jahreszeiten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Natur und Jahreszeiten — Conversation 1', 'Practice a realistic conversation about natur und jahreszeiten in the context of Umwelt und Natur.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Natur und Jahreszeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Natur und Jahreszeiten — Conversation 2', 'Practice a realistic conversation about natur und jahreszeiten in the context of Umwelt und Natur.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Natur und Jahreszeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Natur und Jahreszeiten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Natur und Jahreszeiten". The dialogue should be realistic and related to Umwelt und Natur.', 'Creative practice for Natur und Jahreszeiten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Natur und Jahreszeiten — Deep Understanding', 'Explain the most important concepts from "Natur und Jahreszeiten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Natur und Jahreszeiten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Natur und Jahreszeiten — Reading Practice', 'This is a B1-level reading passage about natur und jahreszeiten in the context of Umwelt und Natur.

Natur und Jahreszeiten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Umwelt und Natur" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Natur und Jahreszeiten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Natur und Jahreszeiten" aus dem Modul "Umwelt und Natur".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Umwelt und Natur');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Technologie', 'formal', false, NULL, 1),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medien und Technologie', 'formal', false, NULL, 2),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Technologie', 'informal', false, NULL, 3),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medien und Technologie', 'informal', false, NULL, 4),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medien und Technologie', 'formal', false, NULL, 5),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medien und Technologie', 'formal', false, NULL, 6),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medien und Technologie', 'informal', false, NULL, 7),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medien und Technologie', 'neutral', false, NULL, 8),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medien und Technologie', 'neutral', false, NULL, 9),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medien und Technologie', 'informal', false, NULL, 10);

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
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Homework: Technologie und digitale Welt', 'Complete these tasks to reinforce "Technologie und digitale Welt" (Medien und Technologie).', 'mixed', '[{"description":"Review all vocabulary from \"Technologie und digitale Welt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'In this lesson on "Technologie und digitale Welt" (Medien und Technologie), you learned key vocabulary concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Technologie und digitale Welt\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Technologie und digitale Welt\""}]', ARRAY['"Technologie und digitale Welt" core vocabulary', 'Medien und Technologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technologie und digitale Welt — Speaking 1', 'Practice the key vocabulary and phrases from "Technologie und digitale Welt" aloud. Focus on correct pronunciation.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technologie und digitale Welt — Speaking 2', 'Role-play: Imagine you are in a situation related to Medien und Technologie. Have a dialogue with a partner.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technologie und digitale Welt — Writing Task 1', 'Write a short text (50-100 words) about technologie und digitale welt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technologie und digitale Welt — Conversation 1', 'Practice a realistic conversation about technologie und digitale welt in the context of Medien und Technologie.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Technologie und digitale Welt" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technologie und digitale Welt — Conversation 2', 'Practice a realistic conversation about technologie und digitale welt in the context of Medien und Technologie.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Technologie und digitale Welt" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technologie und digitale Welt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Technologie und digitale Welt". The dialogue should be realistic and related to Medien und Technologie.', 'Creative practice for Technologie und digitale Welt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technologie und digitale Welt — Deep Understanding', 'Explain the most important concepts from "Technologie und digitale Welt" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Technologie und digitale Welt', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technologie und digitale Welt — Reading Practice', 'This is a B1-level reading passage about technologie und digitale welt in the context of Medien und Technologie.

Technologie und digitale Welt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medien und Technologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Technologie und digitale Welt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Technologie und digitale Welt" aus dem Modul "Medien und Technologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medien und Technologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 5),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 6),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Homework: Konjunktiv II - hatte, ware und Hochlichkeitsformen', 'Complete these tasks to reinforce "Konjunktiv II - hatte, ware und Hochlichkeitsformen" (Arbeit und Karriere).', 'vocabulary', '[{"description":"Review all vocabulary from \"Konjunktiv II - hatte, ware und Hochlichkeitsformen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'In this lesson on "Konjunktiv II - hatte, ware und Hochlichkeitsformen" (Arbeit und Karriere), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Konjunktiv II - hatte, ware und Hochlichkeitsformen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Konjunktiv II - hatte, ware und Hochlichkeitsformen\""}]', ARRAY['"Konjunktiv II - hatte, ware und Hochlichkeitsformen" core vocabulary', 'Arbeit und Karriere key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Speaking 1', 'Practice the key vocabulary and phrases from "Konjunktiv II - hatte, ware und Hochlichkeitsformen" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Karriere. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Writing Task 1', 'Write a short text (50-100 words) about konjunktiv ii - hatte, ware und hochlichkeitsformen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Conversation 1', 'Practice a realistic conversation about konjunktiv ii - hatte, ware und hochlichkeitsformen in the context of Arbeit und Karriere.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Konjunktiv II - hatte, ware und Hochlichkeitsformen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv II - hatte, ware und Hochlichkeitsformen". The dialogue should be realistic and related to Arbeit und Karriere.', 'Creative practice for Konjunktiv II - hatte, ware und Hochlichkeitsformen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Deep Understanding', 'Explain the most important concepts from "Konjunktiv II - hatte, ware und Hochlichkeitsformen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Konjunktiv II - hatte, ware und Hochlichkeitsformen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Reading Practice', 'This is a B1-level reading passage about konjunktiv ii - hatte, ware und hochlichkeitsformen in the context of Arbeit und Karriere.

Konjunktiv II - hatte, ware und Hochlichkeitsformen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Karriere" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 110, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Konjunktiv II - hatte, ware und Hochlichkeitsformen" aus dem Modul "Arbeit und Karriere".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Karriere');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Homework: Präteritum der Modalverben und Vergleichsformen', 'Complete these tasks to reinforce "Präteritum der Modalverben und Vergleichsformen" (Alltag und Gesellschaft).', 'writing', '[{"description":"Review all vocabulary from \"Präteritum der Modalverben und Vergleichsformen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'In this lesson on "Präteritum der Modalverben und Vergleichsformen" (Alltag und Gesellschaft), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Präteritum der Modalverben und Vergleichsformen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Präteritum der Modalverben und Vergleichsformen\""}]', ARRAY['"Präteritum der Modalverben und Vergleichsformen" core vocabulary', 'Alltag und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Präteritum der Modalverben und Vergleichsformen — Speaking 1', 'Practice the key vocabulary and phrases from "Präteritum der Modalverben und Vergleichsformen" aloud. Focus on correct pronunciation.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Präteritum der Modalverben und Vergleichsformen — Speaking 2', 'Role-play: Imagine you are in a situation related to Alltag und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Präteritum der Modalverben und Vergleichsformen — Writing Task 1', 'Write a short text (50-100 words) about präteritum der modalverben und vergleichsformen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Präteritum der Modalverben und Vergleichsformen — Conversation 1', 'Practice a realistic conversation about präteritum der modalverben und vergleichsformen in the context of Alltag und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präteritum der Modalverben und Vergleichsformen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Präteritum der Modalverben und Vergleichsformen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präteritum der Modalverben und Vergleichsformen". The dialogue should be realistic and related to Alltag und Gesellschaft.', 'Creative practice for Präteritum der Modalverben und Vergleichsformen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Präteritum der Modalverben und Vergleichsformen — Deep Understanding', 'Explain the most important concepts from "Präteritum der Modalverben und Vergleichsformen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Präteritum der Modalverben und Vergleichsformen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Präteritum der Modalverben und Vergleichsformen — Reading Practice', 'This is a B1-level reading passage about präteritum der modalverben und vergleichsformen in the context of Alltag und Gesellschaft.

Präteritum der Modalverben und Vergleichsformen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Alltag und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Präteritum der Modalverben und Vergleichsformen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Präteritum der Modalverben und Vergleichsformen" aus dem Modul "Alltag und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Alltag und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 2),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 3),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 4),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 5),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 6),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 7);

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
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Homework: Konjunktiv II - hatte, ware und Hochlichkeitsformen', 'Complete these tasks to reinforce "Konjunktiv II - hatte, ware und Hochlichkeitsformen" (Arbeit und Karriere).', 'speaking', '[{"description":"Review all vocabulary from \"Konjunktiv II - hatte, ware und Hochlichkeitsformen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'In this lesson on "Konjunktiv II - hatte, ware und Hochlichkeitsformen" (Arbeit und Karriere), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Konjunktiv II - hatte, ware und Hochlichkeitsformen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Konjunktiv II - hatte, ware und Hochlichkeitsformen\""}]', ARRAY['"Konjunktiv II - hatte, ware und Hochlichkeitsformen" core vocabulary', 'Arbeit und Karriere key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Speaking 1', 'Practice the key vocabulary and phrases from "Konjunktiv II - hatte, ware und Hochlichkeitsformen" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Karriere. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Writing Task 1', 'Write a short text (50-100 words) about konjunktiv ii - hatte, ware und hochlichkeitsformen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Conversation 1', 'Practice a realistic conversation about konjunktiv ii - hatte, ware und hochlichkeitsformen in the context of Arbeit und Karriere.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Konjunktiv II - hatte, ware und Hochlichkeitsformen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Konjunktiv II - hatte, ware und Hochlichkeitsformen". The dialogue should be realistic and related to Arbeit und Karriere.', 'Creative practice for Konjunktiv II - hatte, ware und Hochlichkeitsformen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Deep Understanding', 'Explain the most important concepts from "Konjunktiv II - hatte, ware und Hochlichkeitsformen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Konjunktiv II - hatte, ware und Hochlichkeitsformen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Reading Practice', 'This is a B1-level reading passage about konjunktiv ii - hatte, ware und hochlichkeitsformen in the context of Arbeit und Karriere.

Konjunktiv II - hatte, ware und Hochlichkeitsformen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Karriere" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 110, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Konjunktiv II - hatte, ware und Hochlichkeitsformen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Konjunktiv II - hatte, ware und Hochlichkeitsformen" aus dem Modul "Arbeit und Karriere".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Karriere');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Medien und Technologie', 'neutral', false, NULL, 1),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Medien und Technologie', 'neutral', false, NULL, 2),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Medien und Technologie', 'neutral', false, NULL, 3),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Medien und Technologie', 'neutral', false, NULL, 4),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Medien und Technologie', 'informal', false, NULL, 5),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Medien und Technologie', 'neutral', false, NULL, 6),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Medien und Technologie', 'neutral', false, NULL, 7),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Medien und Technologie', 'neutral', false, NULL, 8);

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
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Homework: Relativsatze und Passiv mit Modalverben', 'Complete these tasks to reinforce "Relativsatze und Passiv mit Modalverben" (Medien und Technologie).', 'reading', '[{"description":"Review all vocabulary from \"Relativsatze und Passiv mit Modalverben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'In this lesson on "Relativsatze und Passiv mit Modalverben" (Medien und Technologie), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Relativsatze und Passiv mit Modalverben\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Relativsatze und Passiv mit Modalverben\""}]', ARRAY['"Relativsatze und Passiv mit Modalverben" core vocabulary', 'Medien und Technologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Relativsatze und Passiv mit Modalverben — Speaking 1', 'Practice the key vocabulary and phrases from "Relativsatze und Passiv mit Modalverben" aloud. Focus on correct pronunciation.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Relativsatze und Passiv mit Modalverben — Speaking 2', 'Role-play: Imagine you are in a situation related to Medien und Technologie. Have a dialogue with a partner.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Relativsatze und Passiv mit Modalverben — Writing Task 1', 'Write a short text (50-100 words) about relativsatze und passiv mit modalverben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Relativsatze und Passiv mit Modalverben — Conversation 1', 'Practice a realistic conversation about relativsatze und passiv mit modalverben in the context of Medien und Technologie.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Relativsatze und Passiv mit Modalverben" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Relativsatze und Passiv mit Modalverben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Relativsatze und Passiv mit Modalverben". The dialogue should be realistic and related to Medien und Technologie.', 'Creative practice for Relativsatze und Passiv mit Modalverben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Relativsatze und Passiv mit Modalverben — Deep Understanding', 'Explain the most important concepts from "Relativsatze und Passiv mit Modalverben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Relativsatze und Passiv mit Modalverben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Relativsatze und Passiv mit Modalverben — Reading Practice', 'This is a B1-level reading passage about relativsatze und passiv mit modalverben in the context of Medien und Technologie.

Relativsatze und Passiv mit Modalverben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medien und Technologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Relativsatze und Passiv mit Modalverben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Relativsatze und Passiv mit Modalverben" aus dem Modul "Medien und Technologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medien und Technologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 2),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 3),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Umwelt und Natur', 'informal', false, NULL, 5),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 6),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 7),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 8);

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
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Homework: Zweiteilige Konnektoren und Adjektivdeklination', 'Complete these tasks to reinforce "Zweiteilige Konnektoren und Adjektivdeklination" (Umwelt und Natur).', 'grammar', '[{"description":"Review all vocabulary from \"Zweiteilige Konnektoren und Adjektivdeklination\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'In this lesson on "Zweiteilige Konnektoren und Adjektivdeklination" (Umwelt und Natur), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Zweiteilige Konnektoren und Adjektivdeklination\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Zweiteilige Konnektoren und Adjektivdeklination\""}]', ARRAY['"Zweiteilige Konnektoren und Adjektivdeklination" core vocabulary', 'Umwelt und Natur key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Zweiteilige Konnektoren und Adjektivdeklination — Speaking 1', 'Practice the key vocabulary and phrases from "Zweiteilige Konnektoren und Adjektivdeklination" aloud. Focus on correct pronunciation.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Zweiteilige Konnektoren und Adjektivdeklination — Speaking 2', 'Role-play: Imagine you are in a situation related to Umwelt und Natur. Have a dialogue with a partner.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Zweiteilige Konnektoren und Adjektivdeklination — Writing Task 1', 'Write a short text (50-100 words) about zweiteilige konnektoren und adjektivdeklination. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Zweiteilige Konnektoren und Adjektivdeklination — Conversation 1', 'Practice a realistic conversation about zweiteilige konnektoren und adjektivdeklination in the context of Umwelt und Natur.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Zweiteilige Konnektoren und Adjektivdeklination" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Zweiteilige Konnektoren und Adjektivdeklination — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Zweiteilige Konnektoren und Adjektivdeklination". The dialogue should be realistic and related to Umwelt und Natur.', 'Creative practice for Zweiteilige Konnektoren und Adjektivdeklination', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Zweiteilige Konnektoren und Adjektivdeklination — Deep Understanding', 'Explain the most important concepts from "Zweiteilige Konnektoren und Adjektivdeklination" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Zweiteilige Konnektoren und Adjektivdeklination', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Zweiteilige Konnektoren und Adjektivdeklination — Reading Practice', 'This is a B1-level reading passage about zweiteilige konnektoren und adjektivdeklination in the context of Umwelt und Natur.

Zweiteilige Konnektoren und Adjektivdeklination is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Umwelt und Natur" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Zweiteilige Konnektoren und Adjektivdeklination — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Zweiteilige Konnektoren und Adjektivdeklination" aus dem Modul "Umwelt und Natur".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Umwelt und Natur');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 1),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 2),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 3),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 4),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 5),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 6),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 7),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 8);

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
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Homework: PrÃ¤positionaladverbien und FinalsÃ¤tze', 'Complete these tasks to reinforce "PrÃ¤positionaladverbien und FinalsÃ¤tze" (Gesundheit und ErnÃ¤hrung).', 'mixed', '[{"description":"Review all vocabulary from \"PrÃ¤positionaladverbien und FinalsÃ¤tze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'In this lesson on "PrÃ¤positionaladverbien und FinalsÃ¤tze" (Gesundheit und ErnÃ¤hrung), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"PrÃ¤positionaladverbien und FinalsÃ¤tze\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"PrÃ¤positionaladverbien und FinalsÃ¤tze\""}]', ARRAY['"PrÃ¤positionaladverbien und FinalsÃ¤tze" core vocabulary', 'Gesundheit und ErnÃ¤hrung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Speaking 1', 'Practice the key vocabulary and phrases from "PrÃ¤positionaladverbien und FinalsÃ¤tze" aloud. Focus on correct pronunciation.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Speaking 2', 'Role-play: Imagine you are in a situation related to Gesundheit und ErnÃ¤hrung. Have a dialogue with a partner.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Writing Task 1', 'Write a short text (50-100 words) about prã¤positionaladverbien und finalsã¤tze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Conversation 1', 'Practice a realistic conversation about prã¤positionaladverbien und finalsã¤tze in the context of Gesundheit und ErnÃ¤hrung.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "PrÃ¤positionaladverbien und FinalsÃ¤tze" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "PrÃ¤positionaladverbien und FinalsÃ¤tze". The dialogue should be realistic and related to Gesundheit und ErnÃ¤hrung.', 'Creative practice for PrÃ¤positionaladverbien und FinalsÃ¤tze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Deep Understanding', 'Explain the most important concepts from "PrÃ¤positionaladverbien und FinalsÃ¤tze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for PrÃ¤positionaladverbien und FinalsÃ¤tze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Reading Practice', 'This is a B1-level reading passage about prã¤positionaladverbien und finalsã¤tze in the context of Gesundheit und ErnÃ¤hrung.

PrÃ¤positionaladverbien und FinalsÃ¤tze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Gesundheit und ErnÃ¤hrung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "PrÃ¤positionaladverbien und FinalsÃ¤tze" aus dem Modul "Gesundheit und ErnÃ¤hrung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Gesundheit und ErnÃ¤hrung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 5),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 6),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 7),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 8);

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
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Homework: Modalverben zur subjektiven Bedeutung', 'Complete these tasks to reinforce "Modalverben zur subjektiven Bedeutung" (Beziehungen und Kommunikation).', 'vocabulary', '[{"description":"Review all vocabulary from \"Modalverben zur subjektiven Bedeutung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'In this lesson on "Modalverben zur subjektiven Bedeutung" (Beziehungen und Kommunikation), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modalverben zur subjektiven Bedeutung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modalverben zur subjektiven Bedeutung\""}]', ARRAY['"Modalverben zur subjektiven Bedeutung" core vocabulary', 'Beziehungen und Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Modalverben zur subjektiven Bedeutung — Speaking 1', 'Practice the key vocabulary and phrases from "Modalverben zur subjektiven Bedeutung" aloud. Focus on correct pronunciation.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Modalverben zur subjektiven Bedeutung — Speaking 2', 'Role-play: Imagine you are in a situation related to Beziehungen und Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Modalverben zur subjektiven Bedeutung — Writing Task 1', 'Write a short text (50-100 words) about modalverben zur subjektiven bedeutung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Modalverben zur subjektiven Bedeutung — Conversation 1', 'Practice a realistic conversation about modalverben zur subjektiven bedeutung in the context of Beziehungen und Kommunikation.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modalverben zur subjektiven Bedeutung" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Modalverben zur subjektiven Bedeutung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modalverben zur subjektiven Bedeutung". The dialogue should be realistic and related to Beziehungen und Kommunikation.', 'Creative practice for Modalverben zur subjektiven Bedeutung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Modalverben zur subjektiven Bedeutung — Deep Understanding', 'Explain the most important concepts from "Modalverben zur subjektiven Bedeutung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Modalverben zur subjektiven Bedeutung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Modalverben zur subjektiven Bedeutung — Reading Practice', 'This is a B1-level reading passage about modalverben zur subjektiven bedeutung in the context of Beziehungen und Kommunikation.

Modalverben zur subjektiven Bedeutung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Beziehungen und Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Modalverben zur subjektiven Bedeutung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modalverben zur subjektiven Bedeutung" aus dem Modul "Beziehungen und Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Beziehungen und Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Homework: Präteritum der Modalverben und Vergleichsformen', 'Complete these tasks to reinforce "Präteritum der Modalverben und Vergleichsformen" (Alltag und Gesellschaft).', 'writing', '[{"description":"Review all vocabulary from \"Präteritum der Modalverben und Vergleichsformen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'In this lesson on "Präteritum der Modalverben und Vergleichsformen" (Alltag und Gesellschaft), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Präteritum der Modalverben und Vergleichsformen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Präteritum der Modalverben und Vergleichsformen\""}]', ARRAY['"Präteritum der Modalverben und Vergleichsformen" core vocabulary', 'Alltag und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Präteritum der Modalverben und Vergleichsformen — Speaking 1', 'Practice the key vocabulary and phrases from "Präteritum der Modalverben und Vergleichsformen" aloud. Focus on correct pronunciation.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Präteritum der Modalverben und Vergleichsformen — Speaking 2', 'Role-play: Imagine you are in a situation related to Alltag und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Präteritum der Modalverben und Vergleichsformen — Writing Task 1', 'Write a short text (50-100 words) about präteritum der modalverben und vergleichsformen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Präteritum der Modalverben und Vergleichsformen — Conversation 1', 'Practice a realistic conversation about präteritum der modalverben und vergleichsformen in the context of Alltag und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präteritum der Modalverben und Vergleichsformen" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Präteritum der Modalverben und Vergleichsformen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präteritum der Modalverben und Vergleichsformen". The dialogue should be realistic and related to Alltag und Gesellschaft.', 'Creative practice for Präteritum der Modalverben und Vergleichsformen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Präteritum der Modalverben und Vergleichsformen — Deep Understanding', 'Explain the most important concepts from "Präteritum der Modalverben und Vergleichsformen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Präteritum der Modalverben und Vergleichsformen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Präteritum der Modalverben und Vergleichsformen — Reading Practice', 'This is a B1-level reading passage about präteritum der modalverben und vergleichsformen in the context of Alltag und Gesellschaft.

Präteritum der Modalverben und Vergleichsformen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Alltag und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Präteritum der Modalverben und Vergleichsformen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Präteritum der Modalverben und Vergleichsformen" aus dem Modul "Alltag und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Alltag und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Medien und Technologie', 'neutral', false, NULL, 1),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Medien und Technologie', 'neutral', false, NULL, 2),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Medien und Technologie', 'neutral', false, NULL, 3),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Medien und Technologie', 'neutral', false, NULL, 4),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Medien und Technologie', 'informal', false, NULL, 5),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Medien und Technologie', 'neutral', false, NULL, 6),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Medien und Technologie', 'neutral', false, NULL, 7),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Medien und Technologie', 'neutral', false, NULL, 8);

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
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Homework: Relativsatze und Passiv mit Modalverben', 'Complete these tasks to reinforce "Relativsatze und Passiv mit Modalverben" (Medien und Technologie).', 'speaking', '[{"description":"Review all vocabulary from \"Relativsatze und Passiv mit Modalverben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'In this lesson on "Relativsatze und Passiv mit Modalverben" (Medien und Technologie), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Relativsatze und Passiv mit Modalverben\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Relativsatze und Passiv mit Modalverben\""}]', ARRAY['"Relativsatze und Passiv mit Modalverben" core vocabulary', 'Medien und Technologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Relativsatze und Passiv mit Modalverben — Speaking 1', 'Practice the key vocabulary and phrases from "Relativsatze und Passiv mit Modalverben" aloud. Focus on correct pronunciation.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Relativsatze und Passiv mit Modalverben — Speaking 2', 'Role-play: Imagine you are in a situation related to Medien und Technologie. Have a dialogue with a partner.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Relativsatze und Passiv mit Modalverben — Writing Task 1', 'Write a short text (50-100 words) about relativsatze und passiv mit modalverben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Relativsatze und Passiv mit Modalverben — Conversation 1', 'Practice a realistic conversation about relativsatze und passiv mit modalverben in the context of Medien und Technologie.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Relativsatze und Passiv mit Modalverben" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Relativsatze und Passiv mit Modalverben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Relativsatze und Passiv mit Modalverben". The dialogue should be realistic and related to Medien und Technologie.', 'Creative practice for Relativsatze und Passiv mit Modalverben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Relativsatze und Passiv mit Modalverben — Deep Understanding', 'Explain the most important concepts from "Relativsatze und Passiv mit Modalverben" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Relativsatze und Passiv mit Modalverben', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Relativsatze und Passiv mit Modalverben — Reading Practice', 'This is a B1-level reading passage about relativsatze und passiv mit modalverben in the context of Medien und Technologie.

Relativsatze und Passiv mit Modalverben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medien und Technologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Relativsatze und Passiv mit Modalverben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Relativsatze und Passiv mit Modalverben" aus dem Modul "Medien und Technologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medien und Technologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 2),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 3),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Umwelt und Natur', 'informal', false, NULL, 5),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 6),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 7),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 8);

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
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Homework: Zweiteilige Konnektoren und Adjektivdeklination', 'Complete these tasks to reinforce "Zweiteilige Konnektoren und Adjektivdeklination" (Umwelt und Natur).', 'reading', '[{"description":"Review all vocabulary from \"Zweiteilige Konnektoren und Adjektivdeklination\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'In this lesson on "Zweiteilige Konnektoren und Adjektivdeklination" (Umwelt und Natur), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Zweiteilige Konnektoren und Adjektivdeklination\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Zweiteilige Konnektoren und Adjektivdeklination\""}]', ARRAY['"Zweiteilige Konnektoren und Adjektivdeklination" core vocabulary', 'Umwelt und Natur key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Zweiteilige Konnektoren und Adjektivdeklination — Speaking 1', 'Practice the key vocabulary and phrases from "Zweiteilige Konnektoren und Adjektivdeklination" aloud. Focus on correct pronunciation.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Zweiteilige Konnektoren und Adjektivdeklination — Speaking 2', 'Role-play: Imagine you are in a situation related to Umwelt und Natur. Have a dialogue with a partner.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Zweiteilige Konnektoren und Adjektivdeklination — Writing Task 1', 'Write a short text (50-100 words) about zweiteilige konnektoren und adjektivdeklination. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Zweiteilige Konnektoren und Adjektivdeklination — Conversation 1', 'Practice a realistic conversation about zweiteilige konnektoren und adjektivdeklination in the context of Umwelt und Natur.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Zweiteilige Konnektoren und Adjektivdeklination" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Zweiteilige Konnektoren und Adjektivdeklination — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Zweiteilige Konnektoren und Adjektivdeklination". The dialogue should be realistic and related to Umwelt und Natur.', 'Creative practice for Zweiteilige Konnektoren und Adjektivdeklination', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Zweiteilige Konnektoren und Adjektivdeklination — Deep Understanding', 'Explain the most important concepts from "Zweiteilige Konnektoren und Adjektivdeklination" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Zweiteilige Konnektoren und Adjektivdeklination', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Zweiteilige Konnektoren und Adjektivdeklination — Reading Practice', 'This is a B1-level reading passage about zweiteilige konnektoren und adjektivdeklination in the context of Umwelt und Natur.

Zweiteilige Konnektoren und Adjektivdeklination is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Umwelt und Natur" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Zweiteilige Konnektoren und Adjektivdeklination — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Zweiteilige Konnektoren und Adjektivdeklination" aus dem Modul "Umwelt und Natur".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Umwelt und Natur');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 5),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 6),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 7),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 8);

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
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Homework: PrÃ¤positionaladverbien und FinalsÃ¤tze', 'Complete these tasks to reinforce "PrÃ¤positionaladverbien und FinalsÃ¤tze" (Gesundheit und ErnÃ¤hrung).', 'grammar', '[{"description":"Review all vocabulary from \"PrÃ¤positionaladverbien und FinalsÃ¤tze\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'In this lesson on "PrÃ¤positionaladverbien und FinalsÃ¤tze" (Gesundheit und ErnÃ¤hrung), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"PrÃ¤positionaladverbien und FinalsÃ¤tze\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"PrÃ¤positionaladverbien und FinalsÃ¤tze\""}]', ARRAY['"PrÃ¤positionaladverbien und FinalsÃ¤tze" core vocabulary', 'Gesundheit und ErnÃ¤hrung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Speaking 1', 'Practice the key vocabulary and phrases from "PrÃ¤positionaladverbien und FinalsÃ¤tze" aloud. Focus on correct pronunciation.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Speaking 2', 'Role-play: Imagine you are in a situation related to Gesundheit und ErnÃ¤hrung. Have a dialogue with a partner.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Writing Task 1', 'Write a short text (50-100 words) about prã¤positionaladverbien und finalsã¤tze. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Conversation 1', 'Practice a realistic conversation about prã¤positionaladverbien und finalsã¤tze in the context of Gesundheit und ErnÃ¤hrung.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "PrÃ¤positionaladverbien und FinalsÃ¤tze" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "PrÃ¤positionaladverbien und FinalsÃ¤tze". The dialogue should be realistic and related to Gesundheit und ErnÃ¤hrung.', 'Creative practice for PrÃ¤positionaladverbien und FinalsÃ¤tze', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Deep Understanding', 'Explain the most important concepts from "PrÃ¤positionaladverbien und FinalsÃ¤tze" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for PrÃ¤positionaladverbien und FinalsÃ¤tze', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Reading Practice', 'This is a B1-level reading passage about prã¤positionaladverbien und finalsã¤tze in the context of Gesundheit und ErnÃ¤hrung.

PrÃ¤positionaladverbien und FinalsÃ¤tze is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Gesundheit und ErnÃ¤hrung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'PrÃ¤positionaladverbien und FinalsÃ¤tze — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "PrÃ¤positionaladverbien und FinalsÃ¤tze" aus dem Modul "Gesundheit und ErnÃ¤hrung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Gesundheit und ErnÃ¤hrung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 1),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 2),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 3),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 4),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 5),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 6),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 7),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 8);

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
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Homework: Modalverben zur subjektiven Bedeutung', 'Complete these tasks to reinforce "Modalverben zur subjektiven Bedeutung" (Beziehungen und Kommunikation).', 'mixed', '[{"description":"Review all vocabulary from \"Modalverben zur subjektiven Bedeutung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'In this lesson on "Modalverben zur subjektiven Bedeutung" (Beziehungen und Kommunikation), you learned key grammar concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modalverben zur subjektiven Bedeutung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modalverben zur subjektiven Bedeutung\""}]', ARRAY['"Modalverben zur subjektiven Bedeutung" core vocabulary', 'Beziehungen und Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Modalverben zur subjektiven Bedeutung — Speaking 1', 'Practice the key vocabulary and phrases from "Modalverben zur subjektiven Bedeutung" aloud. Focus on correct pronunciation.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Modalverben zur subjektiven Bedeutung — Speaking 2', 'Role-play: Imagine you are in a situation related to Beziehungen und Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Modalverben zur subjektiven Bedeutung — Writing Task 1', 'Write a short text (50-100 words) about modalverben zur subjektiven bedeutung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Modalverben zur subjektiven Bedeutung — Conversation 1', 'Practice a realistic conversation about modalverben zur subjektiven bedeutung in the context of Beziehungen und Kommunikation.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modalverben zur subjektiven Bedeutung" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Modalverben zur subjektiven Bedeutung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modalverben zur subjektiven Bedeutung". The dialogue should be realistic and related to Beziehungen und Kommunikation.', 'Creative practice for Modalverben zur subjektiven Bedeutung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Modalverben zur subjektiven Bedeutung — Deep Understanding', 'Explain the most important concepts from "Modalverben zur subjektiven Bedeutung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Modalverben zur subjektiven Bedeutung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Modalverben zur subjektiven Bedeutung — Reading Practice', 'This is a B1-level reading passage about modalverben zur subjektiven bedeutung in the context of Beziehungen und Kommunikation.

Modalverben zur subjektiven Bedeutung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Beziehungen und Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Modalverben zur subjektiven Bedeutung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modalverben zur subjektiven Bedeutung" aus dem Modul "Beziehungen und Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Beziehungen und Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Homework: Mein Alltag: Ein Tag in Deutschland', 'Complete these tasks to reinforce "Mein Alltag: Ein Tag in Deutschland" (Alltag und Gesellschaft).', 'vocabulary', '[{"description":"Review all vocabulary from \"Mein Alltag: Ein Tag in Deutschland\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'In this lesson on "Mein Alltag: Ein Tag in Deutschland" (Alltag und Gesellschaft), you learned key reading concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Alltag: Ein Tag in Deutschland\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Alltag: Ein Tag in Deutschland\""}]', ARRAY['"Mein Alltag: Ein Tag in Deutschland" core vocabulary', 'Alltag und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Mein Alltag: Ein Tag in Deutschland — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Alltag: Ein Tag in Deutschland" aloud. Focus on correct pronunciation.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Mein Alltag: Ein Tag in Deutschland — Speaking 2', 'Role-play: Imagine you are in a situation related to Alltag und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Mein Alltag: Ein Tag in Deutschland — Writing Task 1', 'Write a short text (50-100 words) about mein alltag: ein tag in deutschland. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Mein Alltag: Ein Tag in Deutschland — Conversation 1', 'Practice a realistic conversation about mein alltag: ein tag in deutschland in the context of Alltag und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Alltag: Ein Tag in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Mein Alltag: Ein Tag in Deutschland — Conversation 2', 'Practice a realistic conversation about mein alltag: ein tag in deutschland in the context of Alltag und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Alltag: Ein Tag in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Mein Alltag: Ein Tag in Deutschland — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Alltag: Ein Tag in Deutschland". The dialogue should be realistic and related to Alltag und Gesellschaft.', 'Creative practice for Mein Alltag: Ein Tag in Deutschland', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Mein Alltag: Ein Tag in Deutschland — Reading Practice', 'This is a B1-level reading passage about mein alltag: ein tag in deutschland in the context of Alltag und Gesellschaft.

Mein Alltag: Ein Tag in Deutschland is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Alltag und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 108, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Mein Alltag: Ein Tag in Deutschland — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Alltag: Ein Tag in Deutschland" aus dem Modul "Alltag und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Alltag und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 1),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 2),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 3),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 4),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 5),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 6),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 7),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 8),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 9),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 10);

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
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Homework: Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren', 'Complete these tasks to reinforce "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" (Gesundheit und ErnÃ¤hrung).', 'writing', '[{"description":"Review all vocabulary from \"Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'In this lesson on "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" (Gesundheit und ErnÃ¤hrung), you learned key listening concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren\""}]', ARRAY['"Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" core vocabulary', 'Gesundheit und ErnÃ¤hrung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Speaking 1', 'Practice the key vocabulary and phrases from "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" aloud. Focus on correct pronunciation.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Speaking 2', 'Role-play: Imagine you are in a situation related to Gesundheit und ErnÃ¤hrung. Have a dialogue with a partner.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Writing Task 1', 'Write a short text (50-100 words) about beim arzt â€“ ein gesprã¤ch fã¼hren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Conversation 1', 'Practice a realistic conversation about beim arzt â€“ ein gesprã¤ch fã¼hren in the context of Gesundheit und ErnÃ¤hrung.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren". The dialogue should be realistic and related to Gesundheit und ErnÃ¤hrung.', 'Creative practice for Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Reading Practice', 'This is a B1-level reading passage about beim arzt â€“ ein gesprã¤ch fã¼hren in the context of Gesundheit und ErnÃ¤hrung.

Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Gesundheit und ErnÃ¤hrung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 108, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" aus dem Modul "Gesundheit und ErnÃ¤hrung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Gesundheit und ErnÃ¤hrung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Arbeit und Karriere', 'formal', false, NULL, 2),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Karriere', 'informal', false, NULL, 3),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Arbeit und Karriere', 'informal', false, NULL, 4),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Arbeit und Karriere', 'formal', false, NULL, 5),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Arbeit und Karriere', 'formal', false, NULL, 6),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Arbeit und Karriere', 'informal', false, NULL, 7),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 8),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 9),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Arbeit und Karriere', 'informal', false, NULL, 10);

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
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Homework: Das Vorstellungsgesprach', 'Complete these tasks to reinforce "Das Vorstellungsgesprach" (Arbeit und Karriere).', 'speaking', '[{"description":"Review all vocabulary from \"Das Vorstellungsgesprach\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'In this lesson on "Das Vorstellungsgesprach" (Arbeit und Karriere), you learned key speaking concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Das Vorstellungsgesprach\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Das Vorstellungsgesprach\""}]', ARRAY['"Das Vorstellungsgesprach" core vocabulary', 'Arbeit und Karriere key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Das Vorstellungsgesprach — Speaking 1', 'Practice the key vocabulary and phrases from "Das Vorstellungsgesprach" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Das Vorstellungsgesprach — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Karriere. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Das Vorstellungsgesprach — Writing Task 1', 'Write a short text (50-100 words) about das vorstellungsgesprach. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Das Vorstellungsgesprach — Conversation 1', 'Practice a realistic conversation about das vorstellungsgesprach in the context of Arbeit und Karriere.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Das Vorstellungsgesprach" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Das Vorstellungsgesprach — Conversation 2', 'Practice a realistic conversation about das vorstellungsgesprach in the context of Arbeit und Karriere.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Das Vorstellungsgesprach" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Das Vorstellungsgesprach — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Vorstellungsgesprach". The dialogue should be realistic and related to Arbeit und Karriere.', 'Creative practice for Das Vorstellungsgesprach', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Das Vorstellungsgesprach — Reading Practice', 'This is a B1-level reading passage about das vorstellungsgesprach in the context of Arbeit und Karriere.

Das Vorstellungsgesprach is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Karriere" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Das Vorstellungsgesprach — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Das Vorstellungsgesprach" aus dem Modul "Arbeit und Karriere".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Karriere');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 1),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 2),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 3),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 4),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 5),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 6),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 7),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 8),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 9),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 10);

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
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Homework: Eine formelle E-Mail schreiben', 'Complete these tasks to reinforce "Eine formelle E-Mail schreiben" (Beziehungen und Kommunikation).', 'reading', '[{"description":"Review all vocabulary from \"Eine formelle E-Mail schreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'In this lesson on "Eine formelle E-Mail schreiben" (Beziehungen und Kommunikation), you learned key writing concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Eine formelle E-Mail schreiben\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Eine formelle E-Mail schreiben\""}]', ARRAY['"Eine formelle E-Mail schreiben" core vocabulary', 'Beziehungen und Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Eine formelle E-Mail schreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Eine formelle E-Mail schreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Eine formelle E-Mail schreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Beziehungen und Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Eine formelle E-Mail schreiben — Writing Task 1', 'Write a short text (50-100 words) about eine formelle e-mail schreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Eine formelle E-Mail schreiben — Writing Task 2', 'Write 5 questions about eine formelle e-mail schreiben and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Eine formelle E-Mail schreiben — Conversation 1', 'Practice a realistic conversation about eine formelle e-mail schreiben in the context of Beziehungen und Kommunikation.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Eine formelle E-Mail schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Eine formelle E-Mail schreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Eine formelle E-Mail schreiben". The dialogue should be realistic and related to Beziehungen und Kommunikation.', 'Creative practice for Eine formelle E-Mail schreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Eine formelle E-Mail schreiben — Reading Practice', 'This is a B1-level reading passage about eine formelle e-mail schreiben in the context of Beziehungen und Kommunikation.

Eine formelle E-Mail schreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Beziehungen und Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Eine formelle E-Mail schreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Eine formelle E-Mail schreiben" aus dem Modul "Beziehungen und Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Beziehungen und Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 1),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 2),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 3),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 4),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 5),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 6),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 7),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 8),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 9),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Gesundheit und ErnÃ¤hrung', 'informal', false, NULL, 10);

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
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Homework: Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren', 'Complete these tasks to reinforce "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" (Gesundheit und ErnÃ¤hrung).', 'grammar', '[{"description":"Review all vocabulary from \"Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'In this lesson on "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" (Gesundheit und ErnÃ¤hrung), you learned key listening concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren\""}]', ARRAY['"Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" core vocabulary', 'Gesundheit und ErnÃ¤hrung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Speaking 1', 'Practice the key vocabulary and phrases from "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" aloud. Focus on correct pronunciation.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Speaking 2', 'Role-play: Imagine you are in a situation related to Gesundheit und ErnÃ¤hrung. Have a dialogue with a partner.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Writing Task 1', 'Write a short text (50-100 words) about beim arzt â€“ ein gesprã¤ch fã¼hren. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Conversation 1', 'Practice a realistic conversation about beim arzt â€“ ein gesprã¤ch fã¼hren in the context of Gesundheit und ErnÃ¤hrung.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren". The dialogue should be realistic and related to Gesundheit und ErnÃ¤hrung.', 'Creative practice for Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Reading Practice', 'This is a B1-level reading passage about beim arzt â€“ ein gesprã¤ch fã¼hren in the context of Gesundheit und ErnÃ¤hrung.

Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Gesundheit und ErnÃ¤hrung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 108, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Beim Arzt â€“ Ein GesprÃ¤ch fÃ¼hren" aus dem Modul "Gesundheit und ErnÃ¤hrung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Gesundheit und ErnÃ¤hrung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Homework: Mein Alltag: Ein Tag in Deutschland', 'Complete these tasks to reinforce "Mein Alltag: Ein Tag in Deutschland" (Alltag und Gesellschaft).', 'mixed', '[{"description":"Review all vocabulary from \"Mein Alltag: Ein Tag in Deutschland\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'In this lesson on "Mein Alltag: Ein Tag in Deutschland" (Alltag und Gesellschaft), you learned key reading concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Mein Alltag: Ein Tag in Deutschland\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Mein Alltag: Ein Tag in Deutschland\""}]', ARRAY['"Mein Alltag: Ein Tag in Deutschland" core vocabulary', 'Alltag und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Mein Alltag: Ein Tag in Deutschland — Speaking 1', 'Practice the key vocabulary and phrases from "Mein Alltag: Ein Tag in Deutschland" aloud. Focus on correct pronunciation.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Mein Alltag: Ein Tag in Deutschland — Speaking 2', 'Role-play: Imagine you are in a situation related to Alltag und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Mein Alltag: Ein Tag in Deutschland — Writing Task 1', 'Write a short text (50-100 words) about mein alltag: ein tag in deutschland. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Mein Alltag: Ein Tag in Deutschland — Conversation 1', 'Practice a realistic conversation about mein alltag: ein tag in deutschland in the context of Alltag und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Alltag: Ein Tag in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Mein Alltag: Ein Tag in Deutschland — Conversation 2', 'Practice a realistic conversation about mein alltag: ein tag in deutschland in the context of Alltag und Gesellschaft.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Mein Alltag: Ein Tag in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Mein Alltag: Ein Tag in Deutschland — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mein Alltag: Ein Tag in Deutschland". The dialogue should be realistic and related to Alltag und Gesellschaft.', 'Creative practice for Mein Alltag: Ein Tag in Deutschland', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Mein Alltag: Ein Tag in Deutschland — Reading Practice', 'This is a B1-level reading passage about mein alltag: ein tag in deutschland in the context of Alltag und Gesellschaft.

Mein Alltag: Ein Tag in Deutschland is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Alltag und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 108, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Mein Alltag: Ein Tag in Deutschland — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Mein Alltag: Ein Tag in Deutschland" aus dem Modul "Alltag und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Alltag und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Technologie', 'formal', false, NULL, 1),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medien und Technologie', 'formal', false, NULL, 2),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Technologie', 'informal', false, NULL, 3),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medien und Technologie', 'informal', false, NULL, 4),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medien und Technologie', 'formal', false, NULL, 5),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medien und Technologie', 'formal', false, NULL, 6),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medien und Technologie', 'informal', false, NULL, 7),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medien und Technologie', 'neutral', false, NULL, 8),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medien und Technologie', 'neutral', false, NULL, 9),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medien und Technologie', 'informal', false, NULL, 10);

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
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Homework: Diskussion Ã¼ber Medien und Technologie', 'Complete these tasks to reinforce "Diskussion Ã¼ber Medien und Technologie" (Medien und Technologie).', 'vocabulary', '[{"description":"Review all vocabulary from \"Diskussion Ã¼ber Medien und Technologie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'In this lesson on "Diskussion Ã¼ber Medien und Technologie" (Medien und Technologie), you learned key listening concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Diskussion Ã¼ber Medien und Technologie\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Diskussion Ã¼ber Medien und Technologie\""}]', ARRAY['"Diskussion Ã¼ber Medien und Technologie" core vocabulary', 'Medien und Technologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Diskussion Ã¼ber Medien und Technologie — Speaking 1', 'Practice the key vocabulary and phrases from "Diskussion Ã¼ber Medien und Technologie" aloud. Focus on correct pronunciation.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Diskussion Ã¼ber Medien und Technologie — Speaking 2', 'Role-play: Imagine you are in a situation related to Medien und Technologie. Have a dialogue with a partner.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Diskussion Ã¼ber Medien und Technologie — Writing Task 1', 'Write a short text (50-100 words) about diskussion ã¼ber medien und technologie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Diskussion Ã¼ber Medien und Technologie — Conversation 1', 'Practice a realistic conversation about diskussion ã¼ber medien und technologie in the context of Medien und Technologie.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Diskussion Ã¼ber Medien und Technologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Diskussion Ã¼ber Medien und Technologie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Diskussion Ã¼ber Medien und Technologie". The dialogue should be realistic and related to Medien und Technologie.', 'Creative practice for Diskussion Ã¼ber Medien und Technologie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Diskussion Ã¼ber Medien und Technologie — Reading Practice', 'This is a B1-level reading passage about diskussion ã¼ber medien und technologie in the context of Medien und Technologie.

Diskussion Ã¼ber Medien und Technologie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medien und Technologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Diskussion Ã¼ber Medien und Technologie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Diskussion Ã¼ber Medien und Technologie" aus dem Modul "Medien und Technologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medien und Technologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Medien und Technologie', 'formal', false, NULL, 1),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Medien und Technologie', 'formal', false, NULL, 2),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Medien und Technologie', 'informal', false, NULL, 3),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Medien und Technologie', 'informal', false, NULL, 4),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Medien und Technologie', 'formal', false, NULL, 5),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Medien und Technologie', 'formal', false, NULL, 6),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Medien und Technologie', 'informal', false, NULL, 7),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Medien und Technologie', 'neutral', false, NULL, 8),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Medien und Technologie', 'neutral', false, NULL, 9),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Medien und Technologie', 'informal', false, NULL, 10);

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
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Homework: Diskussion Ã¼ber Medien und Technologie', 'Complete these tasks to reinforce "Diskussion Ã¼ber Medien und Technologie" (Medien und Technologie).', 'writing', '[{"description":"Review all vocabulary from \"Diskussion Ã¼ber Medien und Technologie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'In this lesson on "Diskussion Ã¼ber Medien und Technologie" (Medien und Technologie), you learned key listening concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Diskussion Ã¼ber Medien und Technologie\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Diskussion Ã¼ber Medien und Technologie\""}]', ARRAY['"Diskussion Ã¼ber Medien und Technologie" core vocabulary', 'Medien und Technologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Diskussion Ã¼ber Medien und Technologie — Speaking 1', 'Practice the key vocabulary and phrases from "Diskussion Ã¼ber Medien und Technologie" aloud. Focus on correct pronunciation.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Diskussion Ã¼ber Medien und Technologie — Speaking 2', 'Role-play: Imagine you are in a situation related to Medien und Technologie. Have a dialogue with a partner.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Diskussion Ã¼ber Medien und Technologie — Writing Task 1', 'Write a short text (50-100 words) about diskussion ã¼ber medien und technologie. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Diskussion Ã¼ber Medien und Technologie — Conversation 1', 'Practice a realistic conversation about diskussion ã¼ber medien und technologie in the context of Medien und Technologie.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Diskussion Ã¼ber Medien und Technologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Diskussion Ã¼ber Medien und Technologie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Diskussion Ã¼ber Medien und Technologie". The dialogue should be realistic and related to Medien und Technologie.', 'Creative practice for Diskussion Ã¼ber Medien und Technologie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Diskussion Ã¼ber Medien und Technologie — Reading Practice', 'This is a B1-level reading passage about diskussion ã¼ber medien und technologie in the context of Medien und Technologie.

Diskussion Ã¼ber Medien und Technologie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medien und Technologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Diskussion Ã¼ber Medien und Technologie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Diskussion Ã¼ber Medien und Technologie" aus dem Modul "Medien und Technologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medien und Technologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 2),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Umwelt und Natur', 'informal', false, NULL, 3),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 5),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Umwelt und Natur', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Homework: Blogbeitrag: Umweltschutz im Alltag', 'Complete these tasks to reinforce "Blogbeitrag: Umweltschutz im Alltag" (Umwelt und Natur).', 'speaking', '[{"description":"Review all vocabulary from \"Blogbeitrag: Umweltschutz im Alltag\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'In this lesson on "Blogbeitrag: Umweltschutz im Alltag" (Umwelt und Natur), you learned key writing concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Blogbeitrag: Umweltschutz im Alltag\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Blogbeitrag: Umweltschutz im Alltag\""}]', ARRAY['"Blogbeitrag: Umweltschutz im Alltag" core vocabulary', 'Umwelt und Natur key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Blogbeitrag: Umweltschutz im Alltag — Speaking 1', 'Practice the key vocabulary and phrases from "Blogbeitrag: Umweltschutz im Alltag" aloud. Focus on correct pronunciation.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Blogbeitrag: Umweltschutz im Alltag — Speaking 2', 'Role-play: Imagine you are in a situation related to Umwelt und Natur. Have a dialogue with a partner.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Blogbeitrag: Umweltschutz im Alltag — Writing Task 1', 'Write a short text (50-100 words) about blogbeitrag: umweltschutz im alltag. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Blogbeitrag: Umweltschutz im Alltag — Writing Task 2', 'Write 5 questions about blogbeitrag: umweltschutz im alltag and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Blogbeitrag: Umweltschutz im Alltag — Conversation 1', 'Practice a realistic conversation about blogbeitrag: umweltschutz im alltag in the context of Umwelt und Natur.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Blogbeitrag: Umweltschutz im Alltag" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Blogbeitrag: Umweltschutz im Alltag — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Blogbeitrag: Umweltschutz im Alltag". The dialogue should be realistic and related to Umwelt und Natur.', 'Creative practice for Blogbeitrag: Umweltschutz im Alltag', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Blogbeitrag: Umweltschutz im Alltag — Reading Practice', 'This is a B1-level reading passage about blogbeitrag: umweltschutz im alltag in the context of Umwelt und Natur.

Blogbeitrag: Umweltschutz im Alltag is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Umwelt und Natur" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Blogbeitrag: Umweltschutz im Alltag — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Blogbeitrag: Umweltschutz im Alltag" aus dem Modul "Umwelt und Natur".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Umwelt und Natur');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Arbeit und Karriere', 'formal', false, NULL, 2),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Arbeit und Karriere', 'informal', false, NULL, 3),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Arbeit und Karriere', 'informal', false, NULL, 4),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Arbeit und Karriere', 'formal', false, NULL, 5),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Arbeit und Karriere', 'formal', false, NULL, 6),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Arbeit und Karriere', 'informal', false, NULL, 7),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 8),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 9),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Arbeit und Karriere', 'informal', false, NULL, 10);

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
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Homework: Das Vorstellungsgesprach', 'Complete these tasks to reinforce "Das Vorstellungsgesprach" (Arbeit und Karriere).', 'reading', '[{"description":"Review all vocabulary from \"Das Vorstellungsgesprach\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'In this lesson on "Das Vorstellungsgesprach" (Arbeit und Karriere), you learned key speaking concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Das Vorstellungsgesprach\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Das Vorstellungsgesprach\""}]', ARRAY['"Das Vorstellungsgesprach" core vocabulary', 'Arbeit und Karriere key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Das Vorstellungsgesprach — Speaking 1', 'Practice the key vocabulary and phrases from "Das Vorstellungsgesprach" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Das Vorstellungsgesprach — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Karriere. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Das Vorstellungsgesprach — Writing Task 1', 'Write a short text (50-100 words) about das vorstellungsgesprach. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Das Vorstellungsgesprach — Conversation 1', 'Practice a realistic conversation about das vorstellungsgesprach in the context of Arbeit und Karriere.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Das Vorstellungsgesprach" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Das Vorstellungsgesprach — Conversation 2', 'Practice a realistic conversation about das vorstellungsgesprach in the context of Arbeit und Karriere.', 'Customer', 'Assistant', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Das Vorstellungsgesprach" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Das Vorstellungsgesprach — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Vorstellungsgesprach". The dialogue should be realistic and related to Arbeit und Karriere.', 'Creative practice for Das Vorstellungsgesprach', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Das Vorstellungsgesprach — Reading Practice', 'This is a B1-level reading passage about das vorstellungsgesprach in the context of Arbeit und Karriere.

Das Vorstellungsgesprach is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Karriere" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Das Vorstellungsgesprach — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Das Vorstellungsgesprach" aus dem Modul "Arbeit und Karriere".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Karriere');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 1),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 2),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 3),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 4),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 5),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 6),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 7),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 8),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 9),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Beziehungen und Kommunikation', 'informal', false, NULL, 10);

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
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Homework: Eine formelle E-Mail schreiben', 'Complete these tasks to reinforce "Eine formelle E-Mail schreiben" (Beziehungen und Kommunikation).', 'grammar', '[{"description":"Review all vocabulary from \"Eine formelle E-Mail schreiben\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'In this lesson on "Eine formelle E-Mail schreiben" (Beziehungen und Kommunikation), you learned key writing concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Eine formelle E-Mail schreiben\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Eine formelle E-Mail schreiben\""}]', ARRAY['"Eine formelle E-Mail schreiben" core vocabulary', 'Beziehungen und Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Eine formelle E-Mail schreiben — Speaking 1', 'Practice the key vocabulary and phrases from "Eine formelle E-Mail schreiben" aloud. Focus on correct pronunciation.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Eine formelle E-Mail schreiben — Speaking 2', 'Role-play: Imagine you are in a situation related to Beziehungen und Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Eine formelle E-Mail schreiben — Writing Task 1', 'Write a short text (50-100 words) about eine formelle e-mail schreiben. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Eine formelle E-Mail schreiben — Writing Task 2', 'Write 5 questions about eine formelle e-mail schreiben and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Eine formelle E-Mail schreiben — Conversation 1', 'Practice a realistic conversation about eine formelle e-mail schreiben in the context of Beziehungen und Kommunikation.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Eine formelle E-Mail schreiben" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Eine formelle E-Mail schreiben — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Eine formelle E-Mail schreiben". The dialogue should be realistic and related to Beziehungen und Kommunikation.', 'Creative practice for Eine formelle E-Mail schreiben', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Eine formelle E-Mail schreiben — Reading Practice', 'This is a B1-level reading passage about eine formelle e-mail schreiben in the context of Beziehungen und Kommunikation.

Eine formelle E-Mail schreiben is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Beziehungen und Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Eine formelle E-Mail schreiben — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Eine formelle E-Mail schreiben" aus dem Modul "Beziehungen und Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Beziehungen und Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 2),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Umwelt und Natur', 'informal', false, NULL, 3),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 5),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Umwelt und Natur', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Homework: Blogbeitrag: Umweltschutz im Alltag', 'Complete these tasks to reinforce "Blogbeitrag: Umweltschutz im Alltag" (Umwelt und Natur).', 'mixed', '[{"description":"Review all vocabulary from \"Blogbeitrag: Umweltschutz im Alltag\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'In this lesson on "Blogbeitrag: Umweltschutz im Alltag" (Umwelt und Natur), you learned key writing concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Blogbeitrag: Umweltschutz im Alltag\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Blogbeitrag: Umweltschutz im Alltag\""}]', ARRAY['"Blogbeitrag: Umweltschutz im Alltag" core vocabulary', 'Umwelt und Natur key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Blogbeitrag: Umweltschutz im Alltag — Speaking 1', 'Practice the key vocabulary and phrases from "Blogbeitrag: Umweltschutz im Alltag" aloud. Focus on correct pronunciation.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Blogbeitrag: Umweltschutz im Alltag — Speaking 2', 'Role-play: Imagine you are in a situation related to Umwelt und Natur. Have a dialogue with a partner.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Blogbeitrag: Umweltschutz im Alltag — Writing Task 1', 'Write a short text (50-100 words) about blogbeitrag: umweltschutz im alltag. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Blogbeitrag: Umweltschutz im Alltag — Writing Task 2', 'Write 5 questions about blogbeitrag: umweltschutz im alltag and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Blogbeitrag: Umweltschutz im Alltag — Conversation 1', 'Practice a realistic conversation about blogbeitrag: umweltschutz im alltag in the context of Umwelt und Natur.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Blogbeitrag: Umweltschutz im Alltag" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Blogbeitrag: Umweltschutz im Alltag — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Blogbeitrag: Umweltschutz im Alltag". The dialogue should be realistic and related to Umwelt und Natur.', 'Creative practice for Blogbeitrag: Umweltschutz im Alltag', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Blogbeitrag: Umweltschutz im Alltag — Reading Practice', 'This is a B1-level reading passage about blogbeitrag: umweltschutz im alltag in the context of Umwelt und Natur.

Blogbeitrag: Umweltschutz im Alltag is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Umwelt und Natur" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Blogbeitrag: Umweltschutz im Alltag — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Blogbeitrag: Umweltschutz im Alltag" aus dem Modul "Umwelt und Natur".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Umwelt und Natur');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medien und Technologie', 'neutral', false, NULL, 1),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medien und Technologie', 'formal', false, NULL, 2),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medien und Technologie', 'neutral', false, NULL, 3),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medien und Technologie', 'neutral', false, NULL, 4),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medien und Technologie', 'formal', false, NULL, 5);

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
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Homework: Wiederholung: Medien und Technologie', 'Complete these tasks to reinforce "Wiederholung: Medien und Technologie" (Medien und Technologie).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Medien und Technologie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'In this lesson on "Wiederholung: Medien und Technologie" (Medien und Technologie), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Medien und Technologie\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Medien und Technologie\""}]', ARRAY['"Wiederholung: Medien und Technologie" core vocabulary', 'Medien und Technologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Medien und Technologie — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Medien und Technologie" aloud. Focus on correct pronunciation.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Medien und Technologie — Speaking 2', 'Role-play: Imagine you are in a situation related to Medien und Technologie. Have a dialogue with a partner.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Medien und Technologie — Conversation 1', 'Practice a realistic conversation about wiederholung: medien und technologie in the context of Medien und Technologie.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Medien und Technologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Medien und Technologie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Medien und Technologie". The dialogue should be realistic and related to Medien und Technologie.', 'Creative practice for Wiederholung: Medien und Technologie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Medien und Technologie — Reading Practice', 'This is a B1-level reading passage about wiederholung: medien und technologie in the context of Medien und Technologie.

Wiederholung: Medien und Technologie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medien und Technologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Medien und Technologie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Medien und Technologie" aus dem Modul "Medien und Technologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medien und Technologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medien und Technologie', 'neutral', false, NULL, 1),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medien und Technologie', 'formal', false, NULL, 2),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medien und Technologie', 'neutral', false, NULL, 3),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medien und Technologie', 'neutral', false, NULL, 4),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medien und Technologie', 'formal', false, NULL, 5);

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
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Homework: Wiederholung: Medien und Technologie', 'Complete these tasks to reinforce "Wiederholung: Medien und Technologie" (Medien und Technologie).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Medien und Technologie\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'In this lesson on "Wiederholung: Medien und Technologie" (Medien und Technologie), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Medien und Technologie\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Medien und Technologie\""}]', ARRAY['"Wiederholung: Medien und Technologie" core vocabulary', 'Medien und Technologie key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medien und Technologie — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Medien und Technologie" aloud. Focus on correct pronunciation.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medien und Technologie — Speaking 2', 'Role-play: Imagine you are in a situation related to Medien und Technologie. Have a dialogue with a partner.', 'Speaking practice for Medien und Technologie', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medien und Technologie — Conversation 1', 'Practice a realistic conversation about wiederholung: medien und technologie in the context of Medien und Technologie.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Medien und Technologie" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medien und Technologie — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Medien und Technologie". The dialogue should be realistic and related to Medien und Technologie.', 'Creative practice for Wiederholung: Medien und Technologie', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medien und Technologie — Reading Practice', 'This is a B1-level reading passage about wiederholung: medien und technologie in the context of Medien und Technologie.

Wiederholung: Medien und Technologie is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Medien und Technologie" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Medien und Technologie — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Medien und Technologie" aus dem Modul "Medien und Technologie".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Medien und Technologie');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 1),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 2),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 3),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 4),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 5);

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
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Homework: Wiederholung: Beziehungen und Kommunikation', 'Complete these tasks to reinforce "Wiederholung: Beziehungen und Kommunikation" (Beziehungen und Kommunikation).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Beziehungen und Kommunikation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'In this lesson on "Wiederholung: Beziehungen und Kommunikation" (Beziehungen und Kommunikation), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Beziehungen und Kommunikation\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Beziehungen und Kommunikation\""}]', ARRAY['"Wiederholung: Beziehungen und Kommunikation" core vocabulary', 'Beziehungen und Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Beziehungen und Kommunikation — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Beziehungen und Kommunikation" aloud. Focus on correct pronunciation.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Beziehungen und Kommunikation — Speaking 2', 'Role-play: Imagine you are in a situation related to Beziehungen und Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Beziehungen und Kommunikation — Conversation 1', 'Practice a realistic conversation about wiederholung: beziehungen und kommunikation in the context of Beziehungen und Kommunikation.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Beziehungen und Kommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Beziehungen und Kommunikation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Beziehungen und Kommunikation". The dialogue should be realistic and related to Beziehungen und Kommunikation.', 'Creative practice for Wiederholung: Beziehungen und Kommunikation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Beziehungen und Kommunikation — Reading Practice', 'This is a B1-level reading passage about wiederholung: beziehungen und kommunikation in the context of Beziehungen und Kommunikation.

Wiederholung: Beziehungen und Kommunikation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Beziehungen und Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Beziehungen und Kommunikation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Beziehungen und Kommunikation" aus dem Modul "Beziehungen und Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Beziehungen und Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Umwelt und Natur', 'formal', false, NULL, 2),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 3),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Umwelt und Natur', 'formal', false, NULL, 5);

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
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Homework: Wiederholung: Umwelt und Natur', 'Complete these tasks to reinforce "Wiederholung: Umwelt und Natur" (Umwelt und Natur).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Umwelt und Natur\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'In this lesson on "Wiederholung: Umwelt und Natur" (Umwelt und Natur), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Umwelt und Natur\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Umwelt und Natur\""}]', ARRAY['"Wiederholung: Umwelt und Natur" core vocabulary', 'Umwelt und Natur key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Umwelt und Natur — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Umwelt und Natur" aloud. Focus on correct pronunciation.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Umwelt und Natur — Speaking 2', 'Role-play: Imagine you are in a situation related to Umwelt und Natur. Have a dialogue with a partner.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Umwelt und Natur — Conversation 1', 'Practice a realistic conversation about wiederholung: umwelt und natur in the context of Umwelt und Natur.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Umwelt und Natur" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Umwelt und Natur — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Umwelt und Natur". The dialogue should be realistic and related to Umwelt und Natur.', 'Creative practice for Wiederholung: Umwelt und Natur', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Umwelt und Natur — Reading Practice', 'This is a B1-level reading passage about wiederholung: umwelt und natur in the context of Umwelt und Natur.

Wiederholung: Umwelt und Natur is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Umwelt und Natur" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Umwelt und Natur — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Umwelt und Natur" aus dem Modul "Umwelt und Natur".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Umwelt und Natur');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 1),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 2),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 3),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 4),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 5);

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
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Homework: Wiederholung: Gesundheit und ErnÃ¤hrung', 'Complete these tasks to reinforce "Wiederholung: Gesundheit und ErnÃ¤hrung" (Gesundheit und ErnÃ¤hrung).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Gesundheit und ErnÃ¤hrung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'In this lesson on "Wiederholung: Gesundheit und ErnÃ¤hrung" (Gesundheit und ErnÃ¤hrung), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Gesundheit und ErnÃ¤hrung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Gesundheit und ErnÃ¤hrung\""}]', ARRAY['"Wiederholung: Gesundheit und ErnÃ¤hrung" core vocabulary', 'Gesundheit und ErnÃ¤hrung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Gesundheit und ErnÃ¤hrung" aloud. Focus on correct pronunciation.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Speaking 2', 'Role-play: Imagine you are in a situation related to Gesundheit und ErnÃ¤hrung. Have a dialogue with a partner.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Conversation 1', 'Practice a realistic conversation about wiederholung: gesundheit und ernã¤hrung in the context of Gesundheit und ErnÃ¤hrung.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Gesundheit und ErnÃ¤hrung" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Gesundheit und ErnÃ¤hrung". The dialogue should be realistic and related to Gesundheit und ErnÃ¤hrung.', 'Creative practice for Wiederholung: Gesundheit und ErnÃ¤hrung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Reading Practice', 'This is a B1-level reading passage about wiederholung: gesundheit und ernã¤hrung in the context of Gesundheit und ErnÃ¤hrung.

Wiederholung: Gesundheit und ErnÃ¤hrung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Gesundheit und ErnÃ¤hrung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Gesundheit und ErnÃ¤hrung" aus dem Modul "Gesundheit und ErnÃ¤hrung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Gesundheit und ErnÃ¤hrung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Homework: Wiederholung: Alltag und Gesellschaft', 'Complete these tasks to reinforce "Wiederholung: Alltag und Gesellschaft" (Alltag und Gesellschaft).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Alltag und Gesellschaft\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'In this lesson on "Wiederholung: Alltag und Gesellschaft" (Alltag und Gesellschaft), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Alltag und Gesellschaft\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Alltag und Gesellschaft\""}]', ARRAY['"Wiederholung: Alltag und Gesellschaft" core vocabulary', 'Alltag und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Alltag und Gesellschaft — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Alltag und Gesellschaft" aloud. Focus on correct pronunciation.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Alltag und Gesellschaft — Speaking 2', 'Role-play: Imagine you are in a situation related to Alltag und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Alltag und Gesellschaft — Conversation 1', 'Practice a realistic conversation about wiederholung: alltag und gesellschaft in the context of Alltag und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Alltag und Gesellschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Alltag und Gesellschaft — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Alltag und Gesellschaft". The dialogue should be realistic and related to Alltag und Gesellschaft.', 'Creative practice for Wiederholung: Alltag und Gesellschaft', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Alltag und Gesellschaft — Reading Practice', 'This is a B1-level reading passage about wiederholung: alltag und gesellschaft in the context of Alltag und Gesellschaft.

Wiederholung: Alltag und Gesellschaft is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Alltag und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Alltag und Gesellschaft — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Alltag und Gesellschaft" aus dem Modul "Alltag und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Alltag und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 2),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 3),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 4),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 5),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 6),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Homework: Wiederholung: Arbeit und Karriere', 'Complete these tasks to reinforce "Wiederholung: Arbeit und Karriere" (Arbeit und Karriere).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Arbeit und Karriere\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'In this lesson on "Wiederholung: Arbeit und Karriere" (Arbeit und Karriere), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Arbeit und Karriere\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Arbeit und Karriere\""}]', ARRAY['"Wiederholung: Arbeit und Karriere" core vocabulary', 'Arbeit und Karriere key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Arbeit und Karriere — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Arbeit und Karriere" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Arbeit und Karriere — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Karriere. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Arbeit und Karriere — Conversation 1', 'Practice a realistic conversation about wiederholung: arbeit und karriere in the context of Arbeit und Karriere.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Arbeit und Karriere" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Arbeit und Karriere — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Arbeit und Karriere". The dialogue should be realistic and related to Arbeit und Karriere.', 'Creative practice for Wiederholung: Arbeit und Karriere', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Arbeit und Karriere — Reading Practice', 'This is a B1-level reading passage about wiederholung: arbeit und karriere in the context of Arbeit und Karriere.

Wiederholung: Arbeit und Karriere is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Karriere" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Arbeit und Karriere — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Arbeit und Karriere" aus dem Modul "Arbeit und Karriere".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Karriere');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 1),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 2),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 3),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 4),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 5);

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
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Homework: Wiederholung: Gesundheit und ErnÃ¤hrung', 'Complete these tasks to reinforce "Wiederholung: Gesundheit und ErnÃ¤hrung" (Gesundheit und ErnÃ¤hrung).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Gesundheit und ErnÃ¤hrung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'In this lesson on "Wiederholung: Gesundheit und ErnÃ¤hrung" (Gesundheit und ErnÃ¤hrung), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Gesundheit und ErnÃ¤hrung\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Gesundheit und ErnÃ¤hrung\""}]', ARRAY['"Wiederholung: Gesundheit und ErnÃ¤hrung" core vocabulary', 'Gesundheit und ErnÃ¤hrung key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Gesundheit und ErnÃ¤hrung" aloud. Focus on correct pronunciation.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Speaking 2', 'Role-play: Imagine you are in a situation related to Gesundheit und ErnÃ¤hrung. Have a dialogue with a partner.', 'Speaking practice for Gesundheit und ErnÃ¤hrung', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Conversation 1', 'Practice a realistic conversation about wiederholung: gesundheit und ernã¤hrung in the context of Gesundheit und ErnÃ¤hrung.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Gesundheit und ErnÃ¤hrung" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Gesundheit und ErnÃ¤hrung". The dialogue should be realistic and related to Gesundheit und ErnÃ¤hrung.', 'Creative practice for Wiederholung: Gesundheit und ErnÃ¤hrung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Reading Practice', 'This is a B1-level reading passage about wiederholung: gesundheit und ernã¤hrung in the context of Gesundheit und ErnÃ¤hrung.

Wiederholung: Gesundheit und ErnÃ¤hrung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Gesundheit und ErnÃ¤hrung" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Gesundheit und ErnÃ¤hrung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Gesundheit und ErnÃ¤hrung" aus dem Modul "Gesundheit und ErnÃ¤hrung".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Gesundheit und ErnÃ¤hrung');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Homework: Wiederholung: Alltag und Gesellschaft', 'Complete these tasks to reinforce "Wiederholung: Alltag und Gesellschaft" (Alltag und Gesellschaft).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Alltag und Gesellschaft\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'In this lesson on "Wiederholung: Alltag und Gesellschaft" (Alltag und Gesellschaft), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Alltag und Gesellschaft\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Alltag und Gesellschaft\""}]', ARRAY['"Wiederholung: Alltag und Gesellschaft" core vocabulary', 'Alltag und Gesellschaft key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Alltag und Gesellschaft — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Alltag und Gesellschaft" aloud. Focus on correct pronunciation.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Alltag und Gesellschaft — Speaking 2', 'Role-play: Imagine you are in a situation related to Alltag und Gesellschaft. Have a dialogue with a partner.', 'Speaking practice for Alltag und Gesellschaft', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Alltag und Gesellschaft — Conversation 1', 'Practice a realistic conversation about wiederholung: alltag und gesellschaft in the context of Alltag und Gesellschaft.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Alltag und Gesellschaft" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Alltag und Gesellschaft — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Alltag und Gesellschaft". The dialogue should be realistic and related to Alltag und Gesellschaft.', 'Creative practice for Wiederholung: Alltag und Gesellschaft', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Alltag und Gesellschaft — Reading Practice', 'This is a B1-level reading passage about wiederholung: alltag und gesellschaft in the context of Alltag und Gesellschaft.

Wiederholung: Alltag und Gesellschaft is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Alltag und Gesellschaft" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Alltag und Gesellschaft — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Alltag und Gesellschaft" aus dem Modul "Alltag und Gesellschaft".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Alltag und Gesellschaft');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Umwelt und Natur', 'formal', false, NULL, 2),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 3),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Umwelt und Natur', 'formal', false, NULL, 5);

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
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Homework: Wiederholung: Umwelt und Natur', 'Complete these tasks to reinforce "Wiederholung: Umwelt und Natur" (Umwelt und Natur).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Umwelt und Natur\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'In this lesson on "Wiederholung: Umwelt und Natur" (Umwelt und Natur), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Umwelt und Natur\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Umwelt und Natur\""}]', ARRAY['"Wiederholung: Umwelt und Natur" core vocabulary', 'Umwelt und Natur key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Umwelt und Natur — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Umwelt und Natur" aloud. Focus on correct pronunciation.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Umwelt und Natur — Speaking 2', 'Role-play: Imagine you are in a situation related to Umwelt und Natur. Have a dialogue with a partner.', 'Speaking practice for Umwelt und Natur', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Umwelt und Natur — Conversation 1', 'Practice a realistic conversation about wiederholung: umwelt und natur in the context of Umwelt und Natur.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Umwelt und Natur" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Umwelt und Natur — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Umwelt und Natur". The dialogue should be realistic and related to Umwelt und Natur.', 'Creative practice for Wiederholung: Umwelt und Natur', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Umwelt und Natur — Reading Practice', 'This is a B1-level reading passage about wiederholung: umwelt und natur in the context of Umwelt und Natur.

Wiederholung: Umwelt und Natur is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Umwelt und Natur" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Umwelt und Natur — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Umwelt und Natur" aus dem Modul "Umwelt und Natur".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Umwelt und Natur');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 1),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 2),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 3),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 4),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 5);

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
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Homework: Wiederholung: Beziehungen und Kommunikation', 'Complete these tasks to reinforce "Wiederholung: Beziehungen und Kommunikation" (Beziehungen und Kommunikation).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Beziehungen und Kommunikation\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'In this lesson on "Wiederholung: Beziehungen und Kommunikation" (Beziehungen und Kommunikation), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Beziehungen und Kommunikation\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Beziehungen und Kommunikation\""}]', ARRAY['"Wiederholung: Beziehungen und Kommunikation" core vocabulary', 'Beziehungen und Kommunikation key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Beziehungen und Kommunikation — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Beziehungen und Kommunikation" aloud. Focus on correct pronunciation.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Beziehungen und Kommunikation — Speaking 2', 'Role-play: Imagine you are in a situation related to Beziehungen und Kommunikation. Have a dialogue with a partner.', 'Speaking practice for Beziehungen und Kommunikation', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Beziehungen und Kommunikation — Conversation 1', 'Practice a realistic conversation about wiederholung: beziehungen und kommunikation in the context of Beziehungen und Kommunikation.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Beziehungen und Kommunikation" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Beziehungen und Kommunikation — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Beziehungen und Kommunikation". The dialogue should be realistic and related to Beziehungen und Kommunikation.', 'Creative practice for Wiederholung: Beziehungen und Kommunikation', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Beziehungen und Kommunikation — Reading Practice', 'This is a B1-level reading passage about wiederholung: beziehungen und kommunikation in the context of Beziehungen und Kommunikation.

Wiederholung: Beziehungen und Kommunikation is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Beziehungen und Kommunikation" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Beziehungen und Kommunikation — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Beziehungen und Kommunikation" aus dem Modul "Beziehungen und Kommunikation".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Beziehungen und Kommunikation');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 2),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 3),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 4),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 5),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 6),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Homework: Wiederholung: Arbeit und Karriere', 'Complete these tasks to reinforce "Wiederholung: Arbeit und Karriere" (Arbeit und Karriere).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Arbeit und Karriere\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'In this lesson on "Wiederholung: Arbeit und Karriere" (Arbeit und Karriere), you learned key review concepts at B1 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Arbeit und Karriere\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Arbeit und Karriere\""}]', ARRAY['"Wiederholung: Arbeit und Karriere" core vocabulary', 'Arbeit und Karriere key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Arbeit und Karriere — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Arbeit und Karriere" aloud. Focus on correct pronunciation.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Arbeit und Karriere — Speaking 2', 'Role-play: Imagine you are in a situation related to Arbeit und Karriere. Have a dialogue with a partner.', 'Speaking practice for Arbeit und Karriere', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Arbeit und Karriere — Conversation 1', 'Practice a realistic conversation about wiederholung: arbeit und karriere in the context of Arbeit und Karriere.', 'Student', 'Teacher', 'You are a student at B1 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Arbeit und Karriere" sprechen. Bist du bereit?', ARRAY[]::text[], 'intermediate', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Arbeit und Karriere — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Arbeit und Karriere". The dialogue should be realistic and related to Arbeit und Karriere.', 'Creative practice for Wiederholung: Arbeit und Karriere', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Arbeit und Karriere — Reading Practice', 'This is a B1-level reading passage about wiederholung: arbeit und karriere in the context of Arbeit und Karriere.

Wiederholung: Arbeit und Karriere is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Arbeit und Karriere" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Arbeit und Karriere — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Arbeit und Karriere" aus dem Modul "Arbeit und Karriere".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Arbeit und Karriere');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 1),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 2),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 3),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 4),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 5);

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
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Umwelt und Natur', 'formal', false, NULL, 2),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 3),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Umwelt und Natur', 'formal', false, NULL, 5);

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
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medien und Technologie', 'neutral', false, NULL, 1),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medien und Technologie', 'formal', false, NULL, 2),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medien und Technologie', 'neutral', false, NULL, 3),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medien und Technologie', 'neutral', false, NULL, 4),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medien und Technologie', 'formal', false, NULL, 5);

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
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 2),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 3),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 4),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 5),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 6),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Was sind Sie von Beruf?', 'What do you do for a living?', 'ما هي مهنتك؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 1),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Ich arbeite als Ingenieur.', 'I work as an engineer.', 'أعمل كمهندس.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 2),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Wo arbeiten Sie?', 'Where do you work?', 'أين تعمل؟', 'Used in Arbeit und Karriere', 'formal', false, NULL, 3),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Ich bin selbstständig.', 'I am self-employed.', 'أنا مستقل.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 4),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Ich bin Angestellte bei einer Firma.', 'I am an employee at a company.', 'أنا موظفة في شركة.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 5),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Mein Büro ist im Zentrum.', 'My office is in the center.', 'مكتبي في المركز.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 6),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Ich arbeite von 9 bis 17 Uhr.', 'I work from 9 to 5.', 'أعمل من 9 إلى 5.', 'Used in Arbeit und Karriere', 'neutral', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'der Beruf', 'profession', 'Job title', 'vocabulary', 1),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'die Arbeit', 'work', 'What you do', 'vocabulary', 2),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'das Büro', 'office', 'Where you work', 'vocabulary', 3),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'der Chef', 'boss', 'Your supervisor', 'vocabulary', 4),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'die Firma', 'company', 'Business', 'vocabulary', 5),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'der Kollege', 'colleague', 'Work together', 'vocabulary', 6),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'das Gehalt', 'salary', 'Monthly payment', 'vocabulary', 7),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'die Bewerbung', 'application', 'For a job', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 1),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 2),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 3),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Beziehungen und Kommunikation', 'neutral', false, NULL, 4),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Beziehungen und Kommunikation', 'formal', false, NULL, 5);

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
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Medien und Technologie', 'neutral', false, NULL, 1),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Medien und Technologie', 'formal', false, NULL, 2),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Medien und Technologie', 'neutral', false, NULL, 3),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Medien und Technologie', 'neutral', false, NULL, 4),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Medien und Technologie', 'formal', false, NULL, 5);

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
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 1),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Umwelt und Natur', 'formal', false, NULL, 2),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 3),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Umwelt und Natur', 'neutral', false, NULL, 4),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Umwelt und Natur', 'formal', false, NULL, 5);

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
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 1),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 2),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 3),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 4),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Alltag und Gesellschaft', 'neutral', false, NULL, 5),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Alltag und Gesellschaft', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 1),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 2),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 3),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 4),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 5);

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
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 1),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 2),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 3),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Gesundheit und ErnÃ¤hrung', 'neutral', false, NULL, 4),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Gesundheit und ErnÃ¤hrung', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);