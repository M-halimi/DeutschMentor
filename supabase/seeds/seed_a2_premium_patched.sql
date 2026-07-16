-- ============================================================
-- PREMIUM CONTENT SEED — Level A2
-- Generated for 72 lessons across 12 modules
-- ============================================================


INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000010', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000010', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000010', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000010', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000010', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000010', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000010', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000010', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

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
  ('00000000-0000-0000-0000-000000000010', 'Homework: Körperteile', 'Complete these tasks to reinforce "Körperteile" (Körper und Gesundheit).', 'vocabulary', '[{"description":"Review all vocabulary from \"Körperteile\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000010', 'In this lesson on "Körperteile" (Körper und Gesundheit), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Körperteile\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Körperteile\""}]', ARRAY['"Körperteile" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Körperteile — Speaking 1', 'Practice the key vocabulary and phrases from "Körperteile" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Körperteile — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Körperteile — Writing Task 1', 'Write a short text (50-100 words) about körperteile. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Körperteile — Conversation 1', 'Practice a realistic conversation about körperteile in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Körperteile" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Körperteile — Conversation 2', 'Practice a realistic conversation about körperteile in the context of Körper und Gesundheit.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Körperteile" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Körperteile — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Körperteile". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Körperteile', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Körperteile — Deep Understanding', 'Explain the most important concepts from "Körperteile" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Körperteile', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Körperteile — Reading Practice', 'This is a A2-level reading passage about körperteile in the context of Körper und Gesundheit.

Körperteile is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000010', 'Körperteile — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Körperteile" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000011', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000011', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000011', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000011', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000011', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000011', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000011', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('00000000-0000-0000-0000-000000000011', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('00000000-0000-0000-0000-000000000011', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('00000000-0000-0000-0000-000000000011', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('00000000-0000-0000-0000-000000000011', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('00000000-0000-0000-0000-000000000011', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('00000000-0000-0000-0000-000000000011', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('00000000-0000-0000-0000-000000000011', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Homework: Lebensmittel und Nahrungsmittel', 'Complete these tasks to reinforce "Lebensmittel und Nahrungsmittel" (Essen und Trinken).', 'writing', '[{"description":"Review all vocabulary from \"Lebensmittel und Nahrungsmittel\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000011', 'In this lesson on "Lebensmittel und Nahrungsmittel" (Essen und Trinken), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Lebensmittel und Nahrungsmittel\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Lebensmittel und Nahrungsmittel\""}]', ARRAY['"Lebensmittel und Nahrungsmittel" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Lebensmittel und Nahrungsmittel — Speaking 1', 'Practice the key vocabulary and phrases from "Lebensmittel und Nahrungsmittel" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Lebensmittel und Nahrungsmittel — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Lebensmittel und Nahrungsmittel — Writing Task 1', 'Write a short text (50-100 words) about lebensmittel und nahrungsmittel. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Lebensmittel und Nahrungsmittel — Conversation 1', 'Practice a realistic conversation about lebensmittel und nahrungsmittel in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel und Nahrungsmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Lebensmittel und Nahrungsmittel — Conversation 2', 'Practice a realistic conversation about lebensmittel und nahrungsmittel in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel und Nahrungsmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Lebensmittel und Nahrungsmittel — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Lebensmittel und Nahrungsmittel". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Lebensmittel und Nahrungsmittel', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Lebensmittel und Nahrungsmittel — Deep Understanding', 'Explain the most important concepts from "Lebensmittel und Nahrungsmittel" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Lebensmittel und Nahrungsmittel', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Lebensmittel und Nahrungsmittel — Reading Practice', 'This is a A2-level reading passage about lebensmittel und nahrungsmittel in the context of Essen und Trinken.

Lebensmittel und Nahrungsmittel is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000011', 'Lebensmittel und Nahrungsmittel — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Lebensmittel und Nahrungsmittel" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, NULL, 1),
  ('00000000-0000-0000-0000-000000000012', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('00000000-0000-0000-0000-000000000012', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 3),
  ('00000000-0000-0000-0000-000000000012', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kleidung und Mode', 'informal', false, NULL, 4),
  ('00000000-0000-0000-0000-000000000012', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('00000000-0000-0000-0000-000000000012', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kleidung und Mode', 'formal', false, NULL, 6),
  ('00000000-0000-0000-0000-000000000012', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kleidung und Mode', 'informal', false, NULL, 7),
  ('00000000-0000-0000-0000-000000000012', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8),
  ('00000000-0000-0000-0000-000000000012', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 9),
  ('00000000-0000-0000-0000-000000000012', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 10);

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
  ('00000000-0000-0000-0000-000000000012', 'Homework: Kleidungsstücke', 'Complete these tasks to reinforce "Kleidungsstücke" (Kleidung und Mode).', 'speaking', '[{"description":"Review all vocabulary from \"Kleidungsstücke\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('00000000-0000-0000-0000-000000000012', 'In this lesson on "Kleidungsstücke" (Kleidung und Mode), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kleidungsstücke\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kleidungsstücke\""}]', ARRAY['"Kleidungsstücke" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Kleidungsstücke — Speaking 1', 'Practice the key vocabulary and phrases from "Kleidungsstücke" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Kleidungsstücke — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Kleidungsstücke — Writing Task 1', 'Write a short text (50-100 words) about kleidungsstücke. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Kleidungsstücke — Conversation 1', 'Practice a realistic conversation about kleidungsstücke in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kleidungsstücke" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Kleidungsstücke — Conversation 2', 'Practice a realistic conversation about kleidungsstücke in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kleidungsstücke" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Kleidungsstücke — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kleidungsstücke". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Kleidungsstücke', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Kleidungsstücke — Deep Understanding', 'Explain the most important concepts from "Kleidungsstücke" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kleidungsstücke', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Kleidungsstücke — Reading Practice', 'This is a A2-level reading passage about kleidungsstücke in the context of Kleidung und Mode.

Kleidungsstücke is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('00000000-0000-0000-0000-000000000012', 'Kleidungsstücke — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kleidungsstücke" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Homework: Feste und Feiertage in Deutschland', 'Complete these tasks to reinforce "Feste und Feiertage in Deutschland" (Feste und Feiertage).', 'reading', '[{"description":"Review all vocabulary from \"Feste und Feiertage in Deutschland\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'In this lesson on "Feste und Feiertage in Deutschland" (Feste und Feiertage), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Feste und Feiertage in Deutschland\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Feste und Feiertage in Deutschland\""}]', ARRAY['"Feste und Feiertage in Deutschland" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Feste und Feiertage in Deutschland — Speaking 1', 'Practice the key vocabulary and phrases from "Feste und Feiertage in Deutschland" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Feste und Feiertage in Deutschland — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Feste und Feiertage in Deutschland — Writing Task 1', 'Write a short text (50-100 words) about feste und feiertage in deutschland. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Feste und Feiertage in Deutschland — Conversation 1', 'Practice a realistic conversation about feste und feiertage in deutschland in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Feste und Feiertage in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Feste und Feiertage in Deutschland — Conversation 2', 'Practice a realistic conversation about feste und feiertage in deutschland in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Feste und Feiertage in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Feste und Feiertage in Deutschland — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Feste und Feiertage in Deutschland". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Feste und Feiertage in Deutschland', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Feste und Feiertage in Deutschland — Deep Understanding', 'Explain the most important concepts from "Feste und Feiertage in Deutschland" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Feste und Feiertage in Deutschland', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Feste und Feiertage in Deutschland — Reading Practice', 'This is a A2-level reading passage about feste und feiertage in deutschland in the context of Feste und Feiertage.

Feste und Feiertage in Deutschland is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('68e89bba-cb70-4b6e-b849-d3f366b1782c', 'Feste und Feiertage in Deutschland — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Feste und Feiertage in Deutschland" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

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
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Homework: Körperteile', 'Complete these tasks to reinforce "Körperteile" (Körper und Gesundheit).', 'grammar', '[{"description":"Review all vocabulary from \"Körperteile\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'In this lesson on "Körperteile" (Körper und Gesundheit), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Körperteile\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Körperteile\""}]', ARRAY['"Körperteile" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Körperteile — Speaking 1', 'Practice the key vocabulary and phrases from "Körperteile" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Körperteile — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Körperteile — Writing Task 1', 'Write a short text (50-100 words) about körperteile. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Körperteile — Conversation 1', 'Practice a realistic conversation about körperteile in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Körperteile" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Körperteile — Conversation 2', 'Practice a realistic conversation about körperteile in the context of Körper und Gesundheit.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Körperteile" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Körperteile — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Körperteile". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Körperteile', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Körperteile — Deep Understanding', 'Explain the most important concepts from "Körperteile" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Körperteile', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Körperteile — Reading Practice', 'This is a A2-level reading passage about körperteile in the context of Körper und Gesundheit.

Körperteile is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Körperteile — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Körperteile" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Homework: Wetter und Temperaturen', 'Complete these tasks to reinforce "Wetter und Temperaturen" (Wetter und Jahreszeiten).', 'mixed', '[{"description":"Review all vocabulary from \"Wetter und Temperaturen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'In this lesson on "Wetter und Temperaturen" (Wetter und Jahreszeiten), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wetter und Temperaturen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wetter und Temperaturen\""}]', ARRAY['"Wetter und Temperaturen" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wetter und Temperaturen — Speaking 1', 'Practice the key vocabulary and phrases from "Wetter und Temperaturen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wetter und Temperaturen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wetter und Temperaturen — Writing Task 1', 'Write a short text (50-100 words) about wetter und temperaturen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wetter und Temperaturen — Conversation 1', 'Practice a realistic conversation about wetter und temperaturen in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetter und Temperaturen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wetter und Temperaturen — Conversation 2', 'Practice a realistic conversation about wetter und temperaturen in the context of Wetter und Jahreszeiten.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetter und Temperaturen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wetter und Temperaturen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wetter und Temperaturen". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wetter und Temperaturen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wetter und Temperaturen — Deep Understanding', 'Explain the most important concepts from "Wetter und Temperaturen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wetter und Temperaturen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wetter und Temperaturen — Reading Practice', 'This is a A2-level reading passage about wetter und temperaturen in the context of Wetter und Jahreszeiten.

Wetter und Temperaturen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Wetter und Temperaturen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wetter und Temperaturen" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

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
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Homework: Orte in der Stadt', 'Complete these tasks to reinforce "Orte in der Stadt" (Stadt und Verkehr).', 'vocabulary', '[{"description":"Review all vocabulary from \"Orte in der Stadt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'In this lesson on "Orte in der Stadt" (Stadt und Verkehr), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Orte in der Stadt\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Orte in der Stadt\""}]', ARRAY['"Orte in der Stadt" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Orte in der Stadt — Speaking 1', 'Practice the key vocabulary and phrases from "Orte in der Stadt" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Orte in der Stadt — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Orte in der Stadt — Writing Task 1', 'Write a short text (50-100 words) about orte in der stadt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Orte in der Stadt — Conversation 1', 'Practice a realistic conversation about orte in der stadt in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Orte in der Stadt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Orte in der Stadt — Conversation 2', 'Practice a realistic conversation about orte in der stadt in the context of Stadt und Verkehr.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Orte in der Stadt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Orte in der Stadt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Orte in der Stadt". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Orte in der Stadt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Orte in der Stadt — Deep Understanding', 'Explain the most important concepts from "Orte in der Stadt" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Orte in der Stadt', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Orte in der Stadt — Reading Practice', 'This is a A2-level reading passage about orte in der stadt in the context of Stadt und Verkehr.

Orte in der Stadt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Orte in der Stadt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Orte in der Stadt" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

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
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Homework: Wetter und Temperaturen', 'Complete these tasks to reinforce "Wetter und Temperaturen" (Wetter und Jahreszeiten).', 'writing', '[{"description":"Review all vocabulary from \"Wetter und Temperaturen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'In this lesson on "Wetter und Temperaturen" (Wetter und Jahreszeiten), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wetter und Temperaturen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wetter und Temperaturen\""}]', ARRAY['"Wetter und Temperaturen" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wetter und Temperaturen — Speaking 1', 'Practice the key vocabulary and phrases from "Wetter und Temperaturen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wetter und Temperaturen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wetter und Temperaturen — Writing Task 1', 'Write a short text (50-100 words) about wetter und temperaturen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wetter und Temperaturen — Conversation 1', 'Practice a realistic conversation about wetter und temperaturen in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetter und Temperaturen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wetter und Temperaturen — Conversation 2', 'Practice a realistic conversation about wetter und temperaturen in the context of Wetter und Jahreszeiten.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetter und Temperaturen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wetter und Temperaturen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wetter und Temperaturen". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wetter und Temperaturen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wetter und Temperaturen — Deep Understanding', 'Explain the most important concepts from "Wetter und Temperaturen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wetter und Temperaturen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wetter und Temperaturen — Reading Practice', 'This is a A2-level reading passage about wetter und temperaturen in the context of Wetter und Jahreszeiten.

Wetter und Temperaturen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Wetter und Temperaturen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wetter und Temperaturen" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

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
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Homework: Orte in der Stadt', 'Complete these tasks to reinforce "Orte in der Stadt" (Stadt und Verkehr).', 'speaking', '[{"description":"Review all vocabulary from \"Orte in der Stadt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'In this lesson on "Orte in der Stadt" (Stadt und Verkehr), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Orte in der Stadt\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Orte in der Stadt\""}]', ARRAY['"Orte in der Stadt" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Orte in der Stadt — Speaking 1', 'Practice the key vocabulary and phrases from "Orte in der Stadt" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Orte in der Stadt — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Orte in der Stadt — Writing Task 1', 'Write a short text (50-100 words) about orte in der stadt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Orte in der Stadt — Conversation 1', 'Practice a realistic conversation about orte in der stadt in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Orte in der Stadt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Orte in der Stadt — Conversation 2', 'Practice a realistic conversation about orte in der stadt in the context of Stadt und Verkehr.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Orte in der Stadt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Orte in der Stadt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Orte in der Stadt". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Orte in der Stadt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Orte in der Stadt — Deep Understanding', 'Explain the most important concepts from "Orte in der Stadt" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Orte in der Stadt', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Orte in der Stadt — Reading Practice', 'This is a A2-level reading passage about orte in der stadt in the context of Stadt und Verkehr.

Orte in der Stadt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acca7228-2f5c-4d0f-9c8b-edc72ac8414e', 'Orte in der Stadt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Orte in der Stadt" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Homework: Feste und Feiertage in Deutschland', 'Complete these tasks to reinforce "Feste und Feiertage in Deutschland" (Feste und Feiertage).', 'reading', '[{"description":"Review all vocabulary from \"Feste und Feiertage in Deutschland\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'In this lesson on "Feste und Feiertage in Deutschland" (Feste und Feiertage), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Feste und Feiertage in Deutschland\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Feste und Feiertage in Deutschland\""}]', ARRAY['"Feste und Feiertage in Deutschland" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Feste und Feiertage in Deutschland — Speaking 1', 'Practice the key vocabulary and phrases from "Feste und Feiertage in Deutschland" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Feste und Feiertage in Deutschland — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Feste und Feiertage in Deutschland — Writing Task 1', 'Write a short text (50-100 words) about feste und feiertage in deutschland. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Feste und Feiertage in Deutschland — Conversation 1', 'Practice a realistic conversation about feste und feiertage in deutschland in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Feste und Feiertage in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Feste und Feiertage in Deutschland — Conversation 2', 'Practice a realistic conversation about feste und feiertage in deutschland in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Feste und Feiertage in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Feste und Feiertage in Deutschland — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Feste und Feiertage in Deutschland". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Feste und Feiertage in Deutschland', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Feste und Feiertage in Deutschland — Deep Understanding', 'Explain the most important concepts from "Feste und Feiertage in Deutschland" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Feste und Feiertage in Deutschland', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Feste und Feiertage in Deutschland — Reading Practice', 'This is a A2-level reading passage about feste und feiertage in deutschland in the context of Feste und Feiertage.

Feste und Feiertage in Deutschland is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('7f873aed-1718-42db-ba6e-b83e9c0f4a32', 'Feste und Feiertage in Deutschland — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Feste und Feiertage in Deutschland" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, NULL, 1),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 3),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kleidung und Mode', 'informal', false, NULL, 4),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kleidung und Mode', 'formal', false, NULL, 6),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kleidung und Mode', 'informal', false, NULL, 7),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 9),
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 10);

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
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Homework: Kleidungsstücke', 'Complete these tasks to reinforce "Kleidungsstücke" (Kleidung und Mode).', 'grammar', '[{"description":"Review all vocabulary from \"Kleidungsstücke\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'In this lesson on "Kleidungsstücke" (Kleidung und Mode), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kleidungsstücke\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kleidungsstücke\""}]', ARRAY['"Kleidungsstücke" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Kleidungsstücke — Speaking 1', 'Practice the key vocabulary and phrases from "Kleidungsstücke" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Kleidungsstücke — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Kleidungsstücke — Writing Task 1', 'Write a short text (50-100 words) about kleidungsstücke. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Kleidungsstücke — Conversation 1', 'Practice a realistic conversation about kleidungsstücke in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kleidungsstücke" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Kleidungsstücke — Conversation 2', 'Practice a realistic conversation about kleidungsstücke in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kleidungsstücke" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Kleidungsstücke — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kleidungsstücke". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Kleidungsstücke', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Kleidungsstücke — Deep Understanding', 'Explain the most important concepts from "Kleidungsstücke" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kleidungsstücke', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Kleidungsstücke — Reading Practice', 'This is a A2-level reading passage about kleidungsstücke in the context of Kleidung und Mode.

Kleidungsstücke is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Kleidungsstücke — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kleidungsstücke" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Homework: Lebensmittel und Nahrungsmittel', 'Complete these tasks to reinforce "Lebensmittel und Nahrungsmittel" (Essen und Trinken).', 'mixed', '[{"description":"Review all vocabulary from \"Lebensmittel und Nahrungsmittel\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'In this lesson on "Lebensmittel und Nahrungsmittel" (Essen und Trinken), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Lebensmittel und Nahrungsmittel\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Lebensmittel und Nahrungsmittel\""}]', ARRAY['"Lebensmittel und Nahrungsmittel" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Lebensmittel und Nahrungsmittel — Speaking 1', 'Practice the key vocabulary and phrases from "Lebensmittel und Nahrungsmittel" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Lebensmittel und Nahrungsmittel — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Lebensmittel und Nahrungsmittel — Writing Task 1', 'Write a short text (50-100 words) about lebensmittel und nahrungsmittel. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Lebensmittel und Nahrungsmittel — Conversation 1', 'Practice a realistic conversation about lebensmittel und nahrungsmittel in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel und Nahrungsmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Lebensmittel und Nahrungsmittel — Conversation 2', 'Practice a realistic conversation about lebensmittel und nahrungsmittel in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel und Nahrungsmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Lebensmittel und Nahrungsmittel — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Lebensmittel und Nahrungsmittel". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Lebensmittel und Nahrungsmittel', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Lebensmittel und Nahrungsmittel — Deep Understanding', 'Explain the most important concepts from "Lebensmittel und Nahrungsmittel" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Lebensmittel und Nahrungsmittel', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Lebensmittel und Nahrungsmittel — Reading Practice', 'This is a A2-level reading passage about lebensmittel und nahrungsmittel in the context of Essen und Trinken.

Lebensmittel und Nahrungsmittel is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f45a61cd-3703-4d62-8e96-051939ca6326', 'Lebensmittel und Nahrungsmittel — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Lebensmittel und Nahrungsmittel" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Homework: Einladungen und Feiern', 'Complete these tasks to reinforce "Einladungen und Feiern" (Feste und Feiertage).', 'vocabulary', '[{"description":"Review all vocabulary from \"Einladungen und Feiern\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'In this lesson on "Einladungen und Feiern" (Feste und Feiertage), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einladungen und Feiern\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einladungen und Feiern\""}]', ARRAY['"Einladungen und Feiern" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Einladungen und Feiern — Speaking 1', 'Practice the key vocabulary and phrases from "Einladungen und Feiern" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Einladungen und Feiern — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Einladungen und Feiern — Writing Task 1', 'Write a short text (50-100 words) about einladungen und feiern. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Einladungen und Feiern — Conversation 1', 'Practice a realistic conversation about einladungen und feiern in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einladungen und Feiern" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Einladungen und Feiern — Conversation 2', 'Practice a realistic conversation about einladungen und feiern in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einladungen und Feiern" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Einladungen und Feiern — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einladungen und Feiern". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Einladungen und Feiern', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Einladungen und Feiern — Deep Understanding', 'Explain the most important concepts from "Einladungen und Feiern" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Einladungen und Feiern', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Einladungen und Feiern — Reading Practice', 'This is a A2-level reading passage about einladungen und feiern in the context of Feste und Feiertage.

Einladungen und Feiern is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e2b318c-a1e1-44ba-bb46-5446d976bbf4', 'Einladungen und Feiern — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einladungen und Feiern" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Homework: Getränke und Mahlzeiten', 'Complete these tasks to reinforce "Getränke und Mahlzeiten" (Essen und Trinken).', 'writing', '[{"description":"Review all vocabulary from \"Getränke und Mahlzeiten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'In this lesson on "Getränke und Mahlzeiten" (Essen und Trinken), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Getränke und Mahlzeiten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Getränke und Mahlzeiten\""}]', ARRAY['"Getränke und Mahlzeiten" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Getränke und Mahlzeiten — Speaking 1', 'Practice the key vocabulary and phrases from "Getränke und Mahlzeiten" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Getränke und Mahlzeiten — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Getränke und Mahlzeiten — Writing Task 1', 'Write a short text (50-100 words) about getränke und mahlzeiten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Getränke und Mahlzeiten — Conversation 1', 'Practice a realistic conversation about getränke und mahlzeiten in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Getränke und Mahlzeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Getränke und Mahlzeiten — Conversation 2', 'Practice a realistic conversation about getränke und mahlzeiten in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Getränke und Mahlzeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Getränke und Mahlzeiten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Getränke und Mahlzeiten". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Getränke und Mahlzeiten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Getränke und Mahlzeiten — Deep Understanding', 'Explain the most important concepts from "Getränke und Mahlzeiten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Getränke und Mahlzeiten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Getränke und Mahlzeiten — Reading Practice', 'This is a A2-level reading passage about getränke und mahlzeiten in the context of Essen und Trinken.

Getränke und Mahlzeiten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8ecfc38c-1131-4ced-b462-eed23dd8a399', 'Getränke und Mahlzeiten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Getränke und Mahlzeiten" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

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
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Homework: Krankheiten und Symptome', 'Complete these tasks to reinforce "Krankheiten und Symptome" (Körper und Gesundheit).', 'speaking', '[{"description":"Review all vocabulary from \"Krankheiten und Symptome\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'In this lesson on "Krankheiten und Symptome" (Körper und Gesundheit), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Krankheiten und Symptome\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Krankheiten und Symptome\""}]', ARRAY['"Krankheiten und Symptome" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Krankheiten und Symptome — Speaking 1', 'Practice the key vocabulary and phrases from "Krankheiten und Symptome" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Krankheiten und Symptome — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Krankheiten und Symptome — Writing Task 1', 'Write a short text (50-100 words) about krankheiten und symptome. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Krankheiten und Symptome — Conversation 1', 'Practice a realistic conversation about krankheiten und symptome in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Krankheiten und Symptome" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Krankheiten und Symptome — Conversation 2', 'Practice a realistic conversation about krankheiten und symptome in the context of Körper und Gesundheit.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Krankheiten und Symptome" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Krankheiten und Symptome — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Krankheiten und Symptome". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Krankheiten und Symptome', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Krankheiten und Symptome — Deep Understanding', 'Explain the most important concepts from "Krankheiten und Symptome" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Krankheiten und Symptome', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Krankheiten und Symptome — Reading Practice', 'This is a A2-level reading passage about krankheiten und symptome in the context of Körper und Gesundheit.

Krankheiten und Symptome is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'Krankheiten und Symptome — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Krankheiten und Symptome" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, NULL, 1),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 3),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kleidung und Mode', 'informal', false, NULL, 4),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kleidung und Mode', 'formal', false, NULL, 6),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kleidung und Mode', 'informal', false, NULL, 7),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 9),
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 10);

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
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Homework: Farben, Größen und Materialien', 'Complete these tasks to reinforce "Farben, Größen und Materialien" (Kleidung und Mode).', 'reading', '[{"description":"Review all vocabulary from \"Farben, Größen und Materialien\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'In this lesson on "Farben, Größen und Materialien" (Kleidung und Mode), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Farben, Größen und Materialien\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Farben, Größen und Materialien\""}]', ARRAY['"Farben, Größen und Materialien" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Farben, Größen und Materialien — Speaking 1', 'Practice the key vocabulary and phrases from "Farben, Größen und Materialien" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Farben, Größen und Materialien — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Farben, Größen und Materialien — Writing Task 1', 'Write a short text (50-100 words) about farben, größen und materialien. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Farben, Größen und Materialien — Conversation 1', 'Practice a realistic conversation about farben, größen und materialien in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Farben, Größen und Materialien" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Farben, Größen und Materialien — Conversation 2', 'Practice a realistic conversation about farben, größen und materialien in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Farben, Größen und Materialien" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Farben, Größen und Materialien — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Farben, Größen und Materialien". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Farben, Größen und Materialien', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Farben, Größen und Materialien — Deep Understanding', 'Explain the most important concepts from "Farben, Größen und Materialien" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Farben, Größen und Materialien', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Farben, Größen und Materialien — Reading Practice', 'This is a A2-level reading passage about farben, größen und materialien in the context of Kleidung und Mode.

Farben, Größen und Materialien is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('89fe69d1-4b4b-44f8-a367-ab4fdaccaa2b', 'Farben, Größen und Materialien — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Farben, Größen und Materialien" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

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
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Homework: Jahreszeiten und Monate', 'Complete these tasks to reinforce "Jahreszeiten und Monate" (Wetter und Jahreszeiten).', 'grammar', '[{"description":"Review all vocabulary from \"Jahreszeiten und Monate\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'In this lesson on "Jahreszeiten und Monate" (Wetter und Jahreszeiten), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Jahreszeiten und Monate\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Jahreszeiten und Monate\""}]', ARRAY['"Jahreszeiten und Monate" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Jahreszeiten und Monate — Speaking 1', 'Practice the key vocabulary and phrases from "Jahreszeiten und Monate" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Jahreszeiten und Monate — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Jahreszeiten und Monate — Writing Task 1', 'Write a short text (50-100 words) about jahreszeiten und monate. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Jahreszeiten und Monate — Conversation 1', 'Practice a realistic conversation about jahreszeiten und monate in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Jahreszeiten und Monate" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Jahreszeiten und Monate — Conversation 2', 'Practice a realistic conversation about jahreszeiten und monate in the context of Wetter und Jahreszeiten.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Jahreszeiten und Monate" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Jahreszeiten und Monate — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Jahreszeiten und Monate". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Jahreszeiten und Monate', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Jahreszeiten und Monate — Deep Understanding', 'Explain the most important concepts from "Jahreszeiten und Monate" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Jahreszeiten und Monate', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Jahreszeiten und Monate — Reading Practice', 'This is a A2-level reading passage about jahreszeiten und monate in the context of Wetter und Jahreszeiten.

Jahreszeiten und Monate is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('680e0f50-0276-4b47-afd1-f9e1176fd521', 'Jahreszeiten und Monate — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Jahreszeiten und Monate" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

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
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Homework: Verkehrsmittel und Wege', 'Complete these tasks to reinforce "Verkehrsmittel und Wege" (Stadt und Verkehr).', 'mixed', '[{"description":"Review all vocabulary from \"Verkehrsmittel und Wege\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'In this lesson on "Verkehrsmittel und Wege" (Stadt und Verkehr), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Verkehrsmittel und Wege\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Verkehrsmittel und Wege\""}]', ARRAY['"Verkehrsmittel und Wege" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Verkehrsmittel und Wege — Speaking 1', 'Practice the key vocabulary and phrases from "Verkehrsmittel und Wege" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Verkehrsmittel und Wege — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Verkehrsmittel und Wege — Writing Task 1', 'Write a short text (50-100 words) about verkehrsmittel und wege. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Verkehrsmittel und Wege — Conversation 1', 'Practice a realistic conversation about verkehrsmittel und wege in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verkehrsmittel und Wege" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Verkehrsmittel und Wege — Conversation 2', 'Practice a realistic conversation about verkehrsmittel und wege in the context of Stadt und Verkehr.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verkehrsmittel und Wege" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Verkehrsmittel und Wege — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Verkehrsmittel und Wege". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Verkehrsmittel und Wege', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Verkehrsmittel und Wege — Deep Understanding', 'Explain the most important concepts from "Verkehrsmittel und Wege" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Verkehrsmittel und Wege', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Verkehrsmittel und Wege — Reading Practice', 'This is a A2-level reading passage about verkehrsmittel und wege in the context of Stadt und Verkehr.

Verkehrsmittel und Wege is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('86070aac-d909-4309-aba8-efa20334fa81', 'Verkehrsmittel und Wege — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Verkehrsmittel und Wege" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Homework: Getränke und Mahlzeiten', 'Complete these tasks to reinforce "Getränke und Mahlzeiten" (Essen und Trinken).', 'vocabulary', '[{"description":"Review all vocabulary from \"Getränke und Mahlzeiten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'In this lesson on "Getränke und Mahlzeiten" (Essen und Trinken), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Getränke und Mahlzeiten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Getränke und Mahlzeiten\""}]', ARRAY['"Getränke und Mahlzeiten" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Getränke und Mahlzeiten — Speaking 1', 'Practice the key vocabulary and phrases from "Getränke und Mahlzeiten" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Getränke und Mahlzeiten — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Getränke und Mahlzeiten — Writing Task 1', 'Write a short text (50-100 words) about getränke und mahlzeiten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Getränke und Mahlzeiten — Conversation 1', 'Practice a realistic conversation about getränke und mahlzeiten in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Getränke und Mahlzeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Getränke und Mahlzeiten — Conversation 2', 'Practice a realistic conversation about getränke und mahlzeiten in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Getränke und Mahlzeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Getränke und Mahlzeiten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Getränke und Mahlzeiten". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Getränke und Mahlzeiten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Getränke und Mahlzeiten — Deep Understanding', 'Explain the most important concepts from "Getränke und Mahlzeiten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Getränke und Mahlzeiten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Getränke und Mahlzeiten — Reading Practice', 'This is a A2-level reading passage about getränke und mahlzeiten in the context of Essen und Trinken.

Getränke und Mahlzeiten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ad896ab2-96a8-4828-a91d-5a137918aa7d', 'Getränke und Mahlzeiten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Getränke und Mahlzeiten" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, NULL, 1),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 3),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kleidung und Mode', 'informal', false, NULL, 4),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kleidung und Mode', 'formal', false, NULL, 6),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kleidung und Mode', 'informal', false, NULL, 7),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 9),
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 10);

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
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Homework: Farben, Größen und Materialien', 'Complete these tasks to reinforce "Farben, Größen und Materialien" (Kleidung und Mode).', 'writing', '[{"description":"Review all vocabulary from \"Farben, Größen und Materialien\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'In this lesson on "Farben, Größen und Materialien" (Kleidung und Mode), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Farben, Größen und Materialien\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Farben, Größen und Materialien\""}]', ARRAY['"Farben, Größen und Materialien" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Farben, Größen und Materialien — Speaking 1', 'Practice the key vocabulary and phrases from "Farben, Größen und Materialien" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Farben, Größen und Materialien — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Farben, Größen und Materialien — Writing Task 1', 'Write a short text (50-100 words) about farben, größen und materialien. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Farben, Größen und Materialien — Conversation 1', 'Practice a realistic conversation about farben, größen und materialien in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Farben, Größen und Materialien" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Farben, Größen und Materialien — Conversation 2', 'Practice a realistic conversation about farben, größen und materialien in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Farben, Größen und Materialien" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Farben, Größen und Materialien — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Farben, Größen und Materialien". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Farben, Größen und Materialien', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Farben, Größen und Materialien — Deep Understanding', 'Explain the most important concepts from "Farben, Größen und Materialien" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Farben, Größen und Materialien', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Farben, Größen und Materialien — Reading Practice', 'This is a A2-level reading passage about farben, größen und materialien in the context of Kleidung und Mode.

Farben, Größen und Materialien is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fb158210-7709-4978-b549-d6fe31c3d551', 'Farben, Größen und Materialien — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Farben, Größen und Materialien" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

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
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Homework: Jahreszeiten und Monate', 'Complete these tasks to reinforce "Jahreszeiten und Monate" (Wetter und Jahreszeiten).', 'speaking', '[{"description":"Review all vocabulary from \"Jahreszeiten und Monate\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'In this lesson on "Jahreszeiten und Monate" (Wetter und Jahreszeiten), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Jahreszeiten und Monate\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Jahreszeiten und Monate\""}]', ARRAY['"Jahreszeiten und Monate" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Jahreszeiten und Monate — Speaking 1', 'Practice the key vocabulary and phrases from "Jahreszeiten und Monate" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Jahreszeiten und Monate — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Jahreszeiten und Monate — Writing Task 1', 'Write a short text (50-100 words) about jahreszeiten und monate. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Jahreszeiten und Monate — Conversation 1', 'Practice a realistic conversation about jahreszeiten und monate in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Jahreszeiten und Monate" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Jahreszeiten und Monate — Conversation 2', 'Practice a realistic conversation about jahreszeiten und monate in the context of Wetter und Jahreszeiten.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Jahreszeiten und Monate" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Jahreszeiten und Monate — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Jahreszeiten und Monate". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Jahreszeiten und Monate', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Jahreszeiten und Monate — Deep Understanding', 'Explain the most important concepts from "Jahreszeiten und Monate" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Jahreszeiten und Monate', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Jahreszeiten und Monate — Reading Practice', 'This is a A2-level reading passage about jahreszeiten und monate in the context of Wetter und Jahreszeiten.

Jahreszeiten und Monate is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'Jahreszeiten und Monate — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Jahreszeiten und Monate" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

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
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Homework: Krankheiten und Symptome', 'Complete these tasks to reinforce "Krankheiten und Symptome" (Körper und Gesundheit).', 'reading', '[{"description":"Review all vocabulary from \"Krankheiten und Symptome\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'In this lesson on "Krankheiten und Symptome" (Körper und Gesundheit), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Krankheiten und Symptome\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Krankheiten und Symptome\""}]', ARRAY['"Krankheiten und Symptome" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Krankheiten und Symptome — Speaking 1', 'Practice the key vocabulary and phrases from "Krankheiten und Symptome" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Krankheiten und Symptome — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Krankheiten und Symptome — Writing Task 1', 'Write a short text (50-100 words) about krankheiten und symptome. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Krankheiten und Symptome — Conversation 1', 'Practice a realistic conversation about krankheiten und symptome in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Krankheiten und Symptome" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Krankheiten und Symptome — Conversation 2', 'Practice a realistic conversation about krankheiten und symptome in the context of Körper und Gesundheit.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Krankheiten und Symptome" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Krankheiten und Symptome — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Krankheiten und Symptome". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Krankheiten und Symptome', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Krankheiten und Symptome — Deep Understanding', 'Explain the most important concepts from "Krankheiten und Symptome" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Krankheiten und Symptome', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Krankheiten und Symptome — Reading Practice', 'This is a A2-level reading passage about krankheiten und symptome in the context of Körper und Gesundheit.

Krankheiten und Symptome is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Krankheiten und Symptome — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Krankheiten und Symptome" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

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
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Homework: Einladungen und Feiern', 'Complete these tasks to reinforce "Einladungen und Feiern" (Feste und Feiertage).', 'grammar', '[{"description":"Review all vocabulary from \"Einladungen und Feiern\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'In this lesson on "Einladungen und Feiern" (Feste und Feiertage), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einladungen und Feiern\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einladungen und Feiern\""}]', ARRAY['"Einladungen und Feiern" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Einladungen und Feiern — Speaking 1', 'Practice the key vocabulary and phrases from "Einladungen und Feiern" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Einladungen und Feiern — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Einladungen und Feiern — Writing Task 1', 'Write a short text (50-100 words) about einladungen und feiern. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Einladungen und Feiern — Conversation 1', 'Practice a realistic conversation about einladungen und feiern in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einladungen und Feiern" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Einladungen und Feiern — Conversation 2', 'Practice a realistic conversation about einladungen und feiern in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einladungen und Feiern" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Einladungen und Feiern — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einladungen und Feiern". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Einladungen und Feiern', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Einladungen und Feiern — Deep Understanding', 'Explain the most important concepts from "Einladungen und Feiern" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Einladungen und Feiern', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Einladungen und Feiern — Reading Practice', 'This is a A2-level reading passage about einladungen und feiern in the context of Feste und Feiertage.

Einladungen und Feiern is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0f1cac76-0f16-45b6-9001-4d83ba8237d0', 'Einladungen und Feiern — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einladungen und Feiern" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

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
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Homework: Verkehrsmittel und Wege', 'Complete these tasks to reinforce "Verkehrsmittel und Wege" (Stadt und Verkehr).', 'mixed', '[{"description":"Review all vocabulary from \"Verkehrsmittel und Wege\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'In this lesson on "Verkehrsmittel und Wege" (Stadt und Verkehr), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Verkehrsmittel und Wege\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Verkehrsmittel und Wege\""}]', ARRAY['"Verkehrsmittel und Wege" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Verkehrsmittel und Wege — Speaking 1', 'Practice the key vocabulary and phrases from "Verkehrsmittel und Wege" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Verkehrsmittel und Wege — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Verkehrsmittel und Wege — Writing Task 1', 'Write a short text (50-100 words) about verkehrsmittel und wege. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Verkehrsmittel und Wege — Conversation 1', 'Practice a realistic conversation about verkehrsmittel und wege in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verkehrsmittel und Wege" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Verkehrsmittel und Wege — Conversation 2', 'Practice a realistic conversation about verkehrsmittel und wege in the context of Stadt und Verkehr.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verkehrsmittel und Wege" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Verkehrsmittel und Wege — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Verkehrsmittel und Wege". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Verkehrsmittel und Wege', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Verkehrsmittel und Wege — Deep Understanding', 'Explain the most important concepts from "Verkehrsmittel und Wege" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Verkehrsmittel und Wege', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Verkehrsmittel und Wege — Reading Practice', 'This is a A2-level reading passage about verkehrsmittel und wege in the context of Stadt und Verkehr.

Verkehrsmittel und Wege is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c097a835-db42-45e5-92d2-371daebac1cd', 'Verkehrsmittel und Wege — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Verkehrsmittel und Wege" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Homework: Nebensätze mit weil, dass, wenn', 'Complete these tasks to reinforce "Nebensätze mit weil, dass, wenn" (Wetter und Jahreszeiten).', 'vocabulary', '[{"description":"Review all vocabulary from \"Nebensätze mit weil, dass, wenn\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'In this lesson on "Nebensätze mit weil, dass, wenn" (Wetter und Jahreszeiten), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nebensätze mit weil, dass, wenn\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nebensätze mit weil, dass, wenn\""}]', ARRAY['"Nebensätze mit weil, dass, wenn" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Nebensätze mit weil, dass, wenn — Speaking 1', 'Practice the key vocabulary and phrases from "Nebensätze mit weil, dass, wenn" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Nebensätze mit weil, dass, wenn — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Nebensätze mit weil, dass, wenn — Writing Task 1', 'Write a short text (50-100 words) about nebensätze mit weil, dass, wenn. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Nebensätze mit weil, dass, wenn — Conversation 1', 'Practice a realistic conversation about nebensätze mit weil, dass, wenn in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nebensätze mit weil, dass, wenn" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Nebensätze mit weil, dass, wenn — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nebensätze mit weil, dass, wenn". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Nebensätze mit weil, dass, wenn', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Nebensätze mit weil, dass, wenn — Deep Understanding', 'Explain the most important concepts from "Nebensätze mit weil, dass, wenn" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nebensätze mit weil, dass, wenn', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Nebensätze mit weil, dass, wenn — Reading Practice', 'This is a A2-level reading passage about nebensätze mit weil, dass, wenn in the context of Wetter und Jahreszeiten.

Nebensätze mit weil, dass, wenn is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5c73f90d-a86e-428c-ac43-5add22e93e1c', 'Nebensätze mit weil, dass, wenn — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nebensätze mit weil, dass, wenn" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 2),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Körper und Gesundheit', 'informal', false, NULL, 5),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 6),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 7),
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8);

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
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Homework: Modalverben und Imperativ', 'Complete these tasks to reinforce "Modalverben und Imperativ" (Körper und Gesundheit).', 'writing', '[{"description":"Review all vocabulary from \"Modalverben und Imperativ\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'In this lesson on "Modalverben und Imperativ" (Körper und Gesundheit), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modalverben und Imperativ\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modalverben und Imperativ\""}]', ARRAY['"Modalverben und Imperativ" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Modalverben und Imperativ — Speaking 1', 'Practice the key vocabulary and phrases from "Modalverben und Imperativ" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Modalverben und Imperativ — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Modalverben und Imperativ — Writing Task 1', 'Write a short text (50-100 words) about modalverben und imperativ. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Modalverben und Imperativ — Conversation 1', 'Practice a realistic conversation about modalverben und imperativ in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modalverben und Imperativ" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Modalverben und Imperativ — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modalverben und Imperativ". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Modalverben und Imperativ', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Modalverben und Imperativ — Deep Understanding', 'Explain the most important concepts from "Modalverben und Imperativ" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Modalverben und Imperativ', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Modalverben und Imperativ — Reading Practice', 'This is a A2-level reading passage about modalverben und imperativ in the context of Körper und Gesundheit.

Modalverben und Imperativ is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9fc9f45e-33f0-4903-8c2a-48ffd892dfed', 'Modalverben und Imperativ — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modalverben und Imperativ" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 2),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Körper und Gesundheit', 'informal', false, NULL, 5),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 6),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 7),
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8);

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
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Homework: Modalverben und Imperativ', 'Complete these tasks to reinforce "Modalverben und Imperativ" (Körper und Gesundheit).', 'speaking', '[{"description":"Review all vocabulary from \"Modalverben und Imperativ\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'In this lesson on "Modalverben und Imperativ" (Körper und Gesundheit), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modalverben und Imperativ\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modalverben und Imperativ\""}]', ARRAY['"Modalverben und Imperativ" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Modalverben und Imperativ — Speaking 1', 'Practice the key vocabulary and phrases from "Modalverben und Imperativ" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Modalverben und Imperativ — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Modalverben und Imperativ — Writing Task 1', 'Write a short text (50-100 words) about modalverben und imperativ. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Modalverben und Imperativ — Conversation 1', 'Practice a realistic conversation about modalverben und imperativ in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modalverben und Imperativ" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Modalverben und Imperativ — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modalverben und Imperativ". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Modalverben und Imperativ', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Modalverben und Imperativ — Deep Understanding', 'Explain the most important concepts from "Modalverben und Imperativ" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Modalverben und Imperativ', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Modalverben und Imperativ — Reading Practice', 'This is a A2-level reading passage about modalverben und imperativ in the context of Körper und Gesundheit.

Modalverben und Imperativ is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('871b8fa4-d7a0-4c03-9e3f-5a597c8b4c21', 'Modalverben und Imperativ — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modalverben und Imperativ" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 2),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Stadt und Verkehr', 'informal', false, NULL, 5),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 6),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 7),
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8);

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
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Homework: Wechselpräpositionen vertiefen', 'Complete these tasks to reinforce "Wechselpräpositionen vertiefen" (Stadt und Verkehr).', 'reading', '[{"description":"Review all vocabulary from \"Wechselpräpositionen vertiefen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'In this lesson on "Wechselpräpositionen vertiefen" (Stadt und Verkehr), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wechselpräpositionen vertiefen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wechselpräpositionen vertiefen\""}]', ARRAY['"Wechselpräpositionen vertiefen" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wechselpräpositionen vertiefen — Speaking 1', 'Practice the key vocabulary and phrases from "Wechselpräpositionen vertiefen" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wechselpräpositionen vertiefen — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wechselpräpositionen vertiefen — Writing Task 1', 'Write a short text (50-100 words) about wechselpräpositionen vertiefen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wechselpräpositionen vertiefen — Conversation 1', 'Practice a realistic conversation about wechselpräpositionen vertiefen in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wechselpräpositionen vertiefen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wechselpräpositionen vertiefen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wechselpräpositionen vertiefen". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wechselpräpositionen vertiefen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wechselpräpositionen vertiefen — Deep Understanding', 'Explain the most important concepts from "Wechselpräpositionen vertiefen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wechselpräpositionen vertiefen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wechselpräpositionen vertiefen — Reading Practice', 'This is a A2-level reading passage about wechselpräpositionen vertiefen in the context of Stadt und Verkehr.

Wechselpräpositionen vertiefen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4ee8b883-3461-4ce0-947f-ebc0b3898430', 'Wechselpräpositionen vertiefen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wechselpräpositionen vertiefen" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Homework: Präteritum – Vertiefung', 'Complete these tasks to reinforce "Präteritum – Vertiefung" (Feste und Feiertage).', 'grammar', '[{"description":"Review all vocabulary from \"Präteritum – Vertiefung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'In this lesson on "Präteritum – Vertiefung" (Feste und Feiertage), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Präteritum – Vertiefung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Präteritum – Vertiefung\""}]', ARRAY['"Präteritum – Vertiefung" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Präteritum – Vertiefung — Speaking 1', 'Practice the key vocabulary and phrases from "Präteritum – Vertiefung" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Präteritum – Vertiefung — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Präteritum – Vertiefung — Writing Task 1', 'Write a short text (50-100 words) about präteritum – vertiefung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Präteritum – Vertiefung — Conversation 1', 'Practice a realistic conversation about präteritum – vertiefung in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präteritum – Vertiefung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Präteritum – Vertiefung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präteritum – Vertiefung". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Präteritum – Vertiefung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Präteritum – Vertiefung — Deep Understanding', 'Explain the most important concepts from "Präteritum – Vertiefung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Präteritum – Vertiefung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Präteritum – Vertiefung — Reading Practice', 'This is a A2-level reading passage about präteritum – vertiefung in the context of Feste und Feiertage.

Präteritum – Vertiefung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae301531-5838-4a9a-8b67-d2e6976ae05d', 'Präteritum – Vertiefung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Präteritum – Vertiefung" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 2),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Stadt und Verkehr', 'informal', false, NULL, 5),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 6),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 7),
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8);

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
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Homework: Wechselpräpositionen vertiefen', 'Complete these tasks to reinforce "Wechselpräpositionen vertiefen" (Stadt und Verkehr).', 'mixed', '[{"description":"Review all vocabulary from \"Wechselpräpositionen vertiefen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'In this lesson on "Wechselpräpositionen vertiefen" (Stadt und Verkehr), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wechselpräpositionen vertiefen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wechselpräpositionen vertiefen\""}]', ARRAY['"Wechselpräpositionen vertiefen" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wechselpräpositionen vertiefen — Speaking 1', 'Practice the key vocabulary and phrases from "Wechselpräpositionen vertiefen" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wechselpräpositionen vertiefen — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wechselpräpositionen vertiefen — Writing Task 1', 'Write a short text (50-100 words) about wechselpräpositionen vertiefen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wechselpräpositionen vertiefen — Conversation 1', 'Practice a realistic conversation about wechselpräpositionen vertiefen in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wechselpräpositionen vertiefen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wechselpräpositionen vertiefen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wechselpräpositionen vertiefen". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wechselpräpositionen vertiefen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wechselpräpositionen vertiefen — Deep Understanding', 'Explain the most important concepts from "Wechselpräpositionen vertiefen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wechselpräpositionen vertiefen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wechselpräpositionen vertiefen — Reading Practice', 'This is a A2-level reading passage about wechselpräpositionen vertiefen in the context of Stadt und Verkehr.

Wechselpräpositionen vertiefen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('84103e31-4a85-4d07-b8cd-9f9f79699370', 'Wechselpräpositionen vertiefen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wechselpräpositionen vertiefen" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Homework: Perfekt mit haben und sein', 'Complete these tasks to reinforce "Perfekt mit haben und sein" (Essen und Trinken).', 'vocabulary', '[{"description":"Review all vocabulary from \"Perfekt mit haben und sein\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'In this lesson on "Perfekt mit haben und sein" (Essen und Trinken), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Perfekt mit haben und sein\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Perfekt mit haben und sein\""}]', ARRAY['"Perfekt mit haben und sein" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Perfekt mit haben und sein — Speaking 1', 'Practice the key vocabulary and phrases from "Perfekt mit haben und sein" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Perfekt mit haben und sein — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Perfekt mit haben und sein — Writing Task 1', 'Write a short text (50-100 words) about perfekt mit haben und sein. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Perfekt mit haben und sein — Conversation 1', 'Practice a realistic conversation about perfekt mit haben und sein in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Perfekt mit haben und sein" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Perfekt mit haben und sein — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Perfekt mit haben und sein". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Perfekt mit haben und sein', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Perfekt mit haben und sein — Deep Understanding', 'Explain the most important concepts from "Perfekt mit haben und sein" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Perfekt mit haben und sein', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Perfekt mit haben und sein — Reading Practice', 'This is a A2-level reading passage about perfekt mit haben und sein in the context of Essen und Trinken.

Perfekt mit haben und sein is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5994078a-82a3-49ff-9ddb-bb5f5eb6c46f', 'Perfekt mit haben und sein — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Perfekt mit haben und sein" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 2),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Kleidung und Mode', 'informal', false, NULL, 5),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 6),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 7),
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8);

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
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Homework: Akkusativ, Dativ und dieser/jeder/alle', 'Complete these tasks to reinforce "Akkusativ, Dativ und dieser/jeder/alle" (Kleidung und Mode).', 'writing', '[{"description":"Review all vocabulary from \"Akkusativ, Dativ und dieser/jeder/alle\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'In this lesson on "Akkusativ, Dativ und dieser/jeder/alle" (Kleidung und Mode), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Akkusativ, Dativ und dieser/jeder/alle\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Akkusativ, Dativ und dieser/jeder/alle\""}]', ARRAY['"Akkusativ, Dativ und dieser/jeder/alle" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Akkusativ, Dativ und dieser/jeder/alle — Speaking 1', 'Practice the key vocabulary and phrases from "Akkusativ, Dativ und dieser/jeder/alle" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Akkusativ, Dativ und dieser/jeder/alle — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Akkusativ, Dativ und dieser/jeder/alle — Writing Task 1', 'Write a short text (50-100 words) about akkusativ, dativ und dieser/jeder/alle. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Akkusativ, Dativ und dieser/jeder/alle — Conversation 1', 'Practice a realistic conversation about akkusativ, dativ und dieser/jeder/alle in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akkusativ, Dativ und dieser/jeder/alle" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Akkusativ, Dativ und dieser/jeder/alle — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Akkusativ, Dativ und dieser/jeder/alle". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Akkusativ, Dativ und dieser/jeder/alle', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Akkusativ, Dativ und dieser/jeder/alle — Deep Understanding', 'Explain the most important concepts from "Akkusativ, Dativ und dieser/jeder/alle" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Akkusativ, Dativ und dieser/jeder/alle', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Akkusativ, Dativ und dieser/jeder/alle — Reading Practice', 'This is a A2-level reading passage about akkusativ, dativ und dieser/jeder/alle in the context of Kleidung und Mode.

Akkusativ, Dativ und dieser/jeder/alle is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('83ba1206-bbe8-4a14-af08-d83f4a3ebe27', 'Akkusativ, Dativ und dieser/jeder/alle — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Akkusativ, Dativ und dieser/jeder/alle" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Homework: Nebensätze mit weil, dass, wenn', 'Complete these tasks to reinforce "Nebensätze mit weil, dass, wenn" (Wetter und Jahreszeiten).', 'speaking', '[{"description":"Review all vocabulary from \"Nebensätze mit weil, dass, wenn\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'In this lesson on "Nebensätze mit weil, dass, wenn" (Wetter und Jahreszeiten), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nebensätze mit weil, dass, wenn\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nebensätze mit weil, dass, wenn\""}]', ARRAY['"Nebensätze mit weil, dass, wenn" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Nebensätze mit weil, dass, wenn — Speaking 1', 'Practice the key vocabulary and phrases from "Nebensätze mit weil, dass, wenn" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Nebensätze mit weil, dass, wenn — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Nebensätze mit weil, dass, wenn — Writing Task 1', 'Write a short text (50-100 words) about nebensätze mit weil, dass, wenn. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Nebensätze mit weil, dass, wenn — Conversation 1', 'Practice a realistic conversation about nebensätze mit weil, dass, wenn in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nebensätze mit weil, dass, wenn" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Nebensätze mit weil, dass, wenn — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nebensätze mit weil, dass, wenn". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Nebensätze mit weil, dass, wenn', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Nebensätze mit weil, dass, wenn — Deep Understanding', 'Explain the most important concepts from "Nebensätze mit weil, dass, wenn" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nebensätze mit weil, dass, wenn', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Nebensätze mit weil, dass, wenn — Reading Practice', 'This is a A2-level reading passage about nebensätze mit weil, dass, wenn in the context of Wetter und Jahreszeiten.

Nebensätze mit weil, dass, wenn is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('05af26cc-86da-4372-acbc-805d3a1b96b3', 'Nebensätze mit weil, dass, wenn — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nebensätze mit weil, dass, wenn" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 2),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Kleidung und Mode', 'informal', false, NULL, 5),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 6),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 7),
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8);

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
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Homework: Akkusativ, Dativ und dieser/jeder/alle', 'Complete these tasks to reinforce "Akkusativ, Dativ und dieser/jeder/alle" (Kleidung und Mode).', 'reading', '[{"description":"Review all vocabulary from \"Akkusativ, Dativ und dieser/jeder/alle\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'In this lesson on "Akkusativ, Dativ und dieser/jeder/alle" (Kleidung und Mode), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Akkusativ, Dativ und dieser/jeder/alle\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Akkusativ, Dativ und dieser/jeder/alle\""}]', ARRAY['"Akkusativ, Dativ und dieser/jeder/alle" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Akkusativ, Dativ und dieser/jeder/alle — Speaking 1', 'Practice the key vocabulary and phrases from "Akkusativ, Dativ und dieser/jeder/alle" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Akkusativ, Dativ und dieser/jeder/alle — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Akkusativ, Dativ und dieser/jeder/alle — Writing Task 1', 'Write a short text (50-100 words) about akkusativ, dativ und dieser/jeder/alle. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Akkusativ, Dativ und dieser/jeder/alle — Conversation 1', 'Practice a realistic conversation about akkusativ, dativ und dieser/jeder/alle in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akkusativ, Dativ und dieser/jeder/alle" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Akkusativ, Dativ und dieser/jeder/alle — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Akkusativ, Dativ und dieser/jeder/alle". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Akkusativ, Dativ und dieser/jeder/alle', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Akkusativ, Dativ und dieser/jeder/alle — Deep Understanding', 'Explain the most important concepts from "Akkusativ, Dativ und dieser/jeder/alle" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Akkusativ, Dativ und dieser/jeder/alle', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Akkusativ, Dativ und dieser/jeder/alle — Reading Practice', 'This is a A2-level reading passage about akkusativ, dativ und dieser/jeder/alle in the context of Kleidung und Mode.

Akkusativ, Dativ und dieser/jeder/alle is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('62caecc5-f88a-4c18-975c-299860e6516a', 'Akkusativ, Dativ und dieser/jeder/alle — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Akkusativ, Dativ und dieser/jeder/alle" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Homework: Perfekt mit haben und sein', 'Complete these tasks to reinforce "Perfekt mit haben und sein" (Essen und Trinken).', 'grammar', '[{"description":"Review all vocabulary from \"Perfekt mit haben und sein\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'In this lesson on "Perfekt mit haben und sein" (Essen und Trinken), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Perfekt mit haben und sein\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Perfekt mit haben und sein\""}]', ARRAY['"Perfekt mit haben und sein" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Perfekt mit haben und sein — Speaking 1', 'Practice the key vocabulary and phrases from "Perfekt mit haben und sein" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Perfekt mit haben und sein — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Perfekt mit haben und sein — Writing Task 1', 'Write a short text (50-100 words) about perfekt mit haben und sein. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Perfekt mit haben und sein — Conversation 1', 'Practice a realistic conversation about perfekt mit haben und sein in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Perfekt mit haben und sein" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Perfekt mit haben und sein — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Perfekt mit haben und sein". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Perfekt mit haben und sein', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Perfekt mit haben und sein — Deep Understanding', 'Explain the most important concepts from "Perfekt mit haben und sein" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Perfekt mit haben und sein', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Perfekt mit haben und sein — Reading Practice', 'This is a A2-level reading passage about perfekt mit haben und sein in the context of Essen und Trinken.

Perfekt mit haben und sein is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('acd5ccb7-9e9a-4934-9e0e-261e5fa85d85', 'Perfekt mit haben und sein — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Perfekt mit haben und sein" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Homework: Präteritum – Vertiefung', 'Complete these tasks to reinforce "Präteritum – Vertiefung" (Feste und Feiertage).', 'mixed', '[{"description":"Review all vocabulary from \"Präteritum – Vertiefung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'In this lesson on "Präteritum – Vertiefung" (Feste und Feiertage), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Präteritum – Vertiefung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Präteritum – Vertiefung\""}]', ARRAY['"Präteritum – Vertiefung" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Präteritum – Vertiefung — Speaking 1', 'Practice the key vocabulary and phrases from "Präteritum – Vertiefung" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Präteritum – Vertiefung — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Präteritum – Vertiefung — Writing Task 1', 'Write a short text (50-100 words) about präteritum – vertiefung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Präteritum – Vertiefung — Conversation 1', 'Practice a realistic conversation about präteritum – vertiefung in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präteritum – Vertiefung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Präteritum – Vertiefung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präteritum – Vertiefung". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Präteritum – Vertiefung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Präteritum – Vertiefung — Deep Understanding', 'Explain the most important concepts from "Präteritum – Vertiefung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Präteritum – Vertiefung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Präteritum – Vertiefung — Reading Practice', 'This is a A2-level reading passage about präteritum – vertiefung in the context of Feste und Feiertage.

Präteritum – Vertiefung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'Präteritum – Vertiefung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Präteritum – Vertiefung" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Was kostet das?', 'How much does this cost?', 'كم سعر هذا؟', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Haben Sie das in einer anderen Größe?', 'Do you have this in another size?', 'هل لديك هذا بمقاس آخر؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Ich möchte nur gucken.', 'I''m just looking.', 'فقط أتفرج.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Das ist zu teuer.', 'That''s too expensive.', 'هذا غالي جداً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Gibt es einen Rabatt?', 'Is there a discount?', 'هل هناك خصم؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Ich nehme es!', 'I''ll take it!', 'سآخذه!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 6),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Kann ich mit Karte zahlen?', 'Can I pay by card?', 'هل يمكنني الدفع بالبطاقة؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Preis', 'price', 'How much', 'vocabulary', 1),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'das Geld', 'money', 'For paying', 'vocabulary', 2),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Euro', 'Euro', 'Currency', 'vocabulary', 3),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Cent', 'Cent', 'Small currency', 'vocabulary', 4),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'das Geschäft', 'shop / store', 'Where you buy', 'vocabulary', 5),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'der Markt', 'market', 'Open market', 'vocabulary', 6),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'die Kasse', 'cash register', 'Pay here', 'vocabulary', 7),
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'die Quittung', 'receipt', 'Proof of purchase', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Homework: Einkaufsgespräch', 'Complete these tasks to reinforce "Einkaufsgespräch" (Kleidung und Mode).', 'vocabulary', '[{"description":"Review all vocabulary from \"Einkaufsgespräch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'In this lesson on "Einkaufsgespräch" (Kleidung und Mode), you learned key speaking concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einkaufsgespräch\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einkaufsgespräch\""}]', ARRAY['"Einkaufsgespräch" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Einkaufsgespräch — Speaking 1', 'Practice the key vocabulary and phrases from "Einkaufsgespräch" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Einkaufsgespräch — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Einkaufsgespräch — Writing Task 1', 'Write a short text (50-100 words) about einkaufsgespräch. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Einkaufsgespräch — Conversation 1', 'Practice a realistic conversation about einkaufsgespräch in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einkaufsgespräch" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Einkaufsgespräch — Conversation 2', 'Practice a realistic conversation about einkaufsgespräch in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einkaufsgespräch" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Einkaufsgespräch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einkaufsgespräch". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Einkaufsgespräch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Einkaufsgespräch — Reading Practice', 'This is a A2-level reading passage about einkaufsgespräch in the context of Kleidung und Mode.

Einkaufsgespräch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4b7ad132-3a65-44f3-bcbd-e8c7f4a610a8', 'Einkaufsgespräch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einkaufsgespräch" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Homework: Im Restaurant', 'Complete these tasks to reinforce "Im Restaurant" (Essen und Trinken).', 'writing', '[{"description":"Review all vocabulary from \"Im Restaurant\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'In this lesson on "Im Restaurant" (Essen und Trinken), you learned key reading concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Restaurant\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Restaurant\""}]', ARRAY['"Im Restaurant" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Im Restaurant — Speaking 1', 'Practice the key vocabulary and phrases from "Im Restaurant" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Im Restaurant — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Im Restaurant — Writing Task 1', 'Write a short text (50-100 words) about im restaurant. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Im Restaurant — Conversation 1', 'Practice a realistic conversation about im restaurant in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Im Restaurant — Conversation 2', 'Practice a realistic conversation about im restaurant in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Im Restaurant — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Im Restaurant', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Im Restaurant — Reading Practice', 'This is a A2-level reading passage about im restaurant in the context of Essen und Trinken.

Im Restaurant is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('09027fd2-53cb-4f67-b79f-89609984ed07', 'Im Restaurant — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Restaurant" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Was kostet das?', 'How much does this cost?', 'كم سعر هذا؟', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Haben Sie das in einer anderen Größe?', 'Do you have this in another size?', 'هل لديك هذا بمقاس آخر؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Ich möchte nur gucken.', 'I''m just looking.', 'فقط أتفرج.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Das ist zu teuer.', 'That''s too expensive.', 'هذا غالي جداً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Gibt es einen Rabatt?', 'Is there a discount?', 'هل هناك خصم؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Ich nehme es!', 'I''ll take it!', 'سآخذه!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 6),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Kann ich mit Karte zahlen?', 'Can I pay by card?', 'هل يمكنني الدفع بالبطاقة؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'der Preis', 'price', 'How much', 'vocabulary', 1),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'das Geld', 'money', 'For paying', 'vocabulary', 2),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'der Euro', 'Euro', 'Currency', 'vocabulary', 3),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'der Cent', 'Cent', 'Small currency', 'vocabulary', 4),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'das Geschäft', 'shop / store', 'Where you buy', 'vocabulary', 5),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'der Markt', 'market', 'Open market', 'vocabulary', 6),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'die Kasse', 'cash register', 'Pay here', 'vocabulary', 7),
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'die Quittung', 'receipt', 'Proof of purchase', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Homework: Einkaufsgespräch', 'Complete these tasks to reinforce "Einkaufsgespräch" (Kleidung und Mode).', 'speaking', '[{"description":"Review all vocabulary from \"Einkaufsgespräch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'In this lesson on "Einkaufsgespräch" (Kleidung und Mode), you learned key speaking concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einkaufsgespräch\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einkaufsgespräch\""}]', ARRAY['"Einkaufsgespräch" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Einkaufsgespräch — Speaking 1', 'Practice the key vocabulary and phrases from "Einkaufsgespräch" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Einkaufsgespräch — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Einkaufsgespräch — Writing Task 1', 'Write a short text (50-100 words) about einkaufsgespräch. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Einkaufsgespräch — Conversation 1', 'Practice a realistic conversation about einkaufsgespräch in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einkaufsgespräch" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Einkaufsgespräch — Conversation 2', 'Practice a realistic conversation about einkaufsgespräch in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einkaufsgespräch" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Einkaufsgespräch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einkaufsgespräch". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Einkaufsgespräch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Einkaufsgespräch — Reading Practice', 'This is a A2-level reading passage about einkaufsgespräch in the context of Kleidung und Mode.

Einkaufsgespräch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'Einkaufsgespräch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einkaufsgespräch" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

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
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Homework: Beim Arzt', 'Complete these tasks to reinforce "Beim Arzt" (Körper und Gesundheit).', 'reading', '[{"description":"Review all vocabulary from \"Beim Arzt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'In this lesson on "Beim Arzt" (Körper und Gesundheit), you learned key listening concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Beim Arzt\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Beim Arzt\""}]', ARRAY['"Beim Arzt" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Beim Arzt — Speaking 1', 'Practice the key vocabulary and phrases from "Beim Arzt" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Beim Arzt — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Beim Arzt — Writing Task 1', 'Write a short text (50-100 words) about beim arzt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Beim Arzt — Conversation 1', 'Practice a realistic conversation about beim arzt in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beim Arzt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Beim Arzt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beim Arzt". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Beim Arzt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Beim Arzt — Reading Practice', 'This is a A2-level reading passage about beim arzt in the context of Körper und Gesundheit.

Beim Arzt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8e6afb89-83cb-45c2-8a0f-ccf93de1e030', 'Beim Arzt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Beim Arzt" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

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
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Homework: Wegbeschreibung', 'Complete these tasks to reinforce "Wegbeschreibung" (Stadt und Verkehr).', 'grammar', '[{"description":"Review all vocabulary from \"Wegbeschreibung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'In this lesson on "Wegbeschreibung" (Stadt und Verkehr), you learned key writing concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wegbeschreibung\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wegbeschreibung\""}]', ARRAY['"Wegbeschreibung" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wegbeschreibung — Speaking 1', 'Practice the key vocabulary and phrases from "Wegbeschreibung" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wegbeschreibung — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wegbeschreibung — Writing Task 1', 'Write a short text (50-100 words) about wegbeschreibung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wegbeschreibung — Writing Task 2', 'Write 5 questions about wegbeschreibung and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wegbeschreibung — Conversation 1', 'Practice a realistic conversation about wegbeschreibung in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wegbeschreibung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wegbeschreibung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wegbeschreibung". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wegbeschreibung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wegbeschreibung — Reading Practice', 'This is a A2-level reading passage about wegbeschreibung in the context of Stadt und Verkehr.

Wegbeschreibung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0c95ebd9-d5e2-47a6-9e54-5a4682f69044', 'Wegbeschreibung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wegbeschreibung" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

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
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Homework: Wetterbericht', 'Complete these tasks to reinforce "Wetterbericht" (Wetter und Jahreszeiten).', 'mixed', '[{"description":"Review all vocabulary from \"Wetterbericht\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'In this lesson on "Wetterbericht" (Wetter und Jahreszeiten), you learned key listening concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wetterbericht\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wetterbericht\""}]', ARRAY['"Wetterbericht" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wetterbericht — Speaking 1', 'Practice the key vocabulary and phrases from "Wetterbericht" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wetterbericht — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wetterbericht — Writing Task 1', 'Write a short text (50-100 words) about wetterbericht. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wetterbericht — Conversation 1', 'Practice a realistic conversation about wetterbericht in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetterbericht" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wetterbericht — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wetterbericht". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wetterbericht', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wetterbericht — Reading Practice', 'This is a A2-level reading passage about wetterbericht in the context of Wetter und Jahreszeiten.

Wetterbericht is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('44bf51e7-7438-4740-b797-45a4e722950b', 'Wetterbericht — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wetterbericht" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Homework: Weihnachten in Deutschland', 'Complete these tasks to reinforce "Weihnachten in Deutschland" (Feste und Feiertage).', 'vocabulary', '[{"description":"Review all vocabulary from \"Weihnachten in Deutschland\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'In this lesson on "Weihnachten in Deutschland" (Feste und Feiertage), you learned key reading concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Weihnachten in Deutschland\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Weihnachten in Deutschland\""}]', ARRAY['"Weihnachten in Deutschland" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Weihnachten in Deutschland — Speaking 1', 'Practice the key vocabulary and phrases from "Weihnachten in Deutschland" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Weihnachten in Deutschland — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Weihnachten in Deutschland — Writing Task 1', 'Write a short text (50-100 words) about weihnachten in deutschland. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Weihnachten in Deutschland — Conversation 1', 'Practice a realistic conversation about weihnachten in deutschland in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Weihnachten in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Weihnachten in Deutschland — Conversation 2', 'Practice a realistic conversation about weihnachten in deutschland in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Weihnachten in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Weihnachten in Deutschland — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Weihnachten in Deutschland". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Weihnachten in Deutschland', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Weihnachten in Deutschland — Reading Practice', 'This is a A2-level reading passage about weihnachten in deutschland in the context of Feste und Feiertage.

Weihnachten in Deutschland is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5a4fab4d-91a2-4ff0-a683-2b9c06fbbbef', 'Weihnachten in Deutschland — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Weihnachten in Deutschland" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Homework: Im Restaurant', 'Complete these tasks to reinforce "Im Restaurant" (Essen und Trinken).', 'writing', '[{"description":"Review all vocabulary from \"Im Restaurant\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'In this lesson on "Im Restaurant" (Essen und Trinken), you learned key reading concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Restaurant\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Restaurant\""}]', ARRAY['"Im Restaurant" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Im Restaurant — Speaking 1', 'Practice the key vocabulary and phrases from "Im Restaurant" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Im Restaurant — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Im Restaurant — Writing Task 1', 'Write a short text (50-100 words) about im restaurant. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Im Restaurant — Conversation 1', 'Practice a realistic conversation about im restaurant in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Im Restaurant — Conversation 2', 'Practice a realistic conversation about im restaurant in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Im Restaurant — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Im Restaurant', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Im Restaurant — Reading Practice', 'This is a A2-level reading passage about im restaurant in the context of Essen und Trinken.

Im Restaurant is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ee85e68d-c3e6-4873-9519-35af9a832ebb', 'Im Restaurant — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Restaurant" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

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
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Homework: Beim Arzt', 'Complete these tasks to reinforce "Beim Arzt" (Körper und Gesundheit).', 'speaking', '[{"description":"Review all vocabulary from \"Beim Arzt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'In this lesson on "Beim Arzt" (Körper und Gesundheit), you learned key listening concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Beim Arzt\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Beim Arzt\""}]', ARRAY['"Beim Arzt" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Beim Arzt — Speaking 1', 'Practice the key vocabulary and phrases from "Beim Arzt" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Beim Arzt — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Beim Arzt — Writing Task 1', 'Write a short text (50-100 words) about beim arzt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Beim Arzt — Conversation 1', 'Practice a realistic conversation about beim arzt in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beim Arzt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Beim Arzt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beim Arzt". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Beim Arzt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Beim Arzt — Reading Practice', 'This is a A2-level reading passage about beim arzt in the context of Körper und Gesundheit.

Beim Arzt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'Beim Arzt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Beim Arzt" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

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
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Homework: Wegbeschreibung', 'Complete these tasks to reinforce "Wegbeschreibung" (Stadt und Verkehr).', 'reading', '[{"description":"Review all vocabulary from \"Wegbeschreibung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'In this lesson on "Wegbeschreibung" (Stadt und Verkehr), you learned key writing concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wegbeschreibung\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wegbeschreibung\""}]', ARRAY['"Wegbeschreibung" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wegbeschreibung — Speaking 1', 'Practice the key vocabulary and phrases from "Wegbeschreibung" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wegbeschreibung — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wegbeschreibung — Writing Task 1', 'Write a short text (50-100 words) about wegbeschreibung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wegbeschreibung — Writing Task 2', 'Write 5 questions about wegbeschreibung and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wegbeschreibung — Conversation 1', 'Practice a realistic conversation about wegbeschreibung in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wegbeschreibung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wegbeschreibung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wegbeschreibung". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wegbeschreibung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wegbeschreibung — Reading Practice', 'This is a A2-level reading passage about wegbeschreibung in the context of Stadt und Verkehr.

Wegbeschreibung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Wegbeschreibung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wegbeschreibung" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Homework: Wetterbericht', 'Complete these tasks to reinforce "Wetterbericht" (Wetter und Jahreszeiten).', 'grammar', '[{"description":"Review all vocabulary from \"Wetterbericht\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'In this lesson on "Wetterbericht" (Wetter und Jahreszeiten), you learned key listening concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wetterbericht\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wetterbericht\""}]', ARRAY['"Wetterbericht" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wetterbericht — Speaking 1', 'Practice the key vocabulary and phrases from "Wetterbericht" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wetterbericht — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wetterbericht — Writing Task 1', 'Write a short text (50-100 words) about wetterbericht. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wetterbericht — Conversation 1', 'Practice a realistic conversation about wetterbericht in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetterbericht" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wetterbericht — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wetterbericht". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wetterbericht', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wetterbericht — Reading Practice', 'This is a A2-level reading passage about wetterbericht in the context of Wetter und Jahreszeiten.

Wetterbericht is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('375134d5-cd43-4c9f-8292-48936f8b4cf5', 'Wetterbericht — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wetterbericht" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

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
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Homework: Weihnachten in Deutschland', 'Complete these tasks to reinforce "Weihnachten in Deutschland" (Feste und Feiertage).', 'mixed', '[{"description":"Review all vocabulary from \"Weihnachten in Deutschland\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'In this lesson on "Weihnachten in Deutschland" (Feste und Feiertage), you learned key reading concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Weihnachten in Deutschland\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Weihnachten in Deutschland\""}]', ARRAY['"Weihnachten in Deutschland" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Weihnachten in Deutschland — Speaking 1', 'Practice the key vocabulary and phrases from "Weihnachten in Deutschland" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Weihnachten in Deutschland — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Weihnachten in Deutschland — Writing Task 1', 'Write a short text (50-100 words) about weihnachten in deutschland. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Weihnachten in Deutschland — Conversation 1', 'Practice a realistic conversation about weihnachten in deutschland in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Weihnachten in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Weihnachten in Deutschland — Conversation 2', 'Practice a realistic conversation about weihnachten in deutschland in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Weihnachten in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Weihnachten in Deutschland — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Weihnachten in Deutschland". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Weihnachten in Deutschland', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Weihnachten in Deutschland — Reading Practice', 'This is a A2-level reading passage about weihnachten in deutschland in the context of Feste und Feiertage.

Weihnachten in Deutschland is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b209625c-c869-4243-91ba-9066b6a098f1', 'Weihnachten in Deutschland — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Weihnachten in Deutschland" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Homework: Wiederholung: Wetter und Jahreszeiten', 'Complete these tasks to reinforce "Wiederholung: Wetter und Jahreszeiten" (Wetter und Jahreszeiten).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Wetter und Jahreszeiten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'In this lesson on "Wiederholung: Wetter und Jahreszeiten" (Wetter und Jahreszeiten), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wetter und Jahreszeiten\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wetter und Jahreszeiten\""}]', ARRAY['"Wiederholung: Wetter und Jahreszeiten" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wetter und Jahreszeiten — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wetter und Jahreszeiten" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wetter und Jahreszeiten — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wetter und Jahreszeiten — Conversation 1', 'Practice a realistic conversation about wiederholung: wetter und jahreszeiten in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wetter und Jahreszeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wetter und Jahreszeiten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wetter und Jahreszeiten". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wiederholung: Wetter und Jahreszeiten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wetter und Jahreszeiten — Reading Practice', 'This is a A2-level reading passage about wiederholung: wetter und jahreszeiten in the context of Wetter und Jahreszeiten.

Wiederholung: Wetter und Jahreszeiten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('c4dd16eb-1afe-49c6-bab0-95ffd28f0519', 'Wiederholung: Wetter und Jahreszeiten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wetter und Jahreszeiten" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5);

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
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Homework: Wiederholung: Körper und Gesundheit', 'Complete these tasks to reinforce "Wiederholung: Körper und Gesundheit" (Körper und Gesundheit).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Körper und Gesundheit\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'In this lesson on "Wiederholung: Körper und Gesundheit" (Körper und Gesundheit), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Körper und Gesundheit\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Körper und Gesundheit\""}]', ARRAY['"Wiederholung: Körper und Gesundheit" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Körper und Gesundheit — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Körper und Gesundheit" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Körper und Gesundheit — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Körper und Gesundheit — Conversation 1', 'Practice a realistic conversation about wiederholung: körper und gesundheit in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Körper und Gesundheit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Körper und Gesundheit — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Körper und Gesundheit". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Wiederholung: Körper und Gesundheit', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Körper und Gesundheit — Reading Practice', 'This is a A2-level reading passage about wiederholung: körper und gesundheit in the context of Körper und Gesundheit.

Wiederholung: Körper und Gesundheit is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('079d462d-66ff-4343-a003-13a2db31508c', 'Wiederholung: Körper und Gesundheit — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Körper und Gesundheit" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Homework: Wiederholung: Essen und Trinken', 'Complete these tasks to reinforce "Wiederholung: Essen und Trinken" (Essen und Trinken).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Essen und Trinken\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'In this lesson on "Wiederholung: Essen und Trinken" (Essen und Trinken), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Essen und Trinken\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Essen und Trinken\""}]', ARRAY['"Wiederholung: Essen und Trinken" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Essen und Trinken — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Essen und Trinken" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Essen und Trinken — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Essen und Trinken — Conversation 1', 'Practice a realistic conversation about wiederholung: essen und trinken in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Essen und Trinken" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Essen und Trinken — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Essen und Trinken". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Wiederholung: Essen und Trinken', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Essen und Trinken — Reading Practice', 'This is a A2-level reading passage about wiederholung: essen und trinken in the context of Essen und Trinken.

Wiederholung: Essen und Trinken is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'Wiederholung: Essen und Trinken — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Essen und Trinken" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Homework: Wiederholung: Feste und Feiertage', 'Complete these tasks to reinforce "Wiederholung: Feste und Feiertage" (Feste und Feiertage).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Feste und Feiertage\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'In this lesson on "Wiederholung: Feste und Feiertage" (Feste und Feiertage), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Feste und Feiertage\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Feste und Feiertage\""}]', ARRAY['"Wiederholung: Feste und Feiertage" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Feste und Feiertage — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Feste und Feiertage" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Feste und Feiertage — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Feste und Feiertage — Conversation 1', 'Practice a realistic conversation about wiederholung: feste und feiertage in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Feste und Feiertage" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Feste und Feiertage — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Feste und Feiertage". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Wiederholung: Feste und Feiertage', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Feste und Feiertage — Reading Practice', 'This is a A2-level reading passage about wiederholung: feste und feiertage in the context of Feste und Feiertage.

Wiederholung: Feste und Feiertage is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('22823503-dd29-40b3-af75-70ab2324eb95', 'Wiederholung: Feste und Feiertage — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Feste und Feiertage" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Homework: Wiederholung: Wetter und Jahreszeiten', 'Complete these tasks to reinforce "Wiederholung: Wetter und Jahreszeiten" (Wetter und Jahreszeiten).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Wetter und Jahreszeiten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'In this lesson on "Wiederholung: Wetter und Jahreszeiten" (Wetter und Jahreszeiten), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wetter und Jahreszeiten\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wetter und Jahreszeiten\""}]', ARRAY['"Wiederholung: Wetter und Jahreszeiten" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wetter und Jahreszeiten — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wetter und Jahreszeiten" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wetter und Jahreszeiten — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wetter und Jahreszeiten — Conversation 1', 'Practice a realistic conversation about wiederholung: wetter und jahreszeiten in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wetter und Jahreszeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wetter und Jahreszeiten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wetter und Jahreszeiten". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wiederholung: Wetter und Jahreszeiten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wetter und Jahreszeiten — Reading Practice', 'This is a A2-level reading passage about wiederholung: wetter und jahreszeiten in the context of Wetter und Jahreszeiten.

Wiederholung: Wetter und Jahreszeiten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('291e43bf-2d31-4729-8f5c-2eb39934b41c', 'Wiederholung: Wetter und Jahreszeiten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wetter und Jahreszeiten" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5);

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
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Homework: Wiederholung: Stadt und Verkehr', 'Complete these tasks to reinforce "Wiederholung: Stadt und Verkehr" (Stadt und Verkehr).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Stadt und Verkehr\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'In this lesson on "Wiederholung: Stadt und Verkehr" (Stadt und Verkehr), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Stadt und Verkehr\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Stadt und Verkehr\""}]', ARRAY['"Wiederholung: Stadt und Verkehr" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Stadt und Verkehr — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Stadt und Verkehr" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Stadt und Verkehr — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Stadt und Verkehr — Conversation 1', 'Practice a realistic conversation about wiederholung: stadt und verkehr in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Stadt und Verkehr" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Stadt und Verkehr — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Stadt und Verkehr". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wiederholung: Stadt und Verkehr', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Stadt und Verkehr — Reading Practice', 'This is a A2-level reading passage about wiederholung: stadt und verkehr in the context of Stadt und Verkehr.

Wiederholung: Stadt und Verkehr is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Wiederholung: Stadt und Verkehr — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Stadt und Verkehr" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5);

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
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Homework: Wiederholung: Kleidung und Mode', 'Complete these tasks to reinforce "Wiederholung: Kleidung und Mode" (Kleidung und Mode).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Kleidung und Mode\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'In this lesson on "Wiederholung: Kleidung und Mode" (Kleidung und Mode), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Kleidung und Mode\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Kleidung und Mode\""}]', ARRAY['"Wiederholung: Kleidung und Mode" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Kleidung und Mode — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Kleidung und Mode" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Kleidung und Mode — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Kleidung und Mode — Conversation 1', 'Practice a realistic conversation about wiederholung: kleidung und mode in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Kleidung und Mode" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Kleidung und Mode — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Kleidung und Mode". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Wiederholung: Kleidung und Mode', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Kleidung und Mode — Reading Practice', 'This is a A2-level reading passage about wiederholung: kleidung und mode in the context of Kleidung und Mode.

Wiederholung: Kleidung und Mode is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('363135fb-ef4d-433f-95bf-555e9602f140', 'Wiederholung: Kleidung und Mode — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Kleidung und Mode" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5);

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
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Homework: Wiederholung: Körper und Gesundheit', 'Complete these tasks to reinforce "Wiederholung: Körper und Gesundheit" (Körper und Gesundheit).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Körper und Gesundheit\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'In this lesson on "Wiederholung: Körper und Gesundheit" (Körper und Gesundheit), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Körper und Gesundheit\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Körper und Gesundheit\""}]', ARRAY['"Wiederholung: Körper und Gesundheit" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Körper und Gesundheit — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Körper und Gesundheit" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Körper und Gesundheit — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Körper und Gesundheit — Conversation 1', 'Practice a realistic conversation about wiederholung: körper und gesundheit in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Körper und Gesundheit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Körper und Gesundheit — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Körper und Gesundheit". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Wiederholung: Körper und Gesundheit', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Körper und Gesundheit — Reading Practice', 'This is a A2-level reading passage about wiederholung: körper und gesundheit in the context of Körper und Gesundheit.

Wiederholung: Körper und Gesundheit is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('67476e14-481b-455d-b100-a2478320bc0f', 'Wiederholung: Körper und Gesundheit — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Körper und Gesundheit" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5);

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
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Homework: Wiederholung: Stadt und Verkehr', 'Complete these tasks to reinforce "Wiederholung: Stadt und Verkehr" (Stadt und Verkehr).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Stadt und Verkehr\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'In this lesson on "Wiederholung: Stadt und Verkehr" (Stadt und Verkehr), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Stadt und Verkehr\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Stadt und Verkehr\""}]', ARRAY['"Wiederholung: Stadt und Verkehr" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Stadt und Verkehr — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Stadt und Verkehr" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Stadt und Verkehr — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Stadt und Verkehr — Conversation 1', 'Practice a realistic conversation about wiederholung: stadt und verkehr in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Stadt und Verkehr" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Stadt und Verkehr — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Stadt und Verkehr". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wiederholung: Stadt und Verkehr', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Stadt und Verkehr — Reading Practice', 'This is a A2-level reading passage about wiederholung: stadt und verkehr in the context of Stadt und Verkehr.

Wiederholung: Stadt und Verkehr is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('12dca2f3-35f0-4746-9c16-1418208adf9a', 'Wiederholung: Stadt und Verkehr — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Stadt und Verkehr" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Homework: Wiederholung: Essen und Trinken', 'Complete these tasks to reinforce "Wiederholung: Essen und Trinken" (Essen und Trinken).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Essen und Trinken\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'In this lesson on "Wiederholung: Essen und Trinken" (Essen und Trinken), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Essen und Trinken\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Essen und Trinken\""}]', ARRAY['"Wiederholung: Essen und Trinken" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Essen und Trinken — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Essen und Trinken" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Essen und Trinken — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Essen und Trinken — Conversation 1', 'Practice a realistic conversation about wiederholung: essen und trinken in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Essen und Trinken" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Essen und Trinken — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Essen und Trinken". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Wiederholung: Essen und Trinken', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Essen und Trinken — Reading Practice', 'This is a A2-level reading passage about wiederholung: essen und trinken in the context of Essen und Trinken.

Wiederholung: Essen und Trinken is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Wiederholung: Essen und Trinken — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Essen und Trinken" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5);

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
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Homework: Wiederholung: Kleidung und Mode', 'Complete these tasks to reinforce "Wiederholung: Kleidung und Mode" (Kleidung und Mode).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Kleidung und Mode\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'In this lesson on "Wiederholung: Kleidung und Mode" (Kleidung und Mode), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Kleidung und Mode\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Kleidung und Mode\""}]', ARRAY['"Wiederholung: Kleidung und Mode" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Kleidung und Mode — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Kleidung und Mode" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Kleidung und Mode — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Kleidung und Mode — Conversation 1', 'Practice a realistic conversation about wiederholung: kleidung und mode in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Kleidung und Mode" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Kleidung und Mode — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Kleidung und Mode". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Wiederholung: Kleidung und Mode', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Kleidung und Mode — Reading Practice', 'This is a A2-level reading passage about wiederholung: kleidung und mode in the context of Kleidung und Mode.

Wiederholung: Kleidung und Mode is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f12df81f-e7b9-446a-a5d0-436938e49cca', 'Wiederholung: Kleidung und Mode — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Kleidung und Mode" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Homework: Wiederholung: Feste und Feiertage', 'Complete these tasks to reinforce "Wiederholung: Feste und Feiertage" (Feste und Feiertage).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Feste und Feiertage\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'In this lesson on "Wiederholung: Feste und Feiertage" (Feste und Feiertage), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Feste und Feiertage\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Feste und Feiertage\""}]', ARRAY['"Wiederholung: Feste und Feiertage" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Feste und Feiertage — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Feste und Feiertage" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Feste und Feiertage — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Feste und Feiertage — Conversation 1', 'Practice a realistic conversation about wiederholung: feste und feiertage in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Feste und Feiertage" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Feste und Feiertage — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Feste und Feiertage". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Wiederholung: Feste und Feiertage', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Feste und Feiertage — Reading Practice', 'This is a A2-level reading passage about wiederholung: feste und feiertage in the context of Feste und Feiertage.

Wiederholung: Feste und Feiertage is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('98608bbd-142f-45f1-994d-5e3a94b2ecba', 'Wiederholung: Feste und Feiertage — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Feste und Feiertage" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('8c961e59-b9cd-46a8-abe8-2902438249cc', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5);

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
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('05aea233-8cec-4dc1-aa4b-68903490a2e0', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5);

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
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('77fa3330-d30d-44e4-9c86-6472c1373755', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5);

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
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('d0f285a5-0d30-45a8-87bc-b9c067f06ee5', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('4f6f4a86-b17a-43cb-8341-f0aae1a6cb5e', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5);

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
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5);

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
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5);

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
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('3c318aff-f132-4d05-bd2a-2e3bbf5dc28d', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('fae98a6c-2406-4000-894b-059e2bf1f272', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('c2ed2c4e-4b5c-4e2d-91a3-f9cf4ed24514', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'der Januar', 'January', 'First month', 'vocabulary', 8);