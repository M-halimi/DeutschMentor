-- ============================================================
-- PREMIUM CONTENT SEED — Level A2
-- Generated for 72 lessons across 12 modules
-- ============================================================


INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Homework: Körperteile', 'Complete these tasks to reinforce "Körperteile" (Körper und Gesundheit).', 'vocabulary', '[{"description":"Review all vocabulary from \"Körperteile\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'In this lesson on "Körperteile" (Körper und Gesundheit), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Körperteile\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Körperteile\""}]', ARRAY['"Körperteile" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Körperteile — Speaking 1', 'Practice the key vocabulary and phrases from "Körperteile" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Körperteile — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Körperteile — Writing Task 1', 'Write a short text (50-100 words) about körperteile. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Körperteile — Conversation 1', 'Practice a realistic conversation about körperteile in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Körperteile" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Körperteile — Conversation 2', 'Practice a realistic conversation about körperteile in the context of Körper und Gesundheit.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Körperteile" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Körperteile — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Körperteile". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Körperteile', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Körperteile — Deep Understanding', 'Explain the most important concepts from "Körperteile" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Körperteile', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Körperteile — Reading Practice', 'This is a A2-level reading passage about körperteile in the context of Körper und Gesundheit.

Körperteile is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('be1315f6-a7d9-4165-8400-d192017cb9ff', 'Körperteile — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Körperteile" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Homework: Lebensmittel und Nahrungsmittel', 'Complete these tasks to reinforce "Lebensmittel und Nahrungsmittel" (Essen und Trinken).', 'writing', '[{"description":"Review all vocabulary from \"Lebensmittel und Nahrungsmittel\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'In this lesson on "Lebensmittel und Nahrungsmittel" (Essen und Trinken), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Lebensmittel und Nahrungsmittel\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Lebensmittel und Nahrungsmittel\""}]', ARRAY['"Lebensmittel und Nahrungsmittel" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Lebensmittel und Nahrungsmittel — Speaking 1', 'Practice the key vocabulary and phrases from "Lebensmittel und Nahrungsmittel" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Lebensmittel und Nahrungsmittel — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Lebensmittel und Nahrungsmittel — Writing Task 1', 'Write a short text (50-100 words) about lebensmittel und nahrungsmittel. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Lebensmittel und Nahrungsmittel — Conversation 1', 'Practice a realistic conversation about lebensmittel und nahrungsmittel in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel und Nahrungsmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Lebensmittel und Nahrungsmittel — Conversation 2', 'Practice a realistic conversation about lebensmittel und nahrungsmittel in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel und Nahrungsmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Lebensmittel und Nahrungsmittel — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Lebensmittel und Nahrungsmittel". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Lebensmittel und Nahrungsmittel', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Lebensmittel und Nahrungsmittel — Deep Understanding', 'Explain the most important concepts from "Lebensmittel und Nahrungsmittel" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Lebensmittel und Nahrungsmittel', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Lebensmittel und Nahrungsmittel — Reading Practice', 'This is a A2-level reading passage about lebensmittel und nahrungsmittel in the context of Essen und Trinken.

Lebensmittel und Nahrungsmittel is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('a30ebd19-d9aa-435d-830d-3c90c02fc9c0', 'Lebensmittel und Nahrungsmittel — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Lebensmittel und Nahrungsmittel" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, NULL, 1),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 3),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kleidung und Mode', 'informal', false, NULL, 4),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kleidung und Mode', 'formal', false, NULL, 6),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kleidung und Mode', 'informal', false, NULL, 7),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 9),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Homework: Kleidungsstücke', 'Complete these tasks to reinforce "Kleidungsstücke" (Kleidung und Mode).', 'speaking', '[{"description":"Review all vocabulary from \"Kleidungsstücke\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'In this lesson on "Kleidungsstücke" (Kleidung und Mode), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kleidungsstücke\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kleidungsstücke\""}]', ARRAY['"Kleidungsstücke" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Kleidungsstücke — Speaking 1', 'Practice the key vocabulary and phrases from "Kleidungsstücke" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Kleidungsstücke — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Kleidungsstücke — Writing Task 1', 'Write a short text (50-100 words) about kleidungsstücke. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Kleidungsstücke — Conversation 1', 'Practice a realistic conversation about kleidungsstücke in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kleidungsstücke" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Kleidungsstücke — Conversation 2', 'Practice a realistic conversation about kleidungsstücke in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kleidungsstücke" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Kleidungsstücke — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kleidungsstücke". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Kleidungsstücke', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Kleidungsstücke — Deep Understanding', 'Explain the most important concepts from "Kleidungsstücke" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kleidungsstücke', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Kleidungsstücke — Reading Practice', 'This is a A2-level reading passage about kleidungsstücke in the context of Kleidung und Mode.

Kleidungsstücke is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ecf47c73-bf95-4893-9799-6bedfe5ac0fd', 'Kleidungsstücke — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kleidungsstücke" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Homework: Feste und Feiertage in Deutschland', 'Complete these tasks to reinforce "Feste und Feiertage in Deutschland" (Feste und Feiertage).', 'reading', '[{"description":"Review all vocabulary from \"Feste und Feiertage in Deutschland\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'In this lesson on "Feste und Feiertage in Deutschland" (Feste und Feiertage), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Feste und Feiertage in Deutschland\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Feste und Feiertage in Deutschland\""}]', ARRAY['"Feste und Feiertage in Deutschland" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Feste und Feiertage in Deutschland — Speaking 1', 'Practice the key vocabulary and phrases from "Feste und Feiertage in Deutschland" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Feste und Feiertage in Deutschland — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Feste und Feiertage in Deutschland — Writing Task 1', 'Write a short text (50-100 words) about feste und feiertage in deutschland. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Feste und Feiertage in Deutschland — Conversation 1', 'Practice a realistic conversation about feste und feiertage in deutschland in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Feste und Feiertage in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Feste und Feiertage in Deutschland — Conversation 2', 'Practice a realistic conversation about feste und feiertage in deutschland in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Feste und Feiertage in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Feste und Feiertage in Deutschland — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Feste und Feiertage in Deutschland". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Feste und Feiertage in Deutschland', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Feste und Feiertage in Deutschland — Deep Understanding', 'Explain the most important concepts from "Feste und Feiertage in Deutschland" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Feste und Feiertage in Deutschland', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Feste und Feiertage in Deutschland — Reading Practice', 'This is a A2-level reading passage about feste und feiertage in deutschland in the context of Feste und Feiertage.

Feste und Feiertage in Deutschland is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b1acf675-7aca-4e55-9b37-7c9cb1c31fb7', 'Feste und Feiertage in Deutschland — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Feste und Feiertage in Deutschland" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Homework: Körperteile', 'Complete these tasks to reinforce "Körperteile" (Körper und Gesundheit).', 'grammar', '[{"description":"Review all vocabulary from \"Körperteile\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'In this lesson on "Körperteile" (Körper und Gesundheit), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Körperteile\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Körperteile\""}]', ARRAY['"Körperteile" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Körperteile — Speaking 1', 'Practice the key vocabulary and phrases from "Körperteile" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Körperteile — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Körperteile — Writing Task 1', 'Write a short text (50-100 words) about körperteile. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Körperteile — Conversation 1', 'Practice a realistic conversation about körperteile in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Körperteile" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Körperteile — Conversation 2', 'Practice a realistic conversation about körperteile in the context of Körper und Gesundheit.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Körperteile" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Körperteile — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Körperteile". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Körperteile', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Körperteile — Deep Understanding', 'Explain the most important concepts from "Körperteile" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Körperteile', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Körperteile — Reading Practice', 'This is a A2-level reading passage about körperteile in the context of Körper und Gesundheit.

Körperteile is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4f2833b7-9422-4548-9e8d-e156f34ce01b', 'Körperteile — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Körperteile" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Homework: Wetter und Temperaturen', 'Complete these tasks to reinforce "Wetter und Temperaturen" (Wetter und Jahreszeiten).', 'mixed', '[{"description":"Review all vocabulary from \"Wetter und Temperaturen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'In this lesson on "Wetter und Temperaturen" (Wetter und Jahreszeiten), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wetter und Temperaturen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wetter und Temperaturen\""}]', ARRAY['"Wetter und Temperaturen" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wetter und Temperaturen — Speaking 1', 'Practice the key vocabulary and phrases from "Wetter und Temperaturen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wetter und Temperaturen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wetter und Temperaturen — Writing Task 1', 'Write a short text (50-100 words) about wetter und temperaturen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wetter und Temperaturen — Conversation 1', 'Practice a realistic conversation about wetter und temperaturen in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetter und Temperaturen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wetter und Temperaturen — Conversation 2', 'Practice a realistic conversation about wetter und temperaturen in the context of Wetter und Jahreszeiten.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetter und Temperaturen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wetter und Temperaturen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wetter und Temperaturen". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wetter und Temperaturen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wetter und Temperaturen — Deep Understanding', 'Explain the most important concepts from "Wetter und Temperaturen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wetter und Temperaturen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wetter und Temperaturen — Reading Practice', 'This is a A2-level reading passage about wetter und temperaturen in the context of Wetter und Jahreszeiten.

Wetter und Temperaturen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0e2e063a-87fb-4aa2-aaca-6879ccc79d1b', 'Wetter und Temperaturen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wetter und Temperaturen" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Homework: Orte in der Stadt', 'Complete these tasks to reinforce "Orte in der Stadt" (Stadt und Verkehr).', 'vocabulary', '[{"description":"Review all vocabulary from \"Orte in der Stadt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'In this lesson on "Orte in der Stadt" (Stadt und Verkehr), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Orte in der Stadt\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Orte in der Stadt\""}]', ARRAY['"Orte in der Stadt" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Orte in der Stadt — Speaking 1', 'Practice the key vocabulary and phrases from "Orte in der Stadt" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Orte in der Stadt — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Orte in der Stadt — Writing Task 1', 'Write a short text (50-100 words) about orte in der stadt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Orte in der Stadt — Conversation 1', 'Practice a realistic conversation about orte in der stadt in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Orte in der Stadt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Orte in der Stadt — Conversation 2', 'Practice a realistic conversation about orte in der stadt in the context of Stadt und Verkehr.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Orte in der Stadt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Orte in der Stadt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Orte in der Stadt". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Orte in der Stadt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Orte in der Stadt — Deep Understanding', 'Explain the most important concepts from "Orte in der Stadt" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Orte in der Stadt', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Orte in der Stadt — Reading Practice', 'This is a A2-level reading passage about orte in der stadt in the context of Stadt und Verkehr.

Orte in der Stadt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d642b310-73df-4e35-8c95-f16b0856dbe6', 'Orte in der Stadt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Orte in der Stadt" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Homework: Wetter und Temperaturen', 'Complete these tasks to reinforce "Wetter und Temperaturen" (Wetter und Jahreszeiten).', 'writing', '[{"description":"Review all vocabulary from \"Wetter und Temperaturen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'In this lesson on "Wetter und Temperaturen" (Wetter und Jahreszeiten), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wetter und Temperaturen\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wetter und Temperaturen\""}]', ARRAY['"Wetter und Temperaturen" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wetter und Temperaturen — Speaking 1', 'Practice the key vocabulary and phrases from "Wetter und Temperaturen" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wetter und Temperaturen — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wetter und Temperaturen — Writing Task 1', 'Write a short text (50-100 words) about wetter und temperaturen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wetter und Temperaturen — Conversation 1', 'Practice a realistic conversation about wetter und temperaturen in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetter und Temperaturen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wetter und Temperaturen — Conversation 2', 'Practice a realistic conversation about wetter und temperaturen in the context of Wetter und Jahreszeiten.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetter und Temperaturen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wetter und Temperaturen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wetter und Temperaturen". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wetter und Temperaturen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wetter und Temperaturen — Deep Understanding', 'Explain the most important concepts from "Wetter und Temperaturen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wetter und Temperaturen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wetter und Temperaturen — Reading Practice', 'This is a A2-level reading passage about wetter und temperaturen in the context of Wetter und Jahreszeiten.

Wetter und Temperaturen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('a0ae8b1e-dff3-4c33-a291-e425a91f586a', 'Wetter und Temperaturen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wetter und Temperaturen" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Homework: Orte in der Stadt', 'Complete these tasks to reinforce "Orte in der Stadt" (Stadt und Verkehr).', 'speaking', '[{"description":"Review all vocabulary from \"Orte in der Stadt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'In this lesson on "Orte in der Stadt" (Stadt und Verkehr), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Orte in der Stadt\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Orte in der Stadt\""}]', ARRAY['"Orte in der Stadt" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Orte in der Stadt — Speaking 1', 'Practice the key vocabulary and phrases from "Orte in der Stadt" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Orte in der Stadt — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Orte in der Stadt — Writing Task 1', 'Write a short text (50-100 words) about orte in der stadt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Orte in der Stadt — Conversation 1', 'Practice a realistic conversation about orte in der stadt in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Orte in der Stadt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Orte in der Stadt — Conversation 2', 'Practice a realistic conversation about orte in der stadt in the context of Stadt und Verkehr.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Orte in der Stadt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Orte in der Stadt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Orte in der Stadt". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Orte in der Stadt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Orte in der Stadt — Deep Understanding', 'Explain the most important concepts from "Orte in der Stadt" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Orte in der Stadt', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Orte in der Stadt — Reading Practice', 'This is a A2-level reading passage about orte in der stadt in the context of Stadt und Verkehr.

Orte in der Stadt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0cf7d525-b905-40e4-b9ed-496093e908e5', 'Orte in der Stadt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Orte in der Stadt" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Homework: Feste und Feiertage in Deutschland', 'Complete these tasks to reinforce "Feste und Feiertage in Deutschland" (Feste und Feiertage).', 'reading', '[{"description":"Review all vocabulary from \"Feste und Feiertage in Deutschland\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'In this lesson on "Feste und Feiertage in Deutschland" (Feste und Feiertage), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Feste und Feiertage in Deutschland\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Feste und Feiertage in Deutschland\""}]', ARRAY['"Feste und Feiertage in Deutschland" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Feste und Feiertage in Deutschland — Speaking 1', 'Practice the key vocabulary and phrases from "Feste und Feiertage in Deutschland" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Feste und Feiertage in Deutschland — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Feste und Feiertage in Deutschland — Writing Task 1', 'Write a short text (50-100 words) about feste und feiertage in deutschland. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Feste und Feiertage in Deutschland — Conversation 1', 'Practice a realistic conversation about feste und feiertage in deutschland in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Feste und Feiertage in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Feste und Feiertage in Deutschland — Conversation 2', 'Practice a realistic conversation about feste und feiertage in deutschland in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Feste und Feiertage in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Feste und Feiertage in Deutschland — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Feste und Feiertage in Deutschland". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Feste und Feiertage in Deutschland', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Feste und Feiertage in Deutschland — Deep Understanding', 'Explain the most important concepts from "Feste und Feiertage in Deutschland" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Feste und Feiertage in Deutschland', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Feste und Feiertage in Deutschland — Reading Practice', 'This is a A2-level reading passage about feste und feiertage in deutschland in the context of Feste und Feiertage.

Feste und Feiertage in Deutschland is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('235e06b8-9eaf-4241-a271-78cd48427fbb', 'Feste und Feiertage in Deutschland — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Feste und Feiertage in Deutschland" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, NULL, 1),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 3),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kleidung und Mode', 'informal', false, NULL, 4),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kleidung und Mode', 'formal', false, NULL, 6),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kleidung und Mode', 'informal', false, NULL, 7),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 9),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Homework: Kleidungsstücke', 'Complete these tasks to reinforce "Kleidungsstücke" (Kleidung und Mode).', 'grammar', '[{"description":"Review all vocabulary from \"Kleidungsstücke\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'In this lesson on "Kleidungsstücke" (Kleidung und Mode), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Kleidungsstücke\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Kleidungsstücke\""}]', ARRAY['"Kleidungsstücke" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Kleidungsstücke — Speaking 1', 'Practice the key vocabulary and phrases from "Kleidungsstücke" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Kleidungsstücke — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Kleidungsstücke — Writing Task 1', 'Write a short text (50-100 words) about kleidungsstücke. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Kleidungsstücke — Conversation 1', 'Practice a realistic conversation about kleidungsstücke in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kleidungsstücke" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Kleidungsstücke — Conversation 2', 'Practice a realistic conversation about kleidungsstücke in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Kleidungsstücke" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Kleidungsstücke — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kleidungsstücke". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Kleidungsstücke', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Kleidungsstücke — Deep Understanding', 'Explain the most important concepts from "Kleidungsstücke" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Kleidungsstücke', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Kleidungsstücke — Reading Practice', 'This is a A2-level reading passage about kleidungsstücke in the context of Kleidung und Mode.

Kleidungsstücke is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('bcd0abf6-50f3-4d36-a6ec-dbd5198a0f03', 'Kleidungsstücke — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Kleidungsstücke" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Homework: Lebensmittel und Nahrungsmittel', 'Complete these tasks to reinforce "Lebensmittel und Nahrungsmittel" (Essen und Trinken).', 'mixed', '[{"description":"Review all vocabulary from \"Lebensmittel und Nahrungsmittel\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'In this lesson on "Lebensmittel und Nahrungsmittel" (Essen und Trinken), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Lebensmittel und Nahrungsmittel\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Lebensmittel und Nahrungsmittel\""}]', ARRAY['"Lebensmittel und Nahrungsmittel" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Lebensmittel und Nahrungsmittel — Speaking 1', 'Practice the key vocabulary and phrases from "Lebensmittel und Nahrungsmittel" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Lebensmittel und Nahrungsmittel — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Lebensmittel und Nahrungsmittel — Writing Task 1', 'Write a short text (50-100 words) about lebensmittel und nahrungsmittel. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Lebensmittel und Nahrungsmittel — Conversation 1', 'Practice a realistic conversation about lebensmittel und nahrungsmittel in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel und Nahrungsmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Lebensmittel und Nahrungsmittel — Conversation 2', 'Practice a realistic conversation about lebensmittel und nahrungsmittel in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Lebensmittel und Nahrungsmittel" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Lebensmittel und Nahrungsmittel — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Lebensmittel und Nahrungsmittel". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Lebensmittel und Nahrungsmittel', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Lebensmittel und Nahrungsmittel — Deep Understanding', 'Explain the most important concepts from "Lebensmittel und Nahrungsmittel" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Lebensmittel und Nahrungsmittel', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Lebensmittel und Nahrungsmittel — Reading Practice', 'This is a A2-level reading passage about lebensmittel und nahrungsmittel in the context of Essen und Trinken.

Lebensmittel und Nahrungsmittel is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('654447a9-a760-4b3c-9889-79f5b04f5af5', 'Lebensmittel und Nahrungsmittel — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Lebensmittel und Nahrungsmittel" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Homework: Einladungen und Feiern', 'Complete these tasks to reinforce "Einladungen und Feiern" (Feste und Feiertage).', 'vocabulary', '[{"description":"Review all vocabulary from \"Einladungen und Feiern\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'In this lesson on "Einladungen und Feiern" (Feste und Feiertage), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einladungen und Feiern\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einladungen und Feiern\""}]', ARRAY['"Einladungen und Feiern" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Einladungen und Feiern — Speaking 1', 'Practice the key vocabulary and phrases from "Einladungen und Feiern" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Einladungen und Feiern — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Einladungen und Feiern — Writing Task 1', 'Write a short text (50-100 words) about einladungen und feiern. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Einladungen und Feiern — Conversation 1', 'Practice a realistic conversation about einladungen und feiern in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einladungen und Feiern" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Einladungen und Feiern — Conversation 2', 'Practice a realistic conversation about einladungen und feiern in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einladungen und Feiern" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Einladungen und Feiern — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einladungen und Feiern". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Einladungen und Feiern', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Einladungen und Feiern — Deep Understanding', 'Explain the most important concepts from "Einladungen und Feiern" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Einladungen und Feiern', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Einladungen und Feiern — Reading Practice', 'This is a A2-level reading passage about einladungen und feiern in the context of Feste und Feiertage.

Einladungen und Feiern is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('de9d8fd0-8ec1-4caa-8cb5-79c8418d55d2', 'Einladungen und Feiern — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einladungen und Feiern" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Homework: Getränke und Mahlzeiten', 'Complete these tasks to reinforce "Getränke und Mahlzeiten" (Essen und Trinken).', 'writing', '[{"description":"Review all vocabulary from \"Getränke und Mahlzeiten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'In this lesson on "Getränke und Mahlzeiten" (Essen und Trinken), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Getränke und Mahlzeiten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Getränke und Mahlzeiten\""}]', ARRAY['"Getränke und Mahlzeiten" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Getränke und Mahlzeiten — Speaking 1', 'Practice the key vocabulary and phrases from "Getränke und Mahlzeiten" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Getränke und Mahlzeiten — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Getränke und Mahlzeiten — Writing Task 1', 'Write a short text (50-100 words) about getränke und mahlzeiten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Getränke und Mahlzeiten — Conversation 1', 'Practice a realistic conversation about getränke und mahlzeiten in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Getränke und Mahlzeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Getränke und Mahlzeiten — Conversation 2', 'Practice a realistic conversation about getränke und mahlzeiten in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Getränke und Mahlzeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Getränke und Mahlzeiten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Getränke und Mahlzeiten". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Getränke und Mahlzeiten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Getränke und Mahlzeiten — Deep Understanding', 'Explain the most important concepts from "Getränke und Mahlzeiten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Getränke und Mahlzeiten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Getränke und Mahlzeiten — Reading Practice', 'This is a A2-level reading passage about getränke und mahlzeiten in the context of Essen und Trinken.

Getränke und Mahlzeiten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('249b2096-f06c-4f0e-97a2-dea0562b642b', 'Getränke und Mahlzeiten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Getränke und Mahlzeiten" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Homework: Krankheiten und Symptome', 'Complete these tasks to reinforce "Krankheiten und Symptome" (Körper und Gesundheit).', 'speaking', '[{"description":"Review all vocabulary from \"Krankheiten und Symptome\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'In this lesson on "Krankheiten und Symptome" (Körper und Gesundheit), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Krankheiten und Symptome\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Krankheiten und Symptome\""}]', ARRAY['"Krankheiten und Symptome" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Krankheiten und Symptome — Speaking 1', 'Practice the key vocabulary and phrases from "Krankheiten und Symptome" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Krankheiten und Symptome — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Krankheiten und Symptome — Writing Task 1', 'Write a short text (50-100 words) about krankheiten und symptome. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Krankheiten und Symptome — Conversation 1', 'Practice a realistic conversation about krankheiten und symptome in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Krankheiten und Symptome" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Krankheiten und Symptome — Conversation 2', 'Practice a realistic conversation about krankheiten und symptome in the context of Körper und Gesundheit.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Krankheiten und Symptome" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Krankheiten und Symptome — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Krankheiten und Symptome". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Krankheiten und Symptome', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Krankheiten und Symptome — Deep Understanding', 'Explain the most important concepts from "Krankheiten und Symptome" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Krankheiten und Symptome', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Krankheiten und Symptome — Reading Practice', 'This is a A2-level reading passage about krankheiten und symptome in the context of Körper und Gesundheit.

Krankheiten und Symptome is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d56362f2-5274-4d94-832e-ce9253ab4c2c', 'Krankheiten und Symptome — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Krankheiten und Symptome" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, NULL, 1),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 3),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kleidung und Mode', 'informal', false, NULL, 4),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kleidung und Mode', 'formal', false, NULL, 6),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kleidung und Mode', 'informal', false, NULL, 7),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 9),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Homework: Farben, Größen und Materialien', 'Complete these tasks to reinforce "Farben, Größen und Materialien" (Kleidung und Mode).', 'reading', '[{"description":"Review all vocabulary from \"Farben, Größen und Materialien\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'In this lesson on "Farben, Größen und Materialien" (Kleidung und Mode), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Farben, Größen und Materialien\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Farben, Größen und Materialien\""}]', ARRAY['"Farben, Größen und Materialien" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Farben, Größen und Materialien — Speaking 1', 'Practice the key vocabulary and phrases from "Farben, Größen und Materialien" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Farben, Größen und Materialien — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Farben, Größen und Materialien — Writing Task 1', 'Write a short text (50-100 words) about farben, größen und materialien. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Farben, Größen und Materialien — Conversation 1', 'Practice a realistic conversation about farben, größen und materialien in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Farben, Größen und Materialien" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Farben, Größen und Materialien — Conversation 2', 'Practice a realistic conversation about farben, größen und materialien in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Farben, Größen und Materialien" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Farben, Größen und Materialien — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Farben, Größen und Materialien". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Farben, Größen und Materialien', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Farben, Größen und Materialien — Deep Understanding', 'Explain the most important concepts from "Farben, Größen und Materialien" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Farben, Größen und Materialien', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Farben, Größen und Materialien — Reading Practice', 'This is a A2-level reading passage about farben, größen und materialien in the context of Kleidung und Mode.

Farben, Größen und Materialien is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4e0da297-bbaf-48d6-86ce-366f1768b9a2', 'Farben, Größen und Materialien — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Farben, Größen und Materialien" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Homework: Jahreszeiten und Monate', 'Complete these tasks to reinforce "Jahreszeiten und Monate" (Wetter und Jahreszeiten).', 'grammar', '[{"description":"Review all vocabulary from \"Jahreszeiten und Monate\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'In this lesson on "Jahreszeiten und Monate" (Wetter und Jahreszeiten), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Jahreszeiten und Monate\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Jahreszeiten und Monate\""}]', ARRAY['"Jahreszeiten und Monate" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Jahreszeiten und Monate — Speaking 1', 'Practice the key vocabulary and phrases from "Jahreszeiten und Monate" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Jahreszeiten und Monate — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Jahreszeiten und Monate — Writing Task 1', 'Write a short text (50-100 words) about jahreszeiten und monate. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Jahreszeiten und Monate — Conversation 1', 'Practice a realistic conversation about jahreszeiten und monate in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Jahreszeiten und Monate" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Jahreszeiten und Monate — Conversation 2', 'Practice a realistic conversation about jahreszeiten und monate in the context of Wetter und Jahreszeiten.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Jahreszeiten und Monate" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Jahreszeiten und Monate — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Jahreszeiten und Monate". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Jahreszeiten und Monate', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Jahreszeiten und Monate — Deep Understanding', 'Explain the most important concepts from "Jahreszeiten und Monate" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Jahreszeiten und Monate', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Jahreszeiten und Monate — Reading Practice', 'This is a A2-level reading passage about jahreszeiten und monate in the context of Wetter und Jahreszeiten.

Jahreszeiten und Monate is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('91da101c-3dc8-48db-b291-69d4900e2184', 'Jahreszeiten und Monate — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Jahreszeiten und Monate" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Homework: Verkehrsmittel und Wege', 'Complete these tasks to reinforce "Verkehrsmittel und Wege" (Stadt und Verkehr).', 'mixed', '[{"description":"Review all vocabulary from \"Verkehrsmittel und Wege\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'In this lesson on "Verkehrsmittel und Wege" (Stadt und Verkehr), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Verkehrsmittel und Wege\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Verkehrsmittel und Wege\""}]', ARRAY['"Verkehrsmittel und Wege" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Verkehrsmittel und Wege — Speaking 1', 'Practice the key vocabulary and phrases from "Verkehrsmittel und Wege" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Verkehrsmittel und Wege — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Verkehrsmittel und Wege — Writing Task 1', 'Write a short text (50-100 words) about verkehrsmittel und wege. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Verkehrsmittel und Wege — Conversation 1', 'Practice a realistic conversation about verkehrsmittel und wege in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verkehrsmittel und Wege" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Verkehrsmittel und Wege — Conversation 2', 'Practice a realistic conversation about verkehrsmittel und wege in the context of Stadt und Verkehr.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verkehrsmittel und Wege" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Verkehrsmittel und Wege — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Verkehrsmittel und Wege". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Verkehrsmittel und Wege', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Verkehrsmittel und Wege — Deep Understanding', 'Explain the most important concepts from "Verkehrsmittel und Wege" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Verkehrsmittel und Wege', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Verkehrsmittel und Wege — Reading Practice', 'This is a A2-level reading passage about verkehrsmittel und wege in the context of Stadt und Verkehr.

Verkehrsmittel und Wege is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e1539014-84dc-4227-b84e-3201ef911b18', 'Verkehrsmittel und Wege — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Verkehrsmittel und Wege" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Homework: Getränke und Mahlzeiten', 'Complete these tasks to reinforce "Getränke und Mahlzeiten" (Essen und Trinken).', 'vocabulary', '[{"description":"Review all vocabulary from \"Getränke und Mahlzeiten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'In this lesson on "Getränke und Mahlzeiten" (Essen und Trinken), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Getränke und Mahlzeiten\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Getränke und Mahlzeiten\""}]', ARRAY['"Getränke und Mahlzeiten" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Getränke und Mahlzeiten — Speaking 1', 'Practice the key vocabulary and phrases from "Getränke und Mahlzeiten" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Getränke und Mahlzeiten — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Getränke und Mahlzeiten — Writing Task 1', 'Write a short text (50-100 words) about getränke und mahlzeiten. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Getränke und Mahlzeiten — Conversation 1', 'Practice a realistic conversation about getränke und mahlzeiten in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Getränke und Mahlzeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Getränke und Mahlzeiten — Conversation 2', 'Practice a realistic conversation about getränke und mahlzeiten in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Getränke und Mahlzeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Getränke und Mahlzeiten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Getränke und Mahlzeiten". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Getränke und Mahlzeiten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Getränke und Mahlzeiten — Deep Understanding', 'Explain the most important concepts from "Getränke und Mahlzeiten" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Getränke und Mahlzeiten', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Getränke und Mahlzeiten — Reading Practice', 'This is a A2-level reading passage about getränke und mahlzeiten in the context of Essen und Trinken.

Getränke und Mahlzeiten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('be4836b3-05b1-4842-bef3-9ef31f1a7829', 'Getränke und Mahlzeiten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Getränke und Mahlzeiten" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, NULL, 1),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 3),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Kleidung und Mode', 'informal', false, NULL, 4),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Kleidung und Mode', 'formal', false, NULL, 6),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Kleidung und Mode', 'informal', false, NULL, 7),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 9),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Kleidung und Mode', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Homework: Farben, Größen und Materialien', 'Complete these tasks to reinforce "Farben, Größen und Materialien" (Kleidung und Mode).', 'writing', '[{"description":"Review all vocabulary from \"Farben, Größen und Materialien\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'In this lesson on "Farben, Größen und Materialien" (Kleidung und Mode), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Farben, Größen und Materialien\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Farben, Größen und Materialien\""}]', ARRAY['"Farben, Größen und Materialien" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Farben, Größen und Materialien — Speaking 1', 'Practice the key vocabulary and phrases from "Farben, Größen und Materialien" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Farben, Größen und Materialien — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Farben, Größen und Materialien — Writing Task 1', 'Write a short text (50-100 words) about farben, größen und materialien. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Farben, Größen und Materialien — Conversation 1', 'Practice a realistic conversation about farben, größen und materialien in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Farben, Größen und Materialien" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Farben, Größen und Materialien — Conversation 2', 'Practice a realistic conversation about farben, größen und materialien in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Farben, Größen und Materialien" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Farben, Größen und Materialien — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Farben, Größen und Materialien". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Farben, Größen und Materialien', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Farben, Größen und Materialien — Deep Understanding', 'Explain the most important concepts from "Farben, Größen und Materialien" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Farben, Größen und Materialien', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Farben, Größen und Materialien — Reading Practice', 'This is a A2-level reading passage about farben, größen und materialien in the context of Kleidung und Mode.

Farben, Größen und Materialien is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('678b7d4b-3952-4c8e-8015-bd25b2102f31', 'Farben, Größen und Materialien — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Farben, Größen und Materialien" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Homework: Jahreszeiten und Monate', 'Complete these tasks to reinforce "Jahreszeiten und Monate" (Wetter und Jahreszeiten).', 'speaking', '[{"description":"Review all vocabulary from \"Jahreszeiten und Monate\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'In this lesson on "Jahreszeiten und Monate" (Wetter und Jahreszeiten), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Jahreszeiten und Monate\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Jahreszeiten und Monate\""}]', ARRAY['"Jahreszeiten und Monate" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Jahreszeiten und Monate — Speaking 1', 'Practice the key vocabulary and phrases from "Jahreszeiten und Monate" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Jahreszeiten und Monate — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Jahreszeiten und Monate — Writing Task 1', 'Write a short text (50-100 words) about jahreszeiten und monate. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Jahreszeiten und Monate — Conversation 1', 'Practice a realistic conversation about jahreszeiten und monate in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Jahreszeiten und Monate" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Jahreszeiten und Monate — Conversation 2', 'Practice a realistic conversation about jahreszeiten und monate in the context of Wetter und Jahreszeiten.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Jahreszeiten und Monate" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Jahreszeiten und Monate — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Jahreszeiten und Monate". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Jahreszeiten und Monate', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Jahreszeiten und Monate — Deep Understanding', 'Explain the most important concepts from "Jahreszeiten und Monate" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Jahreszeiten und Monate', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Jahreszeiten und Monate — Reading Practice', 'This is a A2-level reading passage about jahreszeiten und monate in the context of Wetter und Jahreszeiten.

Jahreszeiten und Monate is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9b909d6e-651a-4c0f-84dd-483492c98e8d', 'Jahreszeiten und Monate — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Jahreszeiten und Monate" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Homework: Krankheiten und Symptome', 'Complete these tasks to reinforce "Krankheiten und Symptome" (Körper und Gesundheit).', 'reading', '[{"description":"Review all vocabulary from \"Krankheiten und Symptome\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'In this lesson on "Krankheiten und Symptome" (Körper und Gesundheit), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Krankheiten und Symptome\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Krankheiten und Symptome\""}]', ARRAY['"Krankheiten und Symptome" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Krankheiten und Symptome — Speaking 1', 'Practice the key vocabulary and phrases from "Krankheiten und Symptome" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Krankheiten und Symptome — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Krankheiten und Symptome — Writing Task 1', 'Write a short text (50-100 words) about krankheiten und symptome. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Krankheiten und Symptome — Conversation 1', 'Practice a realistic conversation about krankheiten und symptome in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Krankheiten und Symptome" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Krankheiten und Symptome — Conversation 2', 'Practice a realistic conversation about krankheiten und symptome in the context of Körper und Gesundheit.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Krankheiten und Symptome" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Krankheiten und Symptome — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Krankheiten und Symptome". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Krankheiten und Symptome', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Krankheiten und Symptome — Deep Understanding', 'Explain the most important concepts from "Krankheiten und Symptome" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Krankheiten und Symptome', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Krankheiten und Symptome — Reading Practice', 'This is a A2-level reading passage about krankheiten und symptome in the context of Körper und Gesundheit.

Krankheiten und Symptome is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('13e75e42-ded1-4ad9-b16e-fddb4e3e28eb', 'Krankheiten und Symptome — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Krankheiten und Symptome" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Homework: Einladungen und Feiern', 'Complete these tasks to reinforce "Einladungen und Feiern" (Feste und Feiertage).', 'grammar', '[{"description":"Review all vocabulary from \"Einladungen und Feiern\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'In this lesson on "Einladungen und Feiern" (Feste und Feiertage), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einladungen und Feiern\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einladungen und Feiern\""}]', ARRAY['"Einladungen und Feiern" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Einladungen und Feiern — Speaking 1', 'Practice the key vocabulary and phrases from "Einladungen und Feiern" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Einladungen und Feiern — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Einladungen und Feiern — Writing Task 1', 'Write a short text (50-100 words) about einladungen und feiern. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Einladungen und Feiern — Conversation 1', 'Practice a realistic conversation about einladungen und feiern in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einladungen und Feiern" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Einladungen und Feiern — Conversation 2', 'Practice a realistic conversation about einladungen und feiern in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einladungen und Feiern" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Einladungen und Feiern — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einladungen und Feiern". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Einladungen und Feiern', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Einladungen und Feiern — Deep Understanding', 'Explain the most important concepts from "Einladungen und Feiern" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Einladungen und Feiern', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Einladungen und Feiern — Reading Practice', 'This is a A2-level reading passage about einladungen und feiern in the context of Feste und Feiertage.

Einladungen und Feiern is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d75b3e72-f7c5-4bd1-b0c8-46a54b1de54e', 'Einladungen und Feiern — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einladungen und Feiern" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Homework: Verkehrsmittel und Wege', 'Complete these tasks to reinforce "Verkehrsmittel und Wege" (Stadt und Verkehr).', 'mixed', '[{"description":"Review all vocabulary from \"Verkehrsmittel und Wege\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'In this lesson on "Verkehrsmittel und Wege" (Stadt und Verkehr), you learned key vocabulary concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Verkehrsmittel und Wege\"","Understood and practiced the grammar structures taught","Developed vocabulary skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Verkehrsmittel und Wege\""}]', ARRAY['"Verkehrsmittel und Wege" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Verkehrsmittel und Wege — Speaking 1', 'Practice the key vocabulary and phrases from "Verkehrsmittel und Wege" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Verkehrsmittel und Wege — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Verkehrsmittel und Wege — Writing Task 1', 'Write a short text (50-100 words) about verkehrsmittel und wege. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Verkehrsmittel und Wege — Conversation 1', 'Practice a realistic conversation about verkehrsmittel und wege in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verkehrsmittel und Wege" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Verkehrsmittel und Wege — Conversation 2', 'Practice a realistic conversation about verkehrsmittel und wege in the context of Stadt und Verkehr.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Verkehrsmittel und Wege" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Verkehrsmittel und Wege — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Verkehrsmittel und Wege". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Verkehrsmittel und Wege', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Verkehrsmittel und Wege — Deep Understanding', 'Explain the most important concepts from "Verkehrsmittel und Wege" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Verkehrsmittel und Wege', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Verkehrsmittel und Wege — Reading Practice', 'This is a A2-level reading passage about verkehrsmittel und wege in the context of Stadt und Verkehr.

Verkehrsmittel und Wege is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('f2eaa7ff-8dad-401a-a1bc-9dd2dd6b127e', 'Verkehrsmittel und Wege — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Verkehrsmittel und Wege" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Homework: Nebensätze mit weil, dass, wenn', 'Complete these tasks to reinforce "Nebensätze mit weil, dass, wenn" (Wetter und Jahreszeiten).', 'vocabulary', '[{"description":"Review all vocabulary from \"Nebensätze mit weil, dass, wenn\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'In this lesson on "Nebensätze mit weil, dass, wenn" (Wetter und Jahreszeiten), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nebensätze mit weil, dass, wenn\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nebensätze mit weil, dass, wenn\""}]', ARRAY['"Nebensätze mit weil, dass, wenn" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Nebensätze mit weil, dass, wenn — Speaking 1', 'Practice the key vocabulary and phrases from "Nebensätze mit weil, dass, wenn" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Nebensätze mit weil, dass, wenn — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Nebensätze mit weil, dass, wenn — Writing Task 1', 'Write a short text (50-100 words) about nebensätze mit weil, dass, wenn. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Nebensätze mit weil, dass, wenn — Conversation 1', 'Practice a realistic conversation about nebensätze mit weil, dass, wenn in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nebensätze mit weil, dass, wenn" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Nebensätze mit weil, dass, wenn — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nebensätze mit weil, dass, wenn". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Nebensätze mit weil, dass, wenn', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Nebensätze mit weil, dass, wenn — Deep Understanding', 'Explain the most important concepts from "Nebensätze mit weil, dass, wenn" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nebensätze mit weil, dass, wenn', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Nebensätze mit weil, dass, wenn — Reading Practice', 'This is a A2-level reading passage about nebensätze mit weil, dass, wenn in the context of Wetter und Jahreszeiten.

Nebensätze mit weil, dass, wenn is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ebe631de-a718-4517-92ac-67de56c2a020', 'Nebensätze mit weil, dass, wenn — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nebensätze mit weil, dass, wenn" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 2),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Körper und Gesundheit', 'informal', false, NULL, 5),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 6),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 7),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Homework: Modalverben und Imperativ', 'Complete these tasks to reinforce "Modalverben und Imperativ" (Körper und Gesundheit).', 'writing', '[{"description":"Review all vocabulary from \"Modalverben und Imperativ\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'In this lesson on "Modalverben und Imperativ" (Körper und Gesundheit), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modalverben und Imperativ\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modalverben und Imperativ\""}]', ARRAY['"Modalverben und Imperativ" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Modalverben und Imperativ — Speaking 1', 'Practice the key vocabulary and phrases from "Modalverben und Imperativ" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Modalverben und Imperativ — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Modalverben und Imperativ — Writing Task 1', 'Write a short text (50-100 words) about modalverben und imperativ. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Modalverben und Imperativ — Conversation 1', 'Practice a realistic conversation about modalverben und imperativ in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modalverben und Imperativ" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Modalverben und Imperativ — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modalverben und Imperativ". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Modalverben und Imperativ', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Modalverben und Imperativ — Deep Understanding', 'Explain the most important concepts from "Modalverben und Imperativ" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Modalverben und Imperativ', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Modalverben und Imperativ — Reading Practice', 'This is a A2-level reading passage about modalverben und imperativ in the context of Körper und Gesundheit.

Modalverben und Imperativ is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d68ea3e6-9406-4adb-a2a2-90ffb5f0fc6a', 'Modalverben und Imperativ — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modalverben und Imperativ" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 2),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Körper und Gesundheit', 'informal', false, NULL, 5),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 6),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 7),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Homework: Modalverben und Imperativ', 'Complete these tasks to reinforce "Modalverben und Imperativ" (Körper und Gesundheit).', 'speaking', '[{"description":"Review all vocabulary from \"Modalverben und Imperativ\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'In this lesson on "Modalverben und Imperativ" (Körper und Gesundheit), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Modalverben und Imperativ\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Modalverben und Imperativ\""}]', ARRAY['"Modalverben und Imperativ" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Modalverben und Imperativ — Speaking 1', 'Practice the key vocabulary and phrases from "Modalverben und Imperativ" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Modalverben und Imperativ — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Modalverben und Imperativ — Writing Task 1', 'Write a short text (50-100 words) about modalverben und imperativ. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Modalverben und Imperativ — Conversation 1', 'Practice a realistic conversation about modalverben und imperativ in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Modalverben und Imperativ" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Modalverben und Imperativ — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Modalverben und Imperativ". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Modalverben und Imperativ', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Modalverben und Imperativ — Deep Understanding', 'Explain the most important concepts from "Modalverben und Imperativ" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Modalverben und Imperativ', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Modalverben und Imperativ — Reading Practice', 'This is a A2-level reading passage about modalverben und imperativ in the context of Körper und Gesundheit.

Modalverben und Imperativ is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d066868e-551a-41e7-9b5d-b54a84cdae20', 'Modalverben und Imperativ — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Modalverben und Imperativ" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 2),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Stadt und Verkehr', 'informal', false, NULL, 5),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 6),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 7),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Homework: Wechselpräpositionen vertiefen', 'Complete these tasks to reinforce "Wechselpräpositionen vertiefen" (Stadt und Verkehr).', 'reading', '[{"description":"Review all vocabulary from \"Wechselpräpositionen vertiefen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'In this lesson on "Wechselpräpositionen vertiefen" (Stadt und Verkehr), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wechselpräpositionen vertiefen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wechselpräpositionen vertiefen\""}]', ARRAY['"Wechselpräpositionen vertiefen" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Wechselpräpositionen vertiefen — Speaking 1', 'Practice the key vocabulary and phrases from "Wechselpräpositionen vertiefen" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Wechselpräpositionen vertiefen — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Wechselpräpositionen vertiefen — Writing Task 1', 'Write a short text (50-100 words) about wechselpräpositionen vertiefen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Wechselpräpositionen vertiefen — Conversation 1', 'Practice a realistic conversation about wechselpräpositionen vertiefen in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wechselpräpositionen vertiefen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Wechselpräpositionen vertiefen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wechselpräpositionen vertiefen". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wechselpräpositionen vertiefen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Wechselpräpositionen vertiefen — Deep Understanding', 'Explain the most important concepts from "Wechselpräpositionen vertiefen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wechselpräpositionen vertiefen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Wechselpräpositionen vertiefen — Reading Practice', 'This is a A2-level reading passage about wechselpräpositionen vertiefen in the context of Stadt und Verkehr.

Wechselpräpositionen vertiefen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('6b63108f-e517-4259-9569-197ee594e0ee', 'Wechselpräpositionen vertiefen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wechselpräpositionen vertiefen" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Homework: Präteritum – Vertiefung', 'Complete these tasks to reinforce "Präteritum – Vertiefung" (Feste und Feiertage).', 'grammar', '[{"description":"Review all vocabulary from \"Präteritum – Vertiefung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'In this lesson on "Präteritum – Vertiefung" (Feste und Feiertage), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Präteritum – Vertiefung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Präteritum – Vertiefung\""}]', ARRAY['"Präteritum – Vertiefung" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Präteritum – Vertiefung — Speaking 1', 'Practice the key vocabulary and phrases from "Präteritum – Vertiefung" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Präteritum – Vertiefung — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Präteritum – Vertiefung — Writing Task 1', 'Write a short text (50-100 words) about präteritum – vertiefung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Präteritum – Vertiefung — Conversation 1', 'Practice a realistic conversation about präteritum – vertiefung in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präteritum – Vertiefung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Präteritum – Vertiefung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präteritum – Vertiefung". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Präteritum – Vertiefung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Präteritum – Vertiefung — Deep Understanding', 'Explain the most important concepts from "Präteritum – Vertiefung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Präteritum – Vertiefung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Präteritum – Vertiefung — Reading Practice', 'This is a A2-level reading passage about präteritum – vertiefung in the context of Feste und Feiertage.

Präteritum – Vertiefung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b51cfb7c-abc3-4810-bc94-ab14197e641f', 'Präteritum – Vertiefung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Präteritum – Vertiefung" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 2),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Stadt und Verkehr', 'informal', false, NULL, 5),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 6),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 7),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Homework: Wechselpräpositionen vertiefen', 'Complete these tasks to reinforce "Wechselpräpositionen vertiefen" (Stadt und Verkehr).', 'mixed', '[{"description":"Review all vocabulary from \"Wechselpräpositionen vertiefen\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'In this lesson on "Wechselpräpositionen vertiefen" (Stadt und Verkehr), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wechselpräpositionen vertiefen\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wechselpräpositionen vertiefen\""}]', ARRAY['"Wechselpräpositionen vertiefen" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Wechselpräpositionen vertiefen — Speaking 1', 'Practice the key vocabulary and phrases from "Wechselpräpositionen vertiefen" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Wechselpräpositionen vertiefen — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Wechselpräpositionen vertiefen — Writing Task 1', 'Write a short text (50-100 words) about wechselpräpositionen vertiefen. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Wechselpräpositionen vertiefen — Conversation 1', 'Practice a realistic conversation about wechselpräpositionen vertiefen in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wechselpräpositionen vertiefen" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Wechselpräpositionen vertiefen — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wechselpräpositionen vertiefen". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wechselpräpositionen vertiefen', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Wechselpräpositionen vertiefen — Deep Understanding', 'Explain the most important concepts from "Wechselpräpositionen vertiefen" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Wechselpräpositionen vertiefen', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Wechselpräpositionen vertiefen — Reading Practice', 'This is a A2-level reading passage about wechselpräpositionen vertiefen in the context of Stadt und Verkehr.

Wechselpräpositionen vertiefen is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8aeba035-4505-47dd-8761-0884a343dc19', 'Wechselpräpositionen vertiefen — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wechselpräpositionen vertiefen" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Homework: Perfekt mit haben und sein', 'Complete these tasks to reinforce "Perfekt mit haben und sein" (Essen und Trinken).', 'vocabulary', '[{"description":"Review all vocabulary from \"Perfekt mit haben und sein\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'In this lesson on "Perfekt mit haben und sein" (Essen und Trinken), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Perfekt mit haben und sein\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Perfekt mit haben und sein\""}]', ARRAY['"Perfekt mit haben und sein" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Perfekt mit haben und sein — Speaking 1', 'Practice the key vocabulary and phrases from "Perfekt mit haben und sein" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Perfekt mit haben und sein — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Perfekt mit haben und sein — Writing Task 1', 'Write a short text (50-100 words) about perfekt mit haben und sein. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Perfekt mit haben und sein — Conversation 1', 'Practice a realistic conversation about perfekt mit haben und sein in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Perfekt mit haben und sein" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Perfekt mit haben und sein — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Perfekt mit haben und sein". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Perfekt mit haben und sein', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Perfekt mit haben und sein — Deep Understanding', 'Explain the most important concepts from "Perfekt mit haben und sein" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Perfekt mit haben und sein', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Perfekt mit haben und sein — Reading Practice', 'This is a A2-level reading passage about perfekt mit haben und sein in the context of Essen und Trinken.

Perfekt mit haben und sein is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d3933565-d9e4-4ce7-8a78-c2aee93b3a8e', 'Perfekt mit haben und sein — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Perfekt mit haben und sein" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 2),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Kleidung und Mode', 'informal', false, NULL, 5),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 6),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 7),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Homework: Akkusativ, Dativ und dieser/jeder/alle', 'Complete these tasks to reinforce "Akkusativ, Dativ und dieser/jeder/alle" (Kleidung und Mode).', 'writing', '[{"description":"Review all vocabulary from \"Akkusativ, Dativ und dieser/jeder/alle\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'In this lesson on "Akkusativ, Dativ und dieser/jeder/alle" (Kleidung und Mode), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Akkusativ, Dativ und dieser/jeder/alle\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Akkusativ, Dativ und dieser/jeder/alle\""}]', ARRAY['"Akkusativ, Dativ und dieser/jeder/alle" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Akkusativ, Dativ und dieser/jeder/alle — Speaking 1', 'Practice the key vocabulary and phrases from "Akkusativ, Dativ und dieser/jeder/alle" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Akkusativ, Dativ und dieser/jeder/alle — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Akkusativ, Dativ und dieser/jeder/alle — Writing Task 1', 'Write a short text (50-100 words) about akkusativ, dativ und dieser/jeder/alle. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Akkusativ, Dativ und dieser/jeder/alle — Conversation 1', 'Practice a realistic conversation about akkusativ, dativ und dieser/jeder/alle in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akkusativ, Dativ und dieser/jeder/alle" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Akkusativ, Dativ und dieser/jeder/alle — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Akkusativ, Dativ und dieser/jeder/alle". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Akkusativ, Dativ und dieser/jeder/alle', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Akkusativ, Dativ und dieser/jeder/alle — Deep Understanding', 'Explain the most important concepts from "Akkusativ, Dativ und dieser/jeder/alle" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Akkusativ, Dativ und dieser/jeder/alle', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Akkusativ, Dativ und dieser/jeder/alle — Reading Practice', 'This is a A2-level reading passage about akkusativ, dativ und dieser/jeder/alle in the context of Kleidung und Mode.

Akkusativ, Dativ und dieser/jeder/alle is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8897593a-66b4-4533-837a-a688aa19d337', 'Akkusativ, Dativ und dieser/jeder/alle — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Akkusativ, Dativ und dieser/jeder/alle" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Homework: Nebensätze mit weil, dass, wenn', 'Complete these tasks to reinforce "Nebensätze mit weil, dass, wenn" (Wetter und Jahreszeiten).', 'speaking', '[{"description":"Review all vocabulary from \"Nebensätze mit weil, dass, wenn\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'In this lesson on "Nebensätze mit weil, dass, wenn" (Wetter und Jahreszeiten), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Nebensätze mit weil, dass, wenn\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Nebensätze mit weil, dass, wenn\""}]', ARRAY['"Nebensätze mit weil, dass, wenn" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Nebensätze mit weil, dass, wenn — Speaking 1', 'Practice the key vocabulary and phrases from "Nebensätze mit weil, dass, wenn" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Nebensätze mit weil, dass, wenn — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Nebensätze mit weil, dass, wenn — Writing Task 1', 'Write a short text (50-100 words) about nebensätze mit weil, dass, wenn. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Nebensätze mit weil, dass, wenn — Conversation 1', 'Practice a realistic conversation about nebensätze mit weil, dass, wenn in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Nebensätze mit weil, dass, wenn" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Nebensätze mit weil, dass, wenn — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Nebensätze mit weil, dass, wenn". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Nebensätze mit weil, dass, wenn', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Nebensätze mit weil, dass, wenn — Deep Understanding', 'Explain the most important concepts from "Nebensätze mit weil, dass, wenn" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Nebensätze mit weil, dass, wenn', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Nebensätze mit weil, dass, wenn — Reading Practice', 'This is a A2-level reading passage about nebensätze mit weil, dass, wenn in the context of Wetter und Jahreszeiten.

Nebensätze mit weil, dass, wenn is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fa23341e-e27e-41de-9d95-596cf61202d3', 'Nebensätze mit weil, dass, wenn — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Nebensätze mit weil, dass, wenn" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Der Mann geht nach Hause.', 'The man goes home.', 'الرجل يذهب إلى المنزل.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Die Frau kommt aus Berlin.', 'The woman comes from Berlin.', 'المرأة تأتي من برلين.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 2),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Das Kind spielt im Garten.', 'The child plays in the garden.', 'الطفل يلعب في الحديقة.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Ich habe einen Hund.', 'I have a dog.', 'لدي كلب.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Kannst du mir helfen?', 'Can you help me?', 'هل يمكنك مساعدتي؟', 'Used in Kleidung und Mode', 'informal', false, NULL, 5),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Wir müssen jetzt gehen.', 'We must go now.', 'يجب أن نذهب الآن.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 6),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Er ist gestern gekommen.', 'He came yesterday.', 'لقد أمس أتى.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 7),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Sie hat ein Buch gelesen.', 'She read a book.', 'هي قرأت كتاباً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'der', 'the (masculine)', 'Article for male nouns', 'grammar', 1),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'die', 'the (feminine/plural)', 'Article for female/plural', 'grammar', 2),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'das', 'the (neuter)', 'Article for neutral nouns', 'grammar', 3),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'ein', 'a (masculine/neuter)', 'Indefinite article', 'grammar', 4),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'eine', 'a (feminine)', 'Indefinite article', 'grammar', 5),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'ich', 'I', 'First person singular', 'grammar', 6),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'du', 'you (informal)', 'Second person singular', 'grammar', 7),
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Sie', 'you (formal)', 'Capital S', 'grammar', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Homework: Akkusativ, Dativ und dieser/jeder/alle', 'Complete these tasks to reinforce "Akkusativ, Dativ und dieser/jeder/alle" (Kleidung und Mode).', 'reading', '[{"description":"Review all vocabulary from \"Akkusativ, Dativ und dieser/jeder/alle\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'In this lesson on "Akkusativ, Dativ und dieser/jeder/alle" (Kleidung und Mode), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Akkusativ, Dativ und dieser/jeder/alle\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Akkusativ, Dativ und dieser/jeder/alle\""}]', ARRAY['"Akkusativ, Dativ und dieser/jeder/alle" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Akkusativ, Dativ und dieser/jeder/alle — Speaking 1', 'Practice the key vocabulary and phrases from "Akkusativ, Dativ und dieser/jeder/alle" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Akkusativ, Dativ und dieser/jeder/alle — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Akkusativ, Dativ und dieser/jeder/alle — Writing Task 1', 'Write a short text (50-100 words) about akkusativ, dativ und dieser/jeder/alle. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Akkusativ, Dativ und dieser/jeder/alle — Conversation 1', 'Practice a realistic conversation about akkusativ, dativ und dieser/jeder/alle in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Akkusativ, Dativ und dieser/jeder/alle" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Akkusativ, Dativ und dieser/jeder/alle — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Akkusativ, Dativ und dieser/jeder/alle". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Akkusativ, Dativ und dieser/jeder/alle', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Akkusativ, Dativ und dieser/jeder/alle — Deep Understanding', 'Explain the most important concepts from "Akkusativ, Dativ und dieser/jeder/alle" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Akkusativ, Dativ und dieser/jeder/alle', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Akkusativ, Dativ und dieser/jeder/alle — Reading Practice', 'This is a A2-level reading passage about akkusativ, dativ und dieser/jeder/alle in the context of Kleidung und Mode.

Akkusativ, Dativ und dieser/jeder/alle is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('0e33c0be-66aa-450a-8641-346ba8560764', 'Akkusativ, Dativ und dieser/jeder/alle — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Akkusativ, Dativ und dieser/jeder/alle" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Homework: Perfekt mit haben und sein', 'Complete these tasks to reinforce "Perfekt mit haben und sein" (Essen und Trinken).', 'grammar', '[{"description":"Review all vocabulary from \"Perfekt mit haben und sein\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'In this lesson on "Perfekt mit haben und sein" (Essen und Trinken), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Perfekt mit haben und sein\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Perfekt mit haben und sein\""}]', ARRAY['"Perfekt mit haben und sein" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Perfekt mit haben und sein — Speaking 1', 'Practice the key vocabulary and phrases from "Perfekt mit haben und sein" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Perfekt mit haben und sein — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Perfekt mit haben und sein — Writing Task 1', 'Write a short text (50-100 words) about perfekt mit haben und sein. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Perfekt mit haben und sein — Conversation 1', 'Practice a realistic conversation about perfekt mit haben und sein in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Perfekt mit haben und sein" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Perfekt mit haben und sein — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Perfekt mit haben und sein". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Perfekt mit haben und sein', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Perfekt mit haben und sein — Deep Understanding', 'Explain the most important concepts from "Perfekt mit haben und sein" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Perfekt mit haben und sein', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Perfekt mit haben und sein — Reading Practice', 'This is a A2-level reading passage about perfekt mit haben und sein in the context of Essen und Trinken.

Perfekt mit haben und sein is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 106, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('fd8074bf-6be0-4fdc-ba24-c590ba5e8c50', 'Perfekt mit haben und sein — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Perfekt mit haben und sein" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Homework: Präteritum – Vertiefung', 'Complete these tasks to reinforce "Präteritum – Vertiefung" (Feste und Feiertage).', 'mixed', '[{"description":"Review all vocabulary from \"Präteritum – Vertiefung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."},{"description":"Explain the grammar rule in your own words and give 3 original examples."},{"description":"Find 3 more examples of this grammar rule in German texts or online."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'In this lesson on "Präteritum – Vertiefung" (Feste und Feiertage), you learned key grammar concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Präteritum – Vertiefung\"","Understood and practiced the grammar structures taught","Developed grammar skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Präteritum – Vertiefung\""}]', ARRAY['"Präteritum – Vertiefung" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Präteritum – Vertiefung — Speaking 1', 'Practice the key vocabulary and phrases from "Präteritum – Vertiefung" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Präteritum – Vertiefung — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Präteritum – Vertiefung — Writing Task 1', 'Write a short text (50-100 words) about präteritum – vertiefung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Präteritum – Vertiefung — Conversation 1', 'Practice a realistic conversation about präteritum – vertiefung in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Präteritum – Vertiefung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Präteritum – Vertiefung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präteritum – Vertiefung". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Präteritum – Vertiefung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Präteritum – Vertiefung — Deep Understanding', 'Explain the most important concepts from "Präteritum – Vertiefung" in your own words. Give 3 original examples for each main concept. What did you find most challenging and why?', 'Creative practice for Präteritum – Vertiefung', ARRAY['All key concepts covered thoroughly', 'Original examples provided', 'Self-reflection on learning process', 'Questions for the teacher identified']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'medium', 2);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Präteritum – Vertiefung — Reading Practice', 'This is a A2-level reading passage about präteritum – vertiefung in the context of Feste und Feiertage.

Präteritum – Vertiefung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('e9423b30-23b8-4e92-b57b-1942fd7d998e', 'Präteritum – Vertiefung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Präteritum – Vertiefung" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Was kostet das?', 'How much does this cost?', 'كم سعر هذا؟', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Haben Sie das in einer anderen Größe?', 'Do you have this in another size?', 'هل لديك هذا بمقاس آخر؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Ich möchte nur gucken.', 'I''m just looking.', 'فقط أتفرج.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Das ist zu teuer.', 'That''s too expensive.', 'هذا غالي جداً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Gibt es einen Rabatt?', 'Is there a discount?', 'هل هناك خصم؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Ich nehme es!', 'I''ll take it!', 'سآخذه!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 6),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Kann ich mit Karte zahlen?', 'Can I pay by card?', 'هل يمكنني الدفع بالبطاقة؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'der Preis', 'price', 'How much', 'vocabulary', 1),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'das Geld', 'money', 'For paying', 'vocabulary', 2),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'der Euro', 'Euro', 'Currency', 'vocabulary', 3),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'der Cent', 'Cent', 'Small currency', 'vocabulary', 4),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'das Geschäft', 'shop / store', 'Where you buy', 'vocabulary', 5),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'der Markt', 'market', 'Open market', 'vocabulary', 6),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'die Kasse', 'cash register', 'Pay here', 'vocabulary', 7),
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'die Quittung', 'receipt', 'Proof of purchase', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Homework: Einkaufsgespräch', 'Complete these tasks to reinforce "Einkaufsgespräch" (Kleidung und Mode).', 'vocabulary', '[{"description":"Review all vocabulary from \"Einkaufsgespräch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'In this lesson on "Einkaufsgespräch" (Kleidung und Mode), you learned key speaking concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einkaufsgespräch\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einkaufsgespräch\""}]', ARRAY['"Einkaufsgespräch" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Einkaufsgespräch — Speaking 1', 'Practice the key vocabulary and phrases from "Einkaufsgespräch" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Einkaufsgespräch — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Einkaufsgespräch — Writing Task 1', 'Write a short text (50-100 words) about einkaufsgespräch. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Einkaufsgespräch — Conversation 1', 'Practice a realistic conversation about einkaufsgespräch in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einkaufsgespräch" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Einkaufsgespräch — Conversation 2', 'Practice a realistic conversation about einkaufsgespräch in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einkaufsgespräch" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Einkaufsgespräch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einkaufsgespräch". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Einkaufsgespräch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Einkaufsgespräch — Reading Practice', 'This is a A2-level reading passage about einkaufsgespräch in the context of Kleidung und Mode.

Einkaufsgespräch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('443ccbc0-80d1-440e-93bb-313b875eeae7', 'Einkaufsgespräch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einkaufsgespräch" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Homework: Im Restaurant', 'Complete these tasks to reinforce "Im Restaurant" (Essen und Trinken).', 'writing', '[{"description":"Review all vocabulary from \"Im Restaurant\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'In this lesson on "Im Restaurant" (Essen und Trinken), you learned key reading concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Restaurant\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Restaurant\""}]', ARRAY['"Im Restaurant" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Im Restaurant — Speaking 1', 'Practice the key vocabulary and phrases from "Im Restaurant" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Im Restaurant — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Im Restaurant — Writing Task 1', 'Write a short text (50-100 words) about im restaurant. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Im Restaurant — Conversation 1', 'Practice a realistic conversation about im restaurant in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Im Restaurant — Conversation 2', 'Practice a realistic conversation about im restaurant in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Im Restaurant — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Im Restaurant', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Im Restaurant — Reading Practice', 'This is a A2-level reading passage about im restaurant in the context of Essen und Trinken.

Im Restaurant is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('7bdccc02-e75b-4f57-9d40-f56f5aa908ec', 'Im Restaurant — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Restaurant" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Was kostet das?', 'How much does this cost?', 'كم سعر هذا؟', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Haben Sie das in einer anderen Größe?', 'Do you have this in another size?', 'هل لديك هذا بمقاس آخر؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Ich möchte nur gucken.', 'I''m just looking.', 'فقط أتفرج.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Das ist zu teuer.', 'That''s too expensive.', 'هذا غالي جداً.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Gibt es einen Rabatt?', 'Is there a discount?', 'هل هناك خصم؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 5),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Ich nehme es!', 'I''ll take it!', 'سآخذه!', 'Used in Kleidung und Mode', 'neutral', false, NULL, 6),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Kann ich mit Karte zahlen?', 'Can I pay by card?', 'هل يمكنني الدفع بالبطاقة؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 7);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'der Preis', 'price', 'How much', 'vocabulary', 1),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'das Geld', 'money', 'For paying', 'vocabulary', 2),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'der Euro', 'Euro', 'Currency', 'vocabulary', 3),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'der Cent', 'Cent', 'Small currency', 'vocabulary', 4),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'das Geschäft', 'shop / store', 'Where you buy', 'vocabulary', 5),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'der Markt', 'market', 'Open market', 'vocabulary', 6),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'die Kasse', 'cash register', 'Pay here', 'vocabulary', 7),
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'die Quittung', 'receipt', 'Proof of purchase', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Homework: Einkaufsgespräch', 'Complete these tasks to reinforce "Einkaufsgespräch" (Kleidung und Mode).', 'speaking', '[{"description":"Review all vocabulary from \"Einkaufsgespräch\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'In this lesson on "Einkaufsgespräch" (Kleidung und Mode), you learned key speaking concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Einkaufsgespräch\"","Understood and practiced the grammar structures taught","Developed speaking skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Einkaufsgespräch\""}]', ARRAY['"Einkaufsgespräch" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Einkaufsgespräch — Speaking 1', 'Practice the key vocabulary and phrases from "Einkaufsgespräch" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Einkaufsgespräch — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Einkaufsgespräch — Writing Task 1', 'Write a short text (50-100 words) about einkaufsgespräch. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Einkaufsgespräch — Conversation 1', 'Practice a realistic conversation about einkaufsgespräch in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einkaufsgespräch" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Einkaufsgespräch — Conversation 2', 'Practice a realistic conversation about einkaufsgespräch in the context of Kleidung und Mode.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Einkaufsgespräch" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Einkaufsgespräch — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einkaufsgespräch". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Einkaufsgespräch', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Einkaufsgespräch — Reading Practice', 'This is a A2-level reading passage about einkaufsgespräch in the context of Kleidung und Mode.

Einkaufsgespräch is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('82604779-fe5f-4f33-b6bb-59ce669e608d', 'Einkaufsgespräch — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Einkaufsgespräch" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Homework: Beim Arzt', 'Complete these tasks to reinforce "Beim Arzt" (Körper und Gesundheit).', 'reading', '[{"description":"Review all vocabulary from \"Beim Arzt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'In this lesson on "Beim Arzt" (Körper und Gesundheit), you learned key listening concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Beim Arzt\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Beim Arzt\""}]', ARRAY['"Beim Arzt" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Beim Arzt — Speaking 1', 'Practice the key vocabulary and phrases from "Beim Arzt" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Beim Arzt — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Beim Arzt — Writing Task 1', 'Write a short text (50-100 words) about beim arzt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Beim Arzt — Conversation 1', 'Practice a realistic conversation about beim arzt in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beim Arzt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Beim Arzt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beim Arzt". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Beim Arzt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Beim Arzt — Reading Practice', 'This is a A2-level reading passage about beim arzt in the context of Körper und Gesundheit.

Beim Arzt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b6af8136-a095-4292-9bb8-20cf984aa6a0', 'Beim Arzt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Beim Arzt" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Homework: Wegbeschreibung', 'Complete these tasks to reinforce "Wegbeschreibung" (Stadt und Verkehr).', 'grammar', '[{"description":"Review all vocabulary from \"Wegbeschreibung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'In this lesson on "Wegbeschreibung" (Stadt und Verkehr), you learned key writing concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wegbeschreibung\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wegbeschreibung\""}]', ARRAY['"Wegbeschreibung" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Wegbeschreibung — Speaking 1', 'Practice the key vocabulary and phrases from "Wegbeschreibung" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Wegbeschreibung — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Wegbeschreibung — Writing Task 1', 'Write a short text (50-100 words) about wegbeschreibung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Wegbeschreibung — Writing Task 2', 'Write 5 questions about wegbeschreibung and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Wegbeschreibung — Conversation 1', 'Practice a realistic conversation about wegbeschreibung in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wegbeschreibung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Wegbeschreibung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wegbeschreibung". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wegbeschreibung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Wegbeschreibung — Reading Practice', 'This is a A2-level reading passage about wegbeschreibung in the context of Stadt und Verkehr.

Wegbeschreibung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('6f53ccda-a4c6-49ec-80b2-71faa9587df9', 'Wegbeschreibung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wegbeschreibung" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Homework: Wetterbericht', 'Complete these tasks to reinforce "Wetterbericht" (Wetter und Jahreszeiten).', 'mixed', '[{"description":"Review all vocabulary from \"Wetterbericht\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'In this lesson on "Wetterbericht" (Wetter und Jahreszeiten), you learned key listening concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wetterbericht\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wetterbericht\""}]', ARRAY['"Wetterbericht" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Wetterbericht — Speaking 1', 'Practice the key vocabulary and phrases from "Wetterbericht" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Wetterbericht — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Wetterbericht — Writing Task 1', 'Write a short text (50-100 words) about wetterbericht. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Wetterbericht — Conversation 1', 'Practice a realistic conversation about wetterbericht in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetterbericht" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Wetterbericht — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wetterbericht". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wetterbericht', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Wetterbericht — Reading Practice', 'This is a A2-level reading passage about wetterbericht in the context of Wetter und Jahreszeiten.

Wetterbericht is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b08def3a-2aea-411d-8772-2134c66bd561', 'Wetterbericht — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wetterbericht" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Homework: Weihnachten in Deutschland', 'Complete these tasks to reinforce "Weihnachten in Deutschland" (Feste und Feiertage).', 'vocabulary', '[{"description":"Review all vocabulary from \"Weihnachten in Deutschland\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'In this lesson on "Weihnachten in Deutschland" (Feste und Feiertage), you learned key reading concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Weihnachten in Deutschland\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Weihnachten in Deutschland\""}]', ARRAY['"Weihnachten in Deutschland" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Weihnachten in Deutschland — Speaking 1', 'Practice the key vocabulary and phrases from "Weihnachten in Deutschland" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Weihnachten in Deutschland — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Weihnachten in Deutschland — Writing Task 1', 'Write a short text (50-100 words) about weihnachten in deutschland. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Weihnachten in Deutschland — Conversation 1', 'Practice a realistic conversation about weihnachten in deutschland in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Weihnachten in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Weihnachten in Deutschland — Conversation 2', 'Practice a realistic conversation about weihnachten in deutschland in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Weihnachten in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Weihnachten in Deutschland — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Weihnachten in Deutschland". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Weihnachten in Deutschland', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Weihnachten in Deutschland — Reading Practice', 'This is a A2-level reading passage about weihnachten in deutschland in the context of Feste und Feiertage.

Weihnachten in Deutschland is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('11060291-396c-4d2d-af27-43a1e6b55d0d', 'Weihnachten in Deutschland — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Weihnachten in Deutschland" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Homework: Im Restaurant', 'Complete these tasks to reinforce "Im Restaurant" (Essen und Trinken).', 'writing', '[{"description":"Review all vocabulary from \"Im Restaurant\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'In this lesson on "Im Restaurant" (Essen und Trinken), you learned key reading concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Im Restaurant\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Im Restaurant\""}]', ARRAY['"Im Restaurant" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Im Restaurant — Speaking 1', 'Practice the key vocabulary and phrases from "Im Restaurant" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Im Restaurant — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Im Restaurant — Writing Task 1', 'Write a short text (50-100 words) about im restaurant. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Im Restaurant — Conversation 1', 'Practice a realistic conversation about im restaurant in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Im Restaurant — Conversation 2', 'Practice a realistic conversation about im restaurant in the context of Essen und Trinken.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Im Restaurant" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Im Restaurant — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Im Restaurant', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Im Restaurant — Reading Practice', 'This is a A2-level reading passage about im restaurant in the context of Essen und Trinken.

Im Restaurant is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('d26627f1-3346-47db-99e1-09899d1cc7eb', 'Im Restaurant — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Im Restaurant" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 1),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 3),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 4),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Körper und Gesundheit', 'formal', false, NULL, 6),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Körper und Gesundheit', 'informal', false, NULL, 7),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 8),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 9),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Körper und Gesundheit', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Homework: Beim Arzt', 'Complete these tasks to reinforce "Beim Arzt" (Körper und Gesundheit).', 'speaking', '[{"description":"Review all vocabulary from \"Beim Arzt\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'In this lesson on "Beim Arzt" (Körper und Gesundheit), you learned key listening concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Beim Arzt\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Beim Arzt\""}]', ARRAY['"Beim Arzt" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Beim Arzt — Speaking 1', 'Practice the key vocabulary and phrases from "Beim Arzt" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Beim Arzt — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Beim Arzt — Writing Task 1', 'Write a short text (50-100 words) about beim arzt. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Beim Arzt — Conversation 1', 'Practice a realistic conversation about beim arzt in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Beim Arzt" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Beim Arzt — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beim Arzt". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Beim Arzt', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Beim Arzt — Reading Practice', 'This is a A2-level reading passage about beim arzt in the context of Körper und Gesundheit.

Beim Arzt is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 100, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('4c37f896-088c-41b5-b1ce-97a728d06570', 'Beim Arzt — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Beim Arzt" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 1),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Guten Tag!', 'Good day!', 'يوم سعيد!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 3),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Tschüss!', 'Bye!', 'مع السلامة!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 4),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Auf Wiedersehen!', 'Goodbye!', 'إلى اللقاء!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Wie geht es Ihnen?', 'How are you? (formal)', 'كيف حالك؟ (رسمي)', 'Used in Stadt und Verkehr', 'formal', false, NULL, 6),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Wie geht es dir?', 'How are you? (informal)', 'كيف حالك؟ (غير رسمي)', 'Used in Stadt und Verkehr', 'informal', false, NULL, 7),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Mir geht es gut, danke.', 'I''m fine, thanks.', 'أنا بخير، شكراً.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 8),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Freut mich!', 'Nice to meet you!', 'يسعدني!', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 9),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Bis später!', 'See you later!', 'أراك لاحقاً!', 'Used in Stadt und Verkehr', 'informal', false, NULL, 10);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Homework: Wegbeschreibung', 'Complete these tasks to reinforce "Wegbeschreibung" (Stadt und Verkehr).', 'reading', '[{"description":"Review all vocabulary from \"Wegbeschreibung\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'In this lesson on "Wegbeschreibung" (Stadt und Verkehr), you learned key writing concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wegbeschreibung\"","Understood and practiced the grammar structures taught","Developed writing skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wegbeschreibung\""}]', ARRAY['"Wegbeschreibung" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Wegbeschreibung — Speaking 1', 'Practice the key vocabulary and phrases from "Wegbeschreibung" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Wegbeschreibung — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Wegbeschreibung — Writing Task 1', 'Write a short text (50-100 words) about wegbeschreibung. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Wegbeschreibung — Writing Task 2', 'Write 5 questions about wegbeschreibung and answer them in complete German sentences.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 80, 200, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Wegbeschreibung — Conversation 1', 'Practice a realistic conversation about wegbeschreibung in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wegbeschreibung" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Wegbeschreibung — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wegbeschreibung". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wegbeschreibung', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Wegbeschreibung — Reading Practice', 'This is a A2-level reading passage about wegbeschreibung in the context of Stadt und Verkehr.

Wegbeschreibung is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('eada6291-02b9-4419-9ec8-3127ec2d4474', 'Wegbeschreibung — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wegbeschreibung" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Homework: Wetterbericht', 'Complete these tasks to reinforce "Wetterbericht" (Wetter und Jahreszeiten).', 'grammar', '[{"description":"Review all vocabulary from \"Wetterbericht\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'In this lesson on "Wetterbericht" (Wetter und Jahreszeiten), you learned key listening concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wetterbericht\"","Understood and practiced the grammar structures taught","Developed listening skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wetterbericht\""}]', ARRAY['"Wetterbericht" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Wetterbericht — Speaking 1', 'Practice the key vocabulary and phrases from "Wetterbericht" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Wetterbericht — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Wetterbericht — Writing Task 1', 'Write a short text (50-100 words) about wetterbericht. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Wetterbericht — Conversation 1', 'Practice a realistic conversation about wetterbericht in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wetterbericht" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Wetterbericht — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wetterbericht". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wetterbericht', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Wetterbericht — Reading Practice', 'This is a A2-level reading passage about wetterbericht in the context of Wetter und Jahreszeiten.

Wetterbericht is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 98, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('846e10a4-fd1a-4c82-aace-ed69877388eb', 'Wetterbericht — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wetterbericht" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Homework: Weihnachten in Deutschland', 'Complete these tasks to reinforce "Weihnachten in Deutschland" (Feste und Feiertage).', 'mixed', '[{"description":"Review all vocabulary from \"Weihnachten in Deutschland\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'In this lesson on "Weihnachten in Deutschland" (Feste und Feiertage), you learned key reading concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Weihnachten in Deutschland\"","Understood and practiced the grammar structures taught","Developed reading skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Weihnachten in Deutschland\""}]', ARRAY['"Weihnachten in Deutschland" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Weihnachten in Deutschland — Speaking 1', 'Practice the key vocabulary and phrases from "Weihnachten in Deutschland" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Weihnachten in Deutschland — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Weihnachten in Deutschland — Writing Task 1', 'Write a short text (50-100 words) about weihnachten in deutschland. Use at least 5 vocabulary words from this lesson. Focus on correct sentence structure.', ARRAY['Use vocabulary from this lesson', 'Check your grammar', 'Write complete sentences']::text[], ARRAY['Apply new vocabulary', 'Use correct articles']::text[], ARRAY['Sentence structure', 'Verb conjugation', 'Article-noun agreement']::text[], 50, 150, 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Weihnachten in Deutschland — Conversation 1', 'Practice a realistic conversation about weihnachten in deutschland in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Weihnachten in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Weihnachten in Deutschland — Conversation 2', 'Practice a realistic conversation about weihnachten in deutschland in the context of Feste und Feiertage.', 'Customer', 'Assistant', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Weihnachten in Deutschland" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 2);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Weihnachten in Deutschland — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Weihnachten in Deutschland". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Weihnachten in Deutschland', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Weihnachten in Deutschland — Reading Practice', 'This is a A2-level reading passage about weihnachten in deutschland in the context of Feste und Feiertage.

Weihnachten in Deutschland is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 102, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('ce438529-b9fb-41e5-b962-e6903bd29fa4', 'Weihnachten in Deutschland — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Weihnachten in Deutschland" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Homework: Wiederholung: Wetter und Jahreszeiten', 'Complete these tasks to reinforce "Wiederholung: Wetter und Jahreszeiten" (Wetter und Jahreszeiten).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Wetter und Jahreszeiten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'In this lesson on "Wiederholung: Wetter und Jahreszeiten" (Wetter und Jahreszeiten), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wetter und Jahreszeiten\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wetter und Jahreszeiten\""}]', ARRAY['"Wiederholung: Wetter und Jahreszeiten" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Wiederholung: Wetter und Jahreszeiten — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wetter und Jahreszeiten" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Wiederholung: Wetter und Jahreszeiten — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Wiederholung: Wetter und Jahreszeiten — Conversation 1', 'Practice a realistic conversation about wiederholung: wetter und jahreszeiten in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wetter und Jahreszeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Wiederholung: Wetter und Jahreszeiten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wetter und Jahreszeiten". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wiederholung: Wetter und Jahreszeiten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Wiederholung: Wetter und Jahreszeiten — Reading Practice', 'This is a A2-level reading passage about wiederholung: wetter und jahreszeiten in the context of Wetter und Jahreszeiten.

Wiederholung: Wetter und Jahreszeiten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5cc7977e-e2da-4a10-9588-6a9839bbb88b', 'Wiederholung: Wetter und Jahreszeiten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wetter und Jahreszeiten" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Homework: Wiederholung: Körper und Gesundheit', 'Complete these tasks to reinforce "Wiederholung: Körper und Gesundheit" (Körper und Gesundheit).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Körper und Gesundheit\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'In this lesson on "Wiederholung: Körper und Gesundheit" (Körper und Gesundheit), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Körper und Gesundheit\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Körper und Gesundheit\""}]', ARRAY['"Wiederholung: Körper und Gesundheit" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Wiederholung: Körper und Gesundheit — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Körper und Gesundheit" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Wiederholung: Körper und Gesundheit — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Wiederholung: Körper und Gesundheit — Conversation 1', 'Practice a realistic conversation about wiederholung: körper und gesundheit in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Körper und Gesundheit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Wiederholung: Körper und Gesundheit — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Körper und Gesundheit". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Wiederholung: Körper und Gesundheit', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Wiederholung: Körper und Gesundheit — Reading Practice', 'This is a A2-level reading passage about wiederholung: körper und gesundheit in the context of Körper und Gesundheit.

Wiederholung: Körper und Gesundheit is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('28c26fff-a5b3-4ef6-98ac-81c9ce0742d9', 'Wiederholung: Körper und Gesundheit — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Körper und Gesundheit" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Homework: Wiederholung: Essen und Trinken', 'Complete these tasks to reinforce "Wiederholung: Essen und Trinken" (Essen und Trinken).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Essen und Trinken\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'In this lesson on "Wiederholung: Essen und Trinken" (Essen und Trinken), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Essen und Trinken\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Essen und Trinken\""}]', ARRAY['"Wiederholung: Essen und Trinken" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Wiederholung: Essen und Trinken — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Essen und Trinken" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Wiederholung: Essen und Trinken — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Wiederholung: Essen und Trinken — Conversation 1', 'Practice a realistic conversation about wiederholung: essen und trinken in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Essen und Trinken" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Wiederholung: Essen und Trinken — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Essen und Trinken". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Wiederholung: Essen und Trinken', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Wiederholung: Essen und Trinken — Reading Practice', 'This is a A2-level reading passage about wiederholung: essen und trinken in the context of Essen und Trinken.

Wiederholung: Essen und Trinken is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('6bb85b58-bff9-4b0f-b91e-0b903eeeaa1d', 'Wiederholung: Essen und Trinken — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Essen und Trinken" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Homework: Wiederholung: Feste und Feiertage', 'Complete these tasks to reinforce "Wiederholung: Feste und Feiertage" (Feste und Feiertage).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Feste und Feiertage\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'In this lesson on "Wiederholung: Feste und Feiertage" (Feste und Feiertage), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Feste und Feiertage\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Feste und Feiertage\""}]', ARRAY['"Wiederholung: Feste und Feiertage" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Wiederholung: Feste und Feiertage — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Feste und Feiertage" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Wiederholung: Feste und Feiertage — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Wiederholung: Feste und Feiertage — Conversation 1', 'Practice a realistic conversation about wiederholung: feste und feiertage in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Feste und Feiertage" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Wiederholung: Feste und Feiertage — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Feste und Feiertage". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Wiederholung: Feste und Feiertage', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Wiederholung: Feste und Feiertage — Reading Practice', 'This is a A2-level reading passage about wiederholung: feste und feiertage in the context of Feste und Feiertage.

Wiederholung: Feste und Feiertage is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('143f9d8f-617f-4687-859d-a640f25d24f5', 'Wiederholung: Feste und Feiertage — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Feste und Feiertage" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Homework: Wiederholung: Wetter und Jahreszeiten', 'Complete these tasks to reinforce "Wiederholung: Wetter und Jahreszeiten" (Wetter und Jahreszeiten).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Wetter und Jahreszeiten\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'In this lesson on "Wiederholung: Wetter und Jahreszeiten" (Wetter und Jahreszeiten), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Wetter und Jahreszeiten\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Wetter und Jahreszeiten\""}]', ARRAY['"Wiederholung: Wetter und Jahreszeiten" core vocabulary', 'Wetter und Jahreszeiten key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Wiederholung: Wetter und Jahreszeiten — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Wetter und Jahreszeiten" aloud. Focus on correct pronunciation.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Wiederholung: Wetter und Jahreszeiten — Speaking 2', 'Role-play: Imagine you are in a situation related to Wetter und Jahreszeiten. Have a dialogue with a partner.', 'Speaking practice for Wetter und Jahreszeiten', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Wiederholung: Wetter und Jahreszeiten — Conversation 1', 'Practice a realistic conversation about wiederholung: wetter und jahreszeiten in the context of Wetter und Jahreszeiten.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Wetter und Jahreszeiten" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Wiederholung: Wetter und Jahreszeiten — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Wetter und Jahreszeiten". The dialogue should be realistic and related to Wetter und Jahreszeiten.', 'Creative practice for Wiederholung: Wetter und Jahreszeiten', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Wiederholung: Wetter und Jahreszeiten — Reading Practice', 'This is a A2-level reading passage about wiederholung: wetter und jahreszeiten in the context of Wetter und Jahreszeiten.

Wiederholung: Wetter und Jahreszeiten is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Wetter und Jahreszeiten" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('72e1cbf8-6a1b-4d43-9bf3-50ff13dea9bf', 'Wiederholung: Wetter und Jahreszeiten — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Wetter und Jahreszeiten" aus dem Modul "Wetter und Jahreszeiten".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Wetter und Jahreszeiten');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Homework: Wiederholung: Stadt und Verkehr', 'Complete these tasks to reinforce "Wiederholung: Stadt und Verkehr" (Stadt und Verkehr).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Stadt und Verkehr\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'In this lesson on "Wiederholung: Stadt und Verkehr" (Stadt und Verkehr), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Stadt und Verkehr\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Stadt und Verkehr\""}]', ARRAY['"Wiederholung: Stadt und Verkehr" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Wiederholung: Stadt und Verkehr — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Stadt und Verkehr" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Wiederholung: Stadt und Verkehr — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Wiederholung: Stadt und Verkehr — Conversation 1', 'Practice a realistic conversation about wiederholung: stadt und verkehr in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Stadt und Verkehr" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Wiederholung: Stadt und Verkehr — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Stadt und Verkehr". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wiederholung: Stadt und Verkehr', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Wiederholung: Stadt und Verkehr — Reading Practice', 'This is a A2-level reading passage about wiederholung: stadt und verkehr in the context of Stadt und Verkehr.

Wiederholung: Stadt und Verkehr is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8992a3d2-535e-4d72-beb1-0c23d4bdae96', 'Wiederholung: Stadt und Verkehr — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Stadt und Verkehr" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Homework: Wiederholung: Kleidung und Mode', 'Complete these tasks to reinforce "Wiederholung: Kleidung und Mode" (Kleidung und Mode).', 'vocabulary', '[{"description":"Review all vocabulary from \"Wiederholung: Kleidung und Mode\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'In this lesson on "Wiederholung: Kleidung und Mode" (Kleidung und Mode), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Kleidung und Mode\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Kleidung und Mode\""}]', ARRAY['"Wiederholung: Kleidung und Mode" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Wiederholung: Kleidung und Mode — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Kleidung und Mode" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Wiederholung: Kleidung und Mode — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Wiederholung: Kleidung und Mode — Conversation 1', 'Practice a realistic conversation about wiederholung: kleidung und mode in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Kleidung und Mode" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Wiederholung: Kleidung und Mode — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Kleidung und Mode". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Wiederholung: Kleidung und Mode', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Wiederholung: Kleidung und Mode — Reading Practice', 'This is a A2-level reading passage about wiederholung: kleidung und mode in the context of Kleidung und Mode.

Wiederholung: Kleidung und Mode is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('5dba665f-6568-447d-8ba4-73ceb2c5a5a9', 'Wiederholung: Kleidung und Mode — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Kleidung und Mode" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Homework: Wiederholung: Körper und Gesundheit', 'Complete these tasks to reinforce "Wiederholung: Körper und Gesundheit" (Körper und Gesundheit).', 'writing', '[{"description":"Review all vocabulary from \"Wiederholung: Körper und Gesundheit\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'In this lesson on "Wiederholung: Körper und Gesundheit" (Körper und Gesundheit), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Körper und Gesundheit\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Körper und Gesundheit\""}]', ARRAY['"Wiederholung: Körper und Gesundheit" core vocabulary', 'Körper und Gesundheit key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Wiederholung: Körper und Gesundheit — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Körper und Gesundheit" aloud. Focus on correct pronunciation.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Wiederholung: Körper und Gesundheit — Speaking 2', 'Role-play: Imagine you are in a situation related to Körper und Gesundheit. Have a dialogue with a partner.', 'Speaking practice for Körper und Gesundheit', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Wiederholung: Körper und Gesundheit — Conversation 1', 'Practice a realistic conversation about wiederholung: körper und gesundheit in the context of Körper und Gesundheit.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Körper und Gesundheit" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Wiederholung: Körper und Gesundheit — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Körper und Gesundheit". The dialogue should be realistic and related to Körper und Gesundheit.', 'Creative practice for Wiederholung: Körper und Gesundheit', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Wiederholung: Körper und Gesundheit — Reading Practice', 'This is a A2-level reading passage about wiederholung: körper und gesundheit in the context of Körper und Gesundheit.

Wiederholung: Körper und Gesundheit is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Körper und Gesundheit" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9d974d32-3ac2-4554-8dc2-ca37e1dd40ba', 'Wiederholung: Körper und Gesundheit — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Körper und Gesundheit" aus dem Modul "Körper und Gesundheit".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Körper und Gesundheit');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Homework: Wiederholung: Stadt und Verkehr', 'Complete these tasks to reinforce "Wiederholung: Stadt und Verkehr" (Stadt und Verkehr).', 'speaking', '[{"description":"Review all vocabulary from \"Wiederholung: Stadt und Verkehr\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'In this lesson on "Wiederholung: Stadt und Verkehr" (Stadt und Verkehr), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Stadt und Verkehr\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Stadt und Verkehr\""}]', ARRAY['"Wiederholung: Stadt und Verkehr" core vocabulary', 'Stadt und Verkehr key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Wiederholung: Stadt und Verkehr — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Stadt und Verkehr" aloud. Focus on correct pronunciation.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Wiederholung: Stadt und Verkehr — Speaking 2', 'Role-play: Imagine you are in a situation related to Stadt und Verkehr. Have a dialogue with a partner.', 'Speaking practice for Stadt und Verkehr', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Wiederholung: Stadt und Verkehr — Conversation 1', 'Practice a realistic conversation about wiederholung: stadt und verkehr in the context of Stadt und Verkehr.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Stadt und Verkehr" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Wiederholung: Stadt und Verkehr — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Stadt und Verkehr". The dialogue should be realistic and related to Stadt und Verkehr.', 'Creative practice for Wiederholung: Stadt und Verkehr', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Wiederholung: Stadt und Verkehr — Reading Practice', 'This is a A2-level reading passage about wiederholung: stadt und verkehr in the context of Stadt und Verkehr.

Wiederholung: Stadt und Verkehr is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Stadt und Verkehr" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('9acfca96-775f-4cd5-aa5c-fc4a2df67643', 'Wiederholung: Stadt und Verkehr — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Stadt und Verkehr" aus dem Modul "Stadt und Verkehr".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Stadt und Verkehr');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8307b103-9e03-4f76-be30-748f90c53884', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('8307b103-9e03-4f76-be30-748f90c53884', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Homework: Wiederholung: Essen und Trinken', 'Complete these tasks to reinforce "Wiederholung: Essen und Trinken" (Essen und Trinken).', 'reading', '[{"description":"Review all vocabulary from \"Wiederholung: Essen und Trinken\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 15, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('8307b103-9e03-4f76-be30-748f90c53884', 'In this lesson on "Wiederholung: Essen und Trinken" (Essen und Trinken), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Essen und Trinken\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Essen und Trinken\""}]', ARRAY['"Wiederholung: Essen und Trinken" core vocabulary', 'Essen und Trinken key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Wiederholung: Essen und Trinken — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Essen und Trinken" aloud. Focus on correct pronunciation.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Wiederholung: Essen und Trinken — Speaking 2', 'Role-play: Imagine you are in a situation related to Essen und Trinken. Have a dialogue with a partner.', 'Speaking practice for Essen und Trinken', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Wiederholung: Essen und Trinken — Conversation 1', 'Practice a realistic conversation about wiederholung: essen und trinken in the context of Essen und Trinken.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Essen und Trinken" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Wiederholung: Essen und Trinken — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Essen und Trinken". The dialogue should be realistic and related to Essen und Trinken.', 'Creative practice for Wiederholung: Essen und Trinken', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Wiederholung: Essen und Trinken — Reading Practice', 'This is a A2-level reading passage about wiederholung: essen und trinken in the context of Essen und Trinken.

Wiederholung: Essen und Trinken is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Essen und Trinken" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('8307b103-9e03-4f76-be30-748f90c53884', 'Wiederholung: Essen und Trinken — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Essen und Trinken" aus dem Modul "Essen und Trinken".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Essen und Trinken');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Homework: Wiederholung: Kleidung und Mode', 'Complete these tasks to reinforce "Wiederholung: Kleidung und Mode" (Kleidung und Mode).', 'grammar', '[{"description":"Review all vocabulary from \"Wiederholung: Kleidung und Mode\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 20, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'In this lesson on "Wiederholung: Kleidung und Mode" (Kleidung und Mode), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Kleidung und Mode\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Kleidung und Mode\""}]', ARRAY['"Wiederholung: Kleidung und Mode" core vocabulary', 'Kleidung und Mode key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Wiederholung: Kleidung und Mode — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Kleidung und Mode" aloud. Focus on correct pronunciation.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Wiederholung: Kleidung und Mode — Speaking 2', 'Role-play: Imagine you are in a situation related to Kleidung und Mode. Have a dialogue with a partner.', 'Speaking practice for Kleidung und Mode', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Wiederholung: Kleidung und Mode — Conversation 1', 'Practice a realistic conversation about wiederholung: kleidung und mode in the context of Kleidung und Mode.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Kleidung und Mode" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Wiederholung: Kleidung und Mode — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Kleidung und Mode". The dialogue should be realistic and related to Kleidung und Mode.', 'Creative practice for Wiederholung: Kleidung und Mode', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Wiederholung: Kleidung und Mode — Reading Practice', 'This is a A2-level reading passage about wiederholung: kleidung und mode in the context of Kleidung und Mode.

Wiederholung: Kleidung und Mode is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Kleidung und Mode" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('b15d64d2-437d-4985-8c9b-9b210c4ea725', 'Wiederholung: Kleidung und Mode — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Kleidung und Mode" aus dem Modul "Kleidung und Mode".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Kleidung und Mode');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) VALUES
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Homework: Wiederholung: Feste und Feiertage', 'Complete these tasks to reinforce "Wiederholung: Feste und Feiertage" (Feste und Feiertage).', 'mixed', '[{"description":"Review all vocabulary from \"Wiederholung: Feste und Feiertage\" — write each word with its article and plural form."},{"description":"Write 5 sentences using the key words from this lesson."},{"description":"Practice the dialogue aloud 3 times and record yourself."}]', 25, 1);

INSERT INTO public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) VALUES
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'In this lesson on "Wiederholung: Feste und Feiertage" (Feste und Feiertage), you learned key review concepts at A2 level. Regular practice will help reinforce your understanding and build fluency.', '["Mastered the core vocabulary and expressions of \"Wiederholung: Feste und Feiertage\"","Understood and practiced the grammar structures taught","Developed review skills through targeted exercises","Built confidence in using German in practical situations","Identified areas for further practice and improvement","Connected new knowledge with previously learned material"]', '[{"title":"Key Grammar Points","summary":"Review the grammar rules and structures from this lesson on \"Wiederholung: Feste und Feiertage\""}]', ARRAY['"Wiederholung: Feste und Feiertage" core vocabulary', 'Feste und Feiertage key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)', 'Verb is always in second position in main clauses', 'Remember: German nouns are always capitalized']::text[], ARRAY['Practice 15-20 minutes daily for best results', 'Use new vocabulary in real sentences immediately', 'Speak out loud to improve pronunciation and fluency', 'Review previous lessons before starting new material']::text[]);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Wiederholung: Feste und Feiertage — Speaking 1', 'Practice the key vocabulary and phrases from "Wiederholung: Feste und Feiertage" aloud. Focus on correct pronunciation.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 30, 1);

INSERT INTO public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) VALUES
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Wiederholung: Feste und Feiertage — Speaking 2', 'Role-play: Imagine you are in a situation related to Feste und Feiertage. Have a dialogue with a partner.', 'Speaking practice for Feste und Feiertage', ARRAY['Speak slowly and clearly', 'Use full sentences', 'Don''t worry about mistakes', 'Practice 3 times']::text[], ARRAY['Use this lesson''s vocabulary', 'Apply correct grammar']::text[], 60, 2);

INSERT INTO public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, vocabulary_hints, difficulty, order_index) VALUES
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Wiederholung: Feste und Feiertage — Conversation 1', 'Practice a realistic conversation about wiederholung: feste und feiertage in the context of Feste und Feiertage.', 'Student', 'Teacher', 'You are a student at A2 level. Practice having a natural German conversation about this lesson''s topic.', 'Hallo! Lass uns über "Wiederholung: Feste und Feiertage" sprechen. Bist du bereit?', ARRAY[]::text[], 'beginner', 1);

INSERT INTO public.lesson_ai_challenges (lesson_id, title, question, scenario, expected_elements, tips, difficulty, order_index) VALUES
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Wiederholung: Feste und Feiertage — Creative Application', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wiederholung: Feste und Feiertage". The dialogue should be realistic and related to Feste und Feiertage.', 'Creative practice for Wiederholung: Feste und Feiertage', ARRAY['10+ vocabulary words from the lesson', 'Correct grammar application', 'Realistic and natural dialogue', 'Creative and original content']::text[], ARRAY['Review the lesson material first', 'Take your time to think', 'Be creative and original']::text[], 'easy', 1);

INSERT INTO public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, audio_url, source) VALUES
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Wiederholung: Feste und Feiertage — Reading Practice', 'This is a A2-level reading passage about wiederholung: feste und feiertage in the context of Feste und Feiertage.

Wiederholung: Feste und Feiertage is an important topic for German learners. In this lesson, you will learn key vocabulary and grammar structures that will help you communicate effectively in real-life situations.

The module "Feste und Feiertage" provides a comprehensive introduction to this topic. By studying this material carefully and practicing regularly, you will build confidence in your German language skills.

Try to read the passage without translating every word. Focus on understanding the main ideas first. Then read again for details. Finally, practice reading aloud to improve your pronunciation.', NULL, NULL, 104, 1, NULL, 'DeutschMentor Curriculum');

INSERT INTO public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, audio_url, duration_seconds, speaker_count, scenario) VALUES
  ('59f45749-172c-4dea-b1ca-2afbaf0e7d3e', 'Wiederholung: Feste und Feiertage — Listening Exercise', '[Teacher]: Hallo! Willkommen zur Lektion "Wiederholung: Feste und Feiertage" aus dem Modul "Feste und Feiertage".

[Teacher]: Heute lernen wir wichtige Wörter und Sätze. Bitte hören Sie gut zu und wiederholen Sie.

[Student]: Ich bin bereit! Was lernen wir zuerst?

[Teacher]: Wir beginnen mit den Grundlagen. Wiederholen Sie bitte jedes Wort nach mir.

[Student]: Das ist eine gute Übung. Kann ich die Wörter auch in Sätzen hören?

[Teacher]: Natürlich! Ich zeige Ihnen Beispiele für jeden Satz. Dann üben wir zusammen.

[Student]: Perfekt! Vielen Dank für die Hilfe.

[Teacher]: Gern geschehen! Üben Sie zu Hause weiter. Viel Erfolg!', NULL, NULL, NULL, 120, 2, 'Feste und Feiertage');

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('d4a55a10-06a7-427a-bc9d-7b97c11f1c57', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('f2326302-ffc7-4fb7-8507-11977e1d46cc', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('e6b5bc61-37d6-4cb1-ab3b-d8216c410a33', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('a97f7fe2-2347-4931-95bf-24eb436fd5af', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('8235b796-e833-4499-a95e-b89448c60a38', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('8235b796-e833-4499-a95e-b89448c60a38', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('8235b796-e833-4499-a95e-b89448c60a38', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 1),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Stadt und Verkehr', 'formal', false, NULL, 2),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 3),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Stadt und Verkehr', 'neutral', false, NULL, 4),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Stadt und Verkehr', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('59b1d882-7b80-4b55-baf1-86876c25f805', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 1),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Körper und Gesundheit', 'formal', false, NULL, 2),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 3),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Körper und Gesundheit', 'neutral', false, NULL, 4),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Körper und Gesundheit', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('7a8a2aac-71da-4d02-bdc8-5a022e009cab', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Ich wiederhole die Vokabeln.', 'I review the vocabulary.', 'أراجع المفردات.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 1),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Kannst du das bitte wiederholen?', 'Can you please repeat that?', 'هل يمكنك تكرار ذلك من فضلك؟', 'Used in Kleidung und Mode', 'formal', false, NULL, 2),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Ich habe alles verstanden.', 'I understood everything.', 'لقد فهمت كل شيء.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 3),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Das ist eine gute Übung.', 'That is a good exercise.', 'هذا تمرين جيد.', 'Used in Kleidung und Mode', 'neutral', false, NULL, 4),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Noch einmal, bitte!', 'Once more, please!', 'مرة أخرى من فضلك!', 'Used in Kleidung und Mode', 'formal', false, NULL, 5);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Guten Morgen', 'Good morning', 'Used before noon', 'expression', 1),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Guten Abend', 'Good evening', 'Used after 6 PM', 'expression', 2),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Tschüss', 'Bye (informal)', 'With friends', 'expression', 3),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Auf Wiedersehen', 'Goodbye (formal)', 'Formal situations', 'expression', 4),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Bis später', 'See you later', 'Soon again', 'expression', 5),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Willkommen', 'Welcome', 'First meeting', 'expression', 6),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Entschuldigung', 'Excuse me / Sorry', 'Apology or attention', 'expression', 7),
  ('f8af34c9-1879-4341-84dd-56f594445fbc', 'Vielen Dank', 'Thank you very much', 'Gratitude', 'expression', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 1),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 2),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 3),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 4),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Wetter und Jahreszeiten', 'neutral', false, NULL, 5),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Wetter und Jahreszeiten', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('1b5e66a2-2032-429b-97f5-12cb7b36f0c0', 'der Januar', 'January', 'First month', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('b7698143-1e8a-41c2-9a9b-e6b4242746a2', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'Was möchten Sie bestellen?', 'What would you like to order?', 'ماذا تريد أن تطلب؟', 'Used in Essen und Trinken', 'formal', false, NULL, 1),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'Ich hätte gern einen Kaffee.', 'I''d like a coffee, please.', 'أريد قهوة من فضلك.', 'Used in Essen und Trinken', 'formal', false, NULL, 2),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', 'Used in Essen und Trinken', 'formal', false, NULL, 3),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'Guten Appetit!', 'Enjoy your meal!', 'بالهناء والشفاء!', 'Used in Essen und Trinken', 'neutral', false, NULL, 4),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'Das schmeckt sehr gut.', 'This tastes very good.', 'هذا لذيذ جداً.', 'Used in Essen und Trinken', 'neutral', false, NULL, 5),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'Ich möchte bezahlen.', 'I''d like to pay.', 'أريد أن أدفع.', 'Used in Essen und Trinken', 'formal', false, NULL, 6),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'Haben Sie vegetarische Gerichte?', 'Do you have vegetarian dishes?', 'هل لديكم أطباق نباتية؟', 'Used in Essen und Trinken', 'formal', false, NULL, 7),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'Zum Wohl!', 'Cheers!', 'في صحتك!', 'Used in Essen und Trinken', 'neutral', false, NULL, 8);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'das Brot', 'bread', 'Basic food', 'vocabulary', 1),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'die Milch', 'milk', 'Dairy product', 'vocabulary', 2),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'der Apfel', 'apple', 'A fruit', 'vocabulary', 3),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'das Wasser', 'water', 'Drink', 'vocabulary', 4),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'der Käse', 'cheese', 'From milk', 'vocabulary', 5),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'der Fisch', 'fish', 'From the sea', 'vocabulary', 6),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'das Fleisch', 'meat', 'Not vegetarian', 'vocabulary', 7),
  ('59a17fa8-48d3-48ee-ad6e-439a7ca9b7b7', 'der Kuchen', 'cake', 'Sweet dessert', 'vocabulary', 8);

INSERT INTO public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, literal_translation, order_index) VALUES
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'Wie spät ist es?', 'What time is it?', 'كم الساعة؟', 'Used in Feste und Feiertage', 'neutral', false, NULL, 1),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'Es ist drei Uhr.', 'It is three o''clock.', 'الساعة الثالثة.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 2),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'Um wie viel Uhr treffen wir uns?', 'What time are we meeting?', 'في أي ساعة نلتقي؟', 'Used in Feste und Feiertage', 'informal', false, NULL, 3),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'Am Montag habe ich frei.', 'On Monday I am off.', 'يوم الإثنين أنا عاطل.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 4),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'Heute ist der erste Mai.', 'Today is the first of May.', 'اليوم هو الأول من مايو.', 'Used in Feste und Feiertage', 'neutral', false, NULL, 5),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'Wir sehen uns morgen!', 'See you tomorrow!', 'نراكم غداً!', 'Used in Feste und Feiertage', 'informal', false, NULL, 6);

INSERT INTO public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) VALUES
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'der Montag', 'Monday', 'First work day', 'vocabulary', 1),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'der Dienstag', 'Tuesday', 'Second day', 'vocabulary', 2),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'der Mittwoch', 'Wednesday', 'Mid-week', 'vocabulary', 3),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'der Donnerstag', 'Thursday', 'Fourth day', 'vocabulary', 4),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'der Freitag', 'Friday', 'End of work week', 'vocabulary', 5),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'der Samstag', 'Saturday', 'Weekend', 'vocabulary', 6),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'der Sonntag', 'Sunday', 'Day of rest', 'vocabulary', 7),
  ('5857c5b1-e26d-4dd9-996f-1f48e69f054c', 'der Januar', 'January', 'First month', 'vocabulary', 8);