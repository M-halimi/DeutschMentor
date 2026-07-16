-- ============================================================================
-- COMPLETE CURRICULUM SEED — Level A2 (Elementary)
-- Generated for 6 modules, 35 lessons
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Level: A2 — Elementary
  insert into public.course_levels (id, title, description, image_url, color, order_index)
  values ('A2', 'Elementary', 'Build confidence with common situations: shopping, eating out, talking about your daily routine, and describing your surroundings.', NULL, 'from-blue-500 to-cyan-600', 2)
  on conflict (id) do nothing;

  -- Module 1: Essen und Trinken
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547bd', 'A2', 'Essen und Trinken', 'Learn detailed food vocabulary, cooking, recipes, and restaurant interactions.', '["Describe food and drinks in detail","Order and pay in restaurants confidently","Use the Perfekt tense to talk about past meals","Use Dativ for indirect objects","Express quantities and amounts"]', 1, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Lebensmittel und Nahrungsmittel (L-A2-01-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f0e', '00000000-0000-4000-a000-000039b547bd', 'Lebensmittel und Nahrungsmittel', 'Detailed food vocabulary including ingredients and packaging.', 'Food & Ingredients', 'vocabulary', '["Understand and use vocabulary related to Food & Ingredients","Apply present_tense correctly","Read and comprehend a text about Food & Ingredients","Listen and understand a dialogue about Food & Ingredients","Speak about Food & Ingredients in simple sentences","Write a short text about Food & Ingredients"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f0e', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f0e', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f0e', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f0e', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f0e', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f0e', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f0e', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f0e', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f0e', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f0e', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f0e', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f0e', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f0e', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f0e', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f0e', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f0e', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f0e', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f0e', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f0e', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f0e', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f0e', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f0e', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f0e', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f0e', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f0e', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f0e', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f0e', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f0e', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f0e', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065817f0e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065817f0e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065817f0e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065817f0e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'What is the main topic of this lesson?', '["Food & Ingredients","Sports","Music","Travel"]', 'Food & Ingredients', 1, 1),
  ('00000000-0000-4000-a000-000065817f0e', 'true_false', 'This lesson teaches vocabulary about Food & Ingredients.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065817f0e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065817f0e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065817f0e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065817f0e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f0e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Trinken', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065817f0e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Trinken', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065817f0e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Trinken', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065817f0e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065817f0e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065817f0e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f0e', 'Lebensmittel und Nahrungsmittel — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065817f0e', 'Lebensmittel und Nahrungsmittel — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Speaking: Lebensmittel und Nahrungsmittel', 'Practice talking about Food & Ingredients. Answer questions and have a simple conversation.', 'Food & Ingredients', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Writing: Lebensmittel und Nahrungsmittel', 'Write a short text about Food & Ingredients. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0e', 'Lebensmittel und Nahrungsmittel — Roleplay', 'Food & Ingredients', 'Student', 'Teacher', 'Practice conversation about Food & Ingredients', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0e', 'Lebensmittel und Nahrungsmittel — Advanced Roleplay', 'Food & Ingredients', 'Customer', 'Assistant', 'Extended conversation about Food & Ingredients', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f0e', 'Lebensmittel und Nahrungsmittel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Lebensmittel und Nahrungsmittel".', 'Creative practice for Food & Ingredients', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Homework: Lebensmittel und Nahrungsmittel', 'Complete these tasks to reinforce "Lebensmittel und Nahrungsmittel".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f0e', 'In this lesson you learned about Food & Ingredients. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Food & Ingredients","Applied present_tense correctly","Read and understood a text about Food & Ingredients","Practiced speaking about Food & Ingredients"]', '[{"title":"Lebensmittel und Nahrungsmittel Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Food & Ingredients core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Culture: Food & Ingredients in German-Speaking Countries', 'Learn how Food & Ingredients is approached in German culture.

تعلم كيف يتم التعامل مع Food & Ingredients في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Getränke und Mahlzeiten (L-A2-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f0d', '00000000-0000-4000-a000-000039b547bd', 'Getränke und Mahlzeiten', 'Beverages, meals of the day, and eating habits.', 'Meals & Drinks', 'vocabulary', '["Understand and use vocabulary related to Meals & Drinks","Apply present_tense correctly","Read and comprehend a text about Meals & Drinks","Listen and understand a dialogue about Meals & Drinks","Speak about Meals & Drinks in simple sentences","Write a short text about Meals & Drinks"]', 45, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f0d', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f0d', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f0d', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f0d', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f0d', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f0d', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f0d', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f0d', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f0d', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f0d', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f0d', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f0d', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f0d', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f0d', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f0d', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f0d', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f0d', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f0d', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f0d', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f0d', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f0d', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f0d', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f0d', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f0d', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f0d', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f0d', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f0d', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f0d', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f0d', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065817f0d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065817f0d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065817f0d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065817f0d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'What is the main topic of this lesson?', '["Meals & Drinks","Sports","Music","Travel"]', 'Meals & Drinks', 1, 1),
  ('00000000-0000-4000-a000-000065817f0d', 'true_false', 'This lesson teaches vocabulary about Meals & Drinks.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065817f0d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065817f0d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065817f0d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065817f0d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f0d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Trinken', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065817f0d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Trinken', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065817f0d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Trinken', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065817f0d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065817f0d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065817f0d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f0d', 'Getränke und Mahlzeiten — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065817f0d', 'Getränke und Mahlzeiten — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Speaking: Getränke und Mahlzeiten', 'Practice talking about Meals & Drinks. Answer questions and have a simple conversation.', 'Meals & Drinks', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Writing: Getränke und Mahlzeiten', 'Write a short text about Meals & Drinks. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0d', 'Getränke und Mahlzeiten — Roleplay', 'Meals & Drinks', 'Student', 'Teacher', 'Practice conversation about Meals & Drinks', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0d', 'Getränke und Mahlzeiten — Advanced Roleplay', 'Meals & Drinks', 'Customer', 'Assistant', 'Extended conversation about Meals & Drinks', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f0d', 'Getränke und Mahlzeiten — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Getränke und Mahlzeiten".', 'Creative practice for Meals & Drinks', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Homework: Getränke und Mahlzeiten', 'Complete these tasks to reinforce "Getränke und Mahlzeiten".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f0d', 'In this lesson you learned about Meals & Drinks. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Meals & Drinks","Applied present_tense correctly","Read and understood a text about Meals & Drinks","Practiced speaking about Meals & Drinks"]', '[{"title":"Getränke und Mahlzeiten Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Meals & Drinks core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Culture: Meals & Drinks in German-Speaking Countries', 'Learn how Meals & Drinks is approached in German culture.

تعلم كيف يتم التعامل مع Meals & Drinks في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Perfekt mit haben und sein (L-A2-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f0c', '00000000-0000-4000-a000-000039b547bd', 'Perfekt mit haben und sein', 'Learn the perfect tense to talk about past meals and experiences.', 'Perfect Tense', 'grammar', '["Understand and use vocabulary related to Perfect Tense","Apply present_tense correctly","Read and comprehend a text about Perfect Tense","Listen and understand a dialogue about Perfect Tense","Speak about Perfect Tense in simple sentences","Write a short text about Perfect Tense"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f0c', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f0c', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f0c', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f0c', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f0c', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f0c', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f0c', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f0c', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f0c', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f0c', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f0c', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f0c', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f0c', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f0c', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f0c', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f0c', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f0c', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f0c', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f0c', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f0c', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f0c', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f0c', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f0c', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f0c', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f0c', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f0c', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f0c', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f0c', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f0c', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065817f0c', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065817f0c', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065817f0c', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065817f0c', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'What is the main topic of this lesson?', '["Perfect Tense","Sports","Music","Travel"]', 'Perfect Tense', 1, 1),
  ('00000000-0000-4000-a000-000065817f0c', 'true_false', 'This lesson teaches vocabulary about Perfect Tense.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065817f0c', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065817f0c', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065817f0c', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065817f0c', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f0c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Trinken', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065817f0c', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Trinken', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065817f0c', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Trinken', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065817f0c', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065817f0c', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065817f0c', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f0c', 'Perfekt mit haben und sein — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065817f0c', 'Perfekt mit haben und sein — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Speaking: Perfekt mit haben und sein', 'Practice talking about Perfect Tense. Answer questions and have a simple conversation.', 'Perfect Tense', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Writing: Perfekt mit haben und sein', 'Write a short text about Perfect Tense. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0c', 'Perfekt mit haben und sein — Roleplay', 'Perfect Tense', 'Student', 'Teacher', 'Practice conversation about Perfect Tense', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0c', 'Perfekt mit haben und sein — Advanced Roleplay', 'Perfect Tense', 'Customer', 'Assistant', 'Extended conversation about Perfect Tense', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f0c', 'Perfekt mit haben und sein — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Perfekt mit haben und sein".', 'Creative practice for Perfect Tense', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Homework: Perfekt mit haben und sein', 'Complete these tasks to reinforce "Perfekt mit haben und sein".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f0c', 'In this lesson you learned about Perfect Tense. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Perfect Tense","Applied present_tense correctly","Read and understood a text about Perfect Tense","Practiced speaking about Perfect Tense"]', '[{"title":"Perfekt mit haben und sein Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Perfect Tense core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Culture: Perfect Tense in German-Speaking Countries', 'Learn how Perfect Tense is approached in German culture.

تعلم كيف يتم التعامل مع Perfect Tense في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Im Restaurant bestellen (L-A2-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f0b', '00000000-0000-4000-a000-000039b547bd', 'Im Restaurant bestellen', 'Practice ordering food, asking about the menu, and paying.', 'Restaurant Ordering', 'dialogue', '["Understand and use vocabulary related to Restaurant Ordering","Apply present_tense correctly","Read and comprehend a text about Restaurant Ordering","Listen and understand a dialogue about Restaurant Ordering","Speak about Restaurant Ordering in simple sentences","Write a short text about Restaurant Ordering"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f0b', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f0b', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f0b', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f0b', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f0b', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f0b', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f0b', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f0b', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f0b', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f0b', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f0b', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f0b', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f0b', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f0b', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f0b', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f0b', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f0b', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f0b', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f0b', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f0b', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f0b', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f0b', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f0b', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f0b', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f0b', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f0b', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f0b', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f0b', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f0b', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065817f0b', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065817f0b', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065817f0b', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065817f0b', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'What is the main topic of this lesson?', '["Restaurant Ordering","Sports","Music","Travel"]', 'Restaurant Ordering', 1, 1),
  ('00000000-0000-4000-a000-000065817f0b', 'true_false', 'This lesson teaches vocabulary about Restaurant Ordering.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065817f0b', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065817f0b', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065817f0b', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065817f0b', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f0b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Trinken', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065817f0b', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Trinken', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065817f0b', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Trinken', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065817f0b', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065817f0b', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065817f0b', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f0b', 'Im Restaurant bestellen — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065817f0b', 'Im Restaurant bestellen — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Speaking: Im Restaurant bestellen', 'Practice talking about Restaurant Ordering. Answer questions and have a simple conversation.', 'Restaurant Ordering', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Writing: Im Restaurant bestellen', 'Write a short text about Restaurant Ordering. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0b', 'Im Restaurant bestellen — Roleplay', 'Restaurant Ordering', 'Student', 'Teacher', 'Practice conversation about Restaurant Ordering', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0b', 'Im Restaurant bestellen — Advanced Roleplay', 'Restaurant Ordering', 'Customer', 'Assistant', 'Extended conversation about Restaurant Ordering', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f0b', 'Im Restaurant bestellen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant bestellen".', 'Creative practice for Restaurant Ordering', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Homework: Im Restaurant bestellen', 'Complete these tasks to reinforce "Im Restaurant bestellen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f0b', 'In this lesson you learned about Restaurant Ordering. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Restaurant Ordering","Applied present_tense correctly","Read and understood a text about Restaurant Ordering","Practiced speaking about Restaurant Ordering"]', '[{"title":"Im Restaurant bestellen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Restaurant Ordering core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Culture: Restaurant Ordering in German-Speaking Countries', 'Learn how Restaurant Ordering is approached in German culture.

تعلم كيف يتم التعامل مع Restaurant Ordering في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Kochen und Rezepte (L-A2-01-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f0a', '00000000-0000-4000-a000-000039b547bd', 'Kochen und Rezepte', 'Learn cooking verbs, recipes, and kitchen vocabulary.', 'Cooking & Recipes', 'reading', '["Understand and use vocabulary related to Cooking & Recipes","Apply present_tense correctly","Read and comprehend a text about Cooking & Recipes","Listen and understand a dialogue about Cooking & Recipes","Speak about Cooking & Recipes in simple sentences","Write a short text about Cooking & Recipes"]', 45, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f0a', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f0a', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f0a', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f0a', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f0a', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f0a', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f0a', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f0a', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f0a', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f0a', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f0a', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f0a', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f0a', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f0a', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f0a', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f0a', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f0a', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f0a', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f0a', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f0a', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f0a', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f0a', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f0a', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f0a', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f0a', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f0a', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f0a', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f0a', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f0a', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065817f0a', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065817f0a', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065817f0a', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065817f0a', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'What is the main topic of this lesson?', '["Cooking & Recipes","Sports","Music","Travel"]', 'Cooking & Recipes', 1, 1),
  ('00000000-0000-4000-a000-000065817f0a', 'true_false', 'This lesson teaches vocabulary about Cooking & Recipes.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065817f0a', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065817f0a', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065817f0a', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065817f0a', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f0a', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Trinken', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065817f0a', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Trinken', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065817f0a', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Trinken', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065817f0a', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065817f0a', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065817f0a', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f0a', 'Kochen und Rezepte — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065817f0a', 'Kochen und Rezepte — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Speaking: Kochen und Rezepte', 'Practice talking about Cooking & Recipes. Answer questions and have a simple conversation.', 'Cooking & Recipes', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Writing: Kochen und Rezepte', 'Write a short text about Cooking & Recipes. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0a', 'Kochen und Rezepte — Roleplay', 'Cooking & Recipes', 'Student', 'Teacher', 'Practice conversation about Cooking & Recipes', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0a', 'Kochen und Rezepte — Advanced Roleplay', 'Cooking & Recipes', 'Customer', 'Assistant', 'Extended conversation about Cooking & Recipes', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f0a', 'Kochen und Rezepte — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kochen und Rezepte".', 'Creative practice for Cooking & Recipes', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Homework: Kochen und Rezepte', 'Complete these tasks to reinforce "Kochen und Rezepte".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f0a', 'In this lesson you learned about Cooking & Recipes. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Cooking & Recipes","Applied present_tense correctly","Read and understood a text about Cooking & Recipes","Practiced speaking about Cooking & Recipes"]', '[{"title":"Kochen und Rezepte Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Cooking & Recipes core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Culture: Cooking & Recipes in German-Speaking Countries', 'Learn how Cooking & Recipes is approached in German culture.

تعلم كيف يتم التعامل مع Cooking & Recipes في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Essen und Trinken (L-A2-01-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f09', '00000000-0000-4000-a000-000039b547bd', 'Test: Essen und Trinken', 'Module test on food, drink, and restaurant topics.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 40, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f09', 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f09', 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f09', 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f09', 'das Ei', 'البيضة', 'egg', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f09', 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f09', 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f09', 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f09', 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f09', 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f09', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f09', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f09', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f09', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f09', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f09', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f09', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f09', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f09', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f09', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f09', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f09', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f09', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f09', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f09', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f09', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f09', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f09', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f09', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f09', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'What does "das Brot" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065817f09', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065817f09', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065817f09', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065817f09', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-000065817f09', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065817f09', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065817f09', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065817f09', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065817f09', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f09', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Essen und Trinken', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065817f09', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Essen und Trinken', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065817f09', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Essen und Trinken', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065817f09', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065817f09', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065817f09', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f09', 'Test: Essen und Trinken — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065817f09', 'Test: Essen und Trinken — Hörverständnis', '[Kellner]: Guten Abend! Haben Sie schon gewählt?

[Gast]: Ja, ich möchte die Pizza Margherita und ein Glas Wasser.

[Kellner]: Sehr gut. Und als Vorspeise?

[Gast]: Einen gemischten Salat, bitte.

[Kellner]: Kommt sofort. Guten Appetit!', '[Kellner]: Good evening! Have you already chosen?

[Gast]: Yes, I would like the Pizza Margherita and a glass of water.

[Kellner]: Very good. And as a starter?

[Gast]: A mixed salad, please.

[Kellner]: Coming right away. Enjoy your meal!', '[Kellner]: مساء الخير! هل اخترتم؟

[Gast]: نعم، أريدبيتزا مارغريتا وكأس ماء.

[Kellner]: جيد جداً. وماذا عن المقبلات؟

[Gast]: سلطة مشكلة من فضلك.

[Kellner]: فوراً. شهية طيبة!', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Speaking: Test: Essen und Trinken', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Writing: Test: Essen und Trinken', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Brot','die Milch','der Käse']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f09', 'Test: Essen und Trinken — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f09', 'Test: Essen und Trinken — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f09', 'Test: Essen und Trinken — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Essen und Trinken".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Homework: Test: Essen und Trinken', 'Complete these tasks to reinforce "Test: Essen und Trinken".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f09', 'In this lesson you learned about Module Test. You practiced vocabulary related to food and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Essen und Trinken Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','food key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 2: Kleidung und Mode
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547be', 'A2', 'Kleidung und Mode', 'Name clothing items, describe colors and sizes, and go shopping.', '["Name clothing items and accessories","Describe colors, sizes, and materials","Use accusative and dative correctly","Use comparative and superlative","Shop for clothes and make returns"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Kleidungsstücke (L-A2-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aaf', '00000000-0000-4000-a000-000039b547be', 'Kleidungsstücke', 'Learn clothing items and their articles.', 'Clothing', 'vocabulary', '["Understand and use vocabulary related to Clothing","Apply present_tense correctly","Read and comprehend a text about Clothing","Listen and understand a dialogue about Clothing","Speak about Clothing in simple sentences","Write a short text about Clothing"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'der Mantel', 'المعطف', 'coat', 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aaf', 'das Hemd', 'القميص', 'shirt', 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aaf', 'die Hose', 'البنطلون', 'pants', 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aaf', 'die Jacke', 'الجاكيت', 'jacket', 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aaf', 'der Schuh', 'الحذاء', 'shoe', 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aaf', 'tragen', 'يرتدي', 'to wear', NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aaf', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aaf', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aaf', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aaf', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aaf', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aaf', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aaf', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aaf', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aaf', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aaf', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aaf', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aaf', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aaf', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aaf', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aaf', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aaf', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aaf', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aaf', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aaf', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aaf', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aaf', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aaf', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aaf', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aaf', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'What does "der Mantel" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065810aaf', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065810aaf', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065810aaf', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065810aaf', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'What is the main topic of this lesson?', '["Clothing","Sports","Music","Travel"]', 'Clothing', 1, 1),
  ('00000000-0000-4000-a000-000065810aaf', 'true_false', 'This lesson teaches vocabulary about Clothing.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065810aaf', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065810aaf', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065810aaf', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065810aaf', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aaf', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065810aaf', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kleidung und Mode', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065810aaf', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kleidung und Mode', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065810aaf', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065810aaf', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065810aaf', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aaf', 'Kleidungsstücke — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065810aaf', 'Kleidungsstücke — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Speaking: Kleidungsstücke', 'Practice talking about Clothing. Answer questions and have a simple conversation.', 'Clothing', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Writing: Kleidungsstücke', 'Write a short text about Clothing. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Mantel','das Hemd','die Hose']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aaf', 'Kleidungsstücke — Roleplay', 'Clothing', 'Student', 'Teacher', 'Practice conversation about Clothing', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aaf', 'Kleidungsstücke — Advanced Roleplay', 'Clothing', 'Customer', 'Assistant', 'Extended conversation about Clothing', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aaf', 'Kleidungsstücke — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kleidungsstücke".', 'Creative practice for Clothing', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Homework: Kleidungsstücke', 'Complete these tasks to reinforce "Kleidungsstücke".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aaf', 'In this lesson you learned about Clothing. You practiced vocabulary related to clothes and grammar structure present_tense.', '["Mastered vocabulary about Clothing","Applied present_tense correctly","Read and understood a text about Clothing","Practiced speaking about Clothing"]', '[{"title":"Kleidungsstücke Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Clothing core vocabulary','clothes key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Culture: Clothing in German-Speaking Countries', 'Learn how Clothing is approached in German culture.

تعلم كيف يتم التعامل مع Clothing في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Farben, Größen und Materialien (L-A2-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aae', '00000000-0000-4000-a000-000039b547be', 'Farben, Größen und Materialien', 'Describe colors, sizes, and what clothes are made of.', 'Colors & Materials', 'vocabulary', '["Understand and use vocabulary related to Colors & Materials","Apply present_tense correctly","Read and comprehend a text about Colors & Materials","Listen and understand a dialogue about Colors & Materials","Speak about Colors & Materials in simple sentences","Write a short text about Colors & Materials"]', 45, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'der Mantel', 'المعطف', 'coat', 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aae', 'das Hemd', 'القميص', 'shirt', 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aae', 'die Hose', 'البنطلون', 'pants', 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aae', 'die Jacke', 'الجاكيت', 'jacket', 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aae', 'der Schuh', 'الحذاء', 'shoe', 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aae', 'tragen', 'يرتدي', 'to wear', NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aae', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aae', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aae', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aae', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aae', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aae', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aae', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aae', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aae', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aae', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aae', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aae', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aae', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aae', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aae', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aae', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aae', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aae', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aae', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aae', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aae', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aae', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aae', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aae', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'What does "der Mantel" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065810aae', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065810aae', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065810aae', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065810aae', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'What is the main topic of this lesson?', '["Colors & Materials","Sports","Music","Travel"]', 'Colors & Materials', 1, 1),
  ('00000000-0000-4000-a000-000065810aae', 'true_false', 'This lesson teaches vocabulary about Colors & Materials.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065810aae', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065810aae', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065810aae', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065810aae', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aae', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065810aae', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kleidung und Mode', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065810aae', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kleidung und Mode', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065810aae', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065810aae', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065810aae', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aae', 'Farben, Größen und Materialien — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065810aae', 'Farben, Größen und Materialien — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Speaking: Farben, Größen und Materialien', 'Practice talking about Colors & Materials. Answer questions and have a simple conversation.', 'Colors & Materials', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Writing: Farben, Größen und Materialien', 'Write a short text about Colors & Materials. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Mantel','das Hemd','die Hose']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aae', 'Farben, Größen und Materialien — Roleplay', 'Colors & Materials', 'Student', 'Teacher', 'Practice conversation about Colors & Materials', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aae', 'Farben, Größen und Materialien — Advanced Roleplay', 'Colors & Materials', 'Customer', 'Assistant', 'Extended conversation about Colors & Materials', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aae', 'Farben, Größen und Materialien — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Farben, Größen und Materialien".', 'Creative practice for Colors & Materials', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Homework: Farben, Größen und Materialien', 'Complete these tasks to reinforce "Farben, Größen und Materialien".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aae', 'In this lesson you learned about Colors & Materials. You practiced vocabulary related to clothes and grammar structure present_tense.', '["Mastered vocabulary about Colors & Materials","Applied present_tense correctly","Read and understood a text about Colors & Materials","Practiced speaking about Colors & Materials"]', '[{"title":"Farben, Größen und Materialien Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Colors & Materials core vocabulary','clothes key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Culture: Colors & Materials in German-Speaking Countries', 'Learn how Colors & Materials is approached in German culture.

تعلم كيف يتم التعامل مع Colors & Materials في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Einkaufen: Kleidung kaufen (L-A2-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aad', '00000000-0000-4000-a000-000039b547be', 'Einkaufen: Kleidung kaufen', 'Practice shopping for clothes, asking for sizes, and paying.', 'Clothes Shopping', 'dialogue', '["Understand and use vocabulary related to Clothes Shopping","Apply present_tense correctly","Read and comprehend a text about Clothes Shopping","Listen and understand a dialogue about Clothes Shopping","Speak about Clothes Shopping in simple sentences","Write a short text about Clothes Shopping"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'der Mantel', 'المعطف', 'coat', 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aad', 'das Hemd', 'القميص', 'shirt', 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aad', 'die Hose', 'البنطلون', 'pants', 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aad', 'die Jacke', 'الجاكيت', 'jacket', 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aad', 'der Schuh', 'الحذاء', 'shoe', 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aad', 'tragen', 'يرتدي', 'to wear', NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aad', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aad', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aad', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aad', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aad', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aad', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aad', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aad', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aad', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aad', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aad', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aad', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aad', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aad', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aad', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aad', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aad', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aad', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aad', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aad', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aad', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aad', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aad', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aad', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'What does "der Mantel" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065810aad', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065810aad', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065810aad', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065810aad', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'What is the main topic of this lesson?', '["Clothes Shopping","Sports","Music","Travel"]', 'Clothes Shopping', 1, 1),
  ('00000000-0000-4000-a000-000065810aad', 'true_false', 'This lesson teaches vocabulary about Clothes Shopping.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065810aad', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065810aad', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065810aad', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065810aad', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aad', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065810aad', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kleidung und Mode', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065810aad', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kleidung und Mode', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065810aad', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065810aad', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065810aad', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aad', 'Einkaufen: Kleidung kaufen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065810aad', 'Einkaufen: Kleidung kaufen — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Speaking: Einkaufen: Kleidung kaufen', 'Practice talking about Clothes Shopping. Answer questions and have a simple conversation.', 'Clothes Shopping', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Writing: Einkaufen: Kleidung kaufen', 'Write a short text about Clothes Shopping. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Mantel','das Hemd','die Hose']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aad', 'Einkaufen: Kleidung kaufen — Roleplay', 'Clothes Shopping', 'Student', 'Teacher', 'Practice conversation about Clothes Shopping', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aad', 'Einkaufen: Kleidung kaufen — Advanced Roleplay', 'Clothes Shopping', 'Customer', 'Assistant', 'Extended conversation about Clothes Shopping', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aad', 'Einkaufen: Kleidung kaufen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einkaufen: Kleidung kaufen".', 'Creative practice for Clothes Shopping', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Homework: Einkaufen: Kleidung kaufen', 'Complete these tasks to reinforce "Einkaufen: Kleidung kaufen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aad', 'In this lesson you learned about Clothes Shopping. You practiced vocabulary related to clothes and grammar structure present_tense.', '["Mastered vocabulary about Clothes Shopping","Applied present_tense correctly","Read and understood a text about Clothes Shopping","Practiced speaking about Clothes Shopping"]', '[{"title":"Einkaufen: Kleidung kaufen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Clothes Shopping core vocabulary','clothes key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Culture: Clothes Shopping in German-Speaking Countries', 'Learn how Clothes Shopping is approached in German culture.

تعلم كيف يتم التعامل مع Clothes Shopping في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Mode und Stil (L-A2-02-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aac', '00000000-0000-4000-a000-000039b547be', 'Mode und Stil', 'Discuss fashion, style preferences, and compliments.', 'Fashion & Style', 'vocabulary', '["Understand and use vocabulary related to Fashion & Style","Apply present_tense correctly","Read and comprehend a text about Fashion & Style","Listen and understand a dialogue about Fashion & Style","Speak about Fashion & Style in simple sentences","Write a short text about Fashion & Style"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'der Mantel', 'المعطف', 'coat', 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aac', 'das Hemd', 'القميص', 'shirt', 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aac', 'die Hose', 'البنطلون', 'pants', 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aac', 'die Jacke', 'الجاكيت', 'jacket', 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aac', 'der Schuh', 'الحذاء', 'shoe', 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aac', 'tragen', 'يرتدي', 'to wear', NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aac', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aac', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aac', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aac', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aac', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aac', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aac', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aac', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aac', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aac', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aac', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aac', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aac', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aac', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aac', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aac', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aac', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aac', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aac', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aac', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aac', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aac', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aac', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aac', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'What does "der Mantel" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065810aac', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065810aac', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065810aac', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065810aac', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'What is the main topic of this lesson?', '["Fashion & Style","Sports","Music","Travel"]', 'Fashion & Style', 1, 1),
  ('00000000-0000-4000-a000-000065810aac', 'true_false', 'This lesson teaches vocabulary about Fashion & Style.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065810aac', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065810aac', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065810aac', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065810aac', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aac', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065810aac', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kleidung und Mode', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065810aac', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kleidung und Mode', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065810aac', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065810aac', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065810aac', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aac', 'Mode und Stil — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065810aac', 'Mode und Stil — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Speaking: Mode und Stil', 'Practice talking about Fashion & Style. Answer questions and have a simple conversation.', 'Fashion & Style', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Writing: Mode und Stil', 'Write a short text about Fashion & Style. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Mantel','das Hemd','die Hose']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aac', 'Mode und Stil — Roleplay', 'Fashion & Style', 'Student', 'Teacher', 'Practice conversation about Fashion & Style', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aac', 'Mode und Stil — Advanced Roleplay', 'Fashion & Style', 'Customer', 'Assistant', 'Extended conversation about Fashion & Style', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aac', 'Mode und Stil — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mode und Stil".', 'Creative practice for Fashion & Style', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Homework: Mode und Stil', 'Complete these tasks to reinforce "Mode und Stil".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aac', 'In this lesson you learned about Fashion & Style. You practiced vocabulary related to clothes and grammar structure present_tense.', '["Mastered vocabulary about Fashion & Style","Applied present_tense correctly","Read and understood a text about Fashion & Style","Practiced speaking about Fashion & Style"]', '[{"title":"Mode und Stil Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Fashion & Style core vocabulary','clothes key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Culture: Fashion & Style in German-Speaking Countries', 'Learn how Fashion & Style is approached in German culture.

تعلم كيف يتم التعامل مع Fashion & Style في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Komparativ und Superlativ (L-A2-02-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aab', '00000000-0000-4000-a000-000039b547be', 'Komparativ und Superlativ', 'Compare clothing items using comparative and superlative forms.', 'Comparatives', 'grammar', '["Understand and use vocabulary related to Comparatives","Apply present_tense correctly","Read and comprehend a text about Comparatives","Listen and understand a dialogue about Comparatives","Speak about Comparatives in simple sentences","Write a short text about Comparatives"]', 50, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'der Mantel', 'المعطف', 'coat', 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aab', 'das Hemd', 'القميص', 'shirt', 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aab', 'die Hose', 'البنطلون', 'pants', 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aab', 'die Jacke', 'الجاكيت', 'jacket', 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aab', 'der Schuh', 'الحذاء', 'shoe', 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aab', 'tragen', 'يرتدي', 'to wear', NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aab', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aab', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aab', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aab', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aab', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aab', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aab', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aab', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aab', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aab', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aab', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aab', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aab', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aab', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aab', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aab', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aab', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aab', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aab', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aab', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aab', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aab', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aab', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aab', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'What does "der Mantel" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065810aab', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065810aab', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065810aab', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065810aab', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'What is the main topic of this lesson?', '["Comparatives","Sports","Music","Travel"]', 'Comparatives', 1, 1),
  ('00000000-0000-4000-a000-000065810aab', 'true_false', 'This lesson teaches vocabulary about Comparatives.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065810aab', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065810aab', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065810aab', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065810aab', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aab', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065810aab', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kleidung und Mode', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065810aab', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kleidung und Mode', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065810aab', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065810aab', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065810aab', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aab', 'Komparativ und Superlativ — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065810aab', 'Komparativ und Superlativ — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Speaking: Komparativ und Superlativ', 'Practice talking about Comparatives. Answer questions and have a simple conversation.', 'Comparatives', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Writing: Komparativ und Superlativ', 'Write a short text about Comparatives. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Mantel','das Hemd','die Hose']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aab', 'Komparativ und Superlativ — Roleplay', 'Comparatives', 'Student', 'Teacher', 'Practice conversation about Comparatives', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aab', 'Komparativ und Superlativ — Advanced Roleplay', 'Comparatives', 'Customer', 'Assistant', 'Extended conversation about Comparatives', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aab', 'Komparativ und Superlativ — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Komparativ und Superlativ".', 'Creative practice for Comparatives', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Homework: Komparativ und Superlativ', 'Complete these tasks to reinforce "Komparativ und Superlativ".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aab', 'In this lesson you learned about Comparatives. You practiced vocabulary related to clothes and grammar structure present_tense.', '["Mastered vocabulary about Comparatives","Applied present_tense correctly","Read and understood a text about Comparatives","Practiced speaking about Comparatives"]', '[{"title":"Komparativ und Superlativ Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Comparatives core vocabulary','clothes key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Culture: Comparatives in German-Speaking Countries', 'Learn how Comparatives is approached in German culture.

تعلم كيف يتم التعامل مع Comparatives في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Kleidung und Mode (L-A2-02-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aaa', '00000000-0000-4000-a000-000039b547be', 'Test: Kleidung und Mode', 'Module test on clothing and fashion.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 40, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'der Mantel', 'المعطف', 'coat', 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aaa', 'das Hemd', 'القميص', 'shirt', 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aaa', 'die Hose', 'البنطلون', 'pants', 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aaa', 'die Jacke', 'الجاكيت', 'jacket', 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aaa', 'der Schuh', 'الحذاء', 'shoe', 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aaa', 'tragen', 'يرتدي', 'to wear', NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aaa', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aaa', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aaa', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aaa', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aaa', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aaa', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aaa', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aaa', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aaa', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aaa', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aaa', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aaa', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aaa', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aaa', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aaa', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aaa', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aaa', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aaa', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aaa', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aaa', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aaa', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aaa', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aaa', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aaa', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'What does "der Mantel" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065810aaa', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065810aaa', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065810aaa', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065810aaa', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-000065810aaa', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065810aaa', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065810aaa', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065810aaa', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065810aaa', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aaa', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Kleidung und Mode', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065810aaa', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Kleidung und Mode', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065810aaa', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Kleidung und Mode', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065810aaa', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065810aaa', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065810aaa', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aaa', 'Test: Kleidung und Mode — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065810aaa', 'Test: Kleidung und Mode — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Speaking: Test: Kleidung und Mode', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Writing: Test: Kleidung und Mode', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Mantel','das Hemd','die Hose']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aaa', 'Test: Kleidung und Mode — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aaa', 'Test: Kleidung und Mode — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aaa', 'Test: Kleidung und Mode — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Kleidung und Mode".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Homework: Test: Kleidung und Mode', 'Complete these tasks to reinforce "Test: Kleidung und Mode".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aaa', 'In this lesson you learned about Module Test. You practiced vocabulary related to clothes and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Kleidung und Mode Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','clothes key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 3: Stadt und Orientierung
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547bf', 'A2', 'Stadt und Orientierung', 'Navigate cities, ask for and give directions, and use public transportation.', '["Ask for and give directions","Name city landmarks and locations","Use prepositions of location","Use modal verbs for polite requests","Navigate public transportation"]', 3, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: In der Stadt (L-A2-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065809650', '00000000-0000-4000-a000-000039b547bf', 'In der Stadt', 'Learn city vocabulary: streets, buildings, and landmarks.', 'City Life', 'vocabulary', '["Understand and use vocabulary related to City Life","Apply present_tense correctly","Read and comprehend a text about City Life","Listen and understand a dialogue about City Life","Speak about City Life in simple sentences","Write a short text about City Life"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'die Stadt', 'المدينة', 'city', 'die', 'die Städte', 'noun', 'Berlin ist eine große Stadt.', 'Berlin is a big city.', 'A1', 1),
  ('00000000-0000-4000-a000-000065809650', 'die Straße', 'الشارع', 'street', 'die', 'die Straßen', 'noun', 'Die Straße ist lang.', 'The street is long.', 'A1', 2),
  ('00000000-0000-4000-a000-000065809650', 'der Platz', 'الساحة', 'square', 'der', 'die Plätze', 'noun', 'Der Platz ist schön.', 'The square is beautiful.', 'A1', 3),
  ('00000000-0000-4000-a000-000065809650', 'das Gebäude', 'المبنى', 'building', 'das', 'die Gebäude', 'noun', 'Das Gebäude ist alt.', 'The building is old.', 'A1', 4),
  ('00000000-0000-4000-a000-000065809650', 'die Ampel', 'إشارة المرور', 'traffic light', 'die', 'die Ampeln', 'noun', 'Die Ampel ist rot.', 'The traffic light is red.', 'A2', 5),
  ('00000000-0000-4000-a000-000065809650', 'die Kirche', 'الكنيسة', 'church', 'die', 'die Kirchen', 'noun', 'Die Kirche ist alt.', 'The church is old.', 'A1', 6),
  ('00000000-0000-4000-a000-000065809650', 'der Park', 'الحديقة', 'park', 'der', 'die Parks', 'noun', 'Der Park ist groß.', 'The park is big.', 'A1', 7),
  ('00000000-0000-4000-a000-000065809650', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065809650', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065809650', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065809650', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065809650', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065809650', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065809650', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065809650', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065809650', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065809650', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065809650', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065809650', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065809650', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065809650', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065809650', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065809650', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065809650', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065809650', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065809650', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065809650', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065809650', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065809650', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065809650', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'What does "die Stadt" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-000065809650', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-000065809650', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-000065809650', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-000065809650', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'What is the main topic of this lesson?', '["City Life","Sports","Music","Travel"]', 'City Life', 1, 1),
  ('00000000-0000-4000-a000-000065809650', 'true_false', 'This lesson teaches vocabulary about City Life.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-000065809650', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-000065809650', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-000065809650', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-000065809650', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065809650', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Orientierung', 'informal', false, 2),
  ('00000000-0000-4000-a000-000065809650', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065809650', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-000065809650', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-000065809650', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-000065809650', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065809650', 'In der Stadt — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-000065809650', 'In der Stadt — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Speaking: In der Stadt', 'Practice talking about City Life. Answer questions and have a simple conversation.', 'City Life', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Writing: In der Stadt', 'Write a short text about City Life. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Stadt','die Straße','der Platz']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065809650', 'In der Stadt — Roleplay', 'City Life', 'Student', 'Teacher', 'Practice conversation about City Life', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065809650', 'In der Stadt — Advanced Roleplay', 'City Life', 'Customer', 'Assistant', 'Extended conversation about City Life', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065809650', 'In der Stadt — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "In der Stadt".', 'Creative practice for City Life', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Homework: In der Stadt', 'Complete these tasks to reinforce "In der Stadt".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065809650', 'In this lesson you learned about City Life. You practiced vocabulary related to city and grammar structure present_tense.', '["Mastered vocabulary about City Life","Applied present_tense correctly","Read and understood a text about City Life","Practiced speaking about City Life"]', '[{"title":"In der Stadt Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['City Life core vocabulary','city key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Culture: City Life in German-Speaking Countries', 'Learn how City Life is approached in German culture.

تعلم كيف يتم التعامل مع City Life في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Wegbeschreibung (L-A2-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006580964f', '00000000-0000-4000-a000-000039b547bf', 'Wegbeschreibung', 'Learn how to ask for and give directions.', 'Directions', 'dialogue', '["Understand and use vocabulary related to Directions","Apply present_tense correctly","Read and comprehend a text about Directions","Listen and understand a dialogue about Directions","Speak about Directions in simple sentences","Write a short text about Directions"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'die Stadt', 'المدينة', 'city', 'die', 'die Städte', 'noun', 'Berlin ist eine große Stadt.', 'Berlin is a big city.', 'A1', 1),
  ('00000000-0000-4000-a000-00006580964f', 'die Straße', 'الشارع', 'street', 'die', 'die Straßen', 'noun', 'Die Straße ist lang.', 'The street is long.', 'A1', 2),
  ('00000000-0000-4000-a000-00006580964f', 'der Platz', 'الساحة', 'square', 'der', 'die Plätze', 'noun', 'Der Platz ist schön.', 'The square is beautiful.', 'A1', 3),
  ('00000000-0000-4000-a000-00006580964f', 'das Gebäude', 'المبنى', 'building', 'das', 'die Gebäude', 'noun', 'Das Gebäude ist alt.', 'The building is old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006580964f', 'die Ampel', 'إشارة المرور', 'traffic light', 'die', 'die Ampeln', 'noun', 'Die Ampel ist rot.', 'The traffic light is red.', 'A2', 5),
  ('00000000-0000-4000-a000-00006580964f', 'die Kirche', 'الكنيسة', 'church', 'die', 'die Kirchen', 'noun', 'Die Kirche ist alt.', 'The church is old.', 'A1', 6),
  ('00000000-0000-4000-a000-00006580964f', 'der Park', 'الحديقة', 'park', 'der', 'die Parks', 'noun', 'Der Park ist groß.', 'The park is big.', 'A1', 7),
  ('00000000-0000-4000-a000-00006580964f', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-00006580964f', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-00006580964f', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-00006580964f', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-00006580964f', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-00006580964f', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-00006580964f', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-00006580964f', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-00006580964f', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-00006580964f', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-00006580964f', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-00006580964f', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006580964f', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-00006580964f', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-00006580964f', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-00006580964f', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-00006580964f', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-00006580964f', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-00006580964f', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-00006580964f', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-00006580964f', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-00006580964f', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-00006580964f', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'What does "die Stadt" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006580964f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006580964f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006580964f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006580964f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'What is the main topic of this lesson?', '["Directions","Sports","Music","Travel"]', 'Directions', 1, 1),
  ('00000000-0000-4000-a000-00006580964f', 'true_false', 'This lesson teaches vocabulary about Directions.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006580964f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006580964f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006580964f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006580964f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006580964f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Orientierung', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006580964f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006580964f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006580964f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006580964f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006580964f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006580964f', 'Wegbeschreibung — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006580964f', 'Wegbeschreibung — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Speaking: Wegbeschreibung', 'Practice talking about Directions. Answer questions and have a simple conversation.', 'Directions', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Writing: Wegbeschreibung', 'Write a short text about Directions. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Stadt','die Straße','der Platz']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964f', 'Wegbeschreibung — Roleplay', 'Directions', 'Student', 'Teacher', 'Practice conversation about Directions', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964f', 'Wegbeschreibung — Advanced Roleplay', 'Directions', 'Customer', 'Assistant', 'Extended conversation about Directions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006580964f', 'Wegbeschreibung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wegbeschreibung".', 'Creative practice for Directions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Homework: Wegbeschreibung', 'Complete these tasks to reinforce "Wegbeschreibung".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006580964f', 'In this lesson you learned about Directions. You practiced vocabulary related to city and grammar structure present_tense.', '["Mastered vocabulary about Directions","Applied present_tense correctly","Read and understood a text about Directions","Practiced speaking about Directions"]', '[{"title":"Wegbeschreibung Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Directions core vocabulary','city key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Culture: Directions in German-Speaking Countries', 'Learn how Directions is approached in German culture.

تعلم كيف يتم التعامل مع Directions في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Öffentliche Verkehrsmittel (L-A2-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006580964e', '00000000-0000-4000-a000-000039b547bf', 'Öffentliche Verkehrsmittel', 'Learn how to use buses, trains, and trams.', 'Public Transport', 'vocabulary', '["Understand and use vocabulary related to Public Transport","Apply present_tense correctly","Read and comprehend a text about Public Transport","Listen and understand a dialogue about Public Transport","Speak about Public Transport in simple sentences","Write a short text about Public Transport"]', 45, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'die Stadt', 'المدينة', 'city', 'die', 'die Städte', 'noun', 'Berlin ist eine große Stadt.', 'Berlin is a big city.', 'A1', 1),
  ('00000000-0000-4000-a000-00006580964e', 'die Straße', 'الشارع', 'street', 'die', 'die Straßen', 'noun', 'Die Straße ist lang.', 'The street is long.', 'A1', 2),
  ('00000000-0000-4000-a000-00006580964e', 'der Platz', 'الساحة', 'square', 'der', 'die Plätze', 'noun', 'Der Platz ist schön.', 'The square is beautiful.', 'A1', 3),
  ('00000000-0000-4000-a000-00006580964e', 'das Gebäude', 'المبنى', 'building', 'das', 'die Gebäude', 'noun', 'Das Gebäude ist alt.', 'The building is old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006580964e', 'die Ampel', 'إشارة المرور', 'traffic light', 'die', 'die Ampeln', 'noun', 'Die Ampel ist rot.', 'The traffic light is red.', 'A2', 5),
  ('00000000-0000-4000-a000-00006580964e', 'die Kirche', 'الكنيسة', 'church', 'die', 'die Kirchen', 'noun', 'Die Kirche ist alt.', 'The church is old.', 'A1', 6),
  ('00000000-0000-4000-a000-00006580964e', 'der Park', 'الحديقة', 'park', 'der', 'die Parks', 'noun', 'Der Park ist groß.', 'The park is big.', 'A1', 7),
  ('00000000-0000-4000-a000-00006580964e', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-00006580964e', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-00006580964e', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-00006580964e', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-00006580964e', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-00006580964e', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-00006580964e', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-00006580964e', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-00006580964e', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-00006580964e', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-00006580964e', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-00006580964e', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006580964e', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-00006580964e', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-00006580964e', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-00006580964e', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-00006580964e', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-00006580964e', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-00006580964e', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-00006580964e', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-00006580964e', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-00006580964e', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-00006580964e', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'What does "die Stadt" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006580964e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006580964e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006580964e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006580964e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'What is the main topic of this lesson?', '["Public Transport","Sports","Music","Travel"]', 'Public Transport', 1, 1),
  ('00000000-0000-4000-a000-00006580964e', 'true_false', 'This lesson teaches vocabulary about Public Transport.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006580964e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006580964e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006580964e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006580964e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006580964e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Orientierung', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006580964e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006580964e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006580964e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006580964e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006580964e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006580964e', 'Öffentliche Verkehrsmittel — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006580964e', 'Öffentliche Verkehrsmittel — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Speaking: Öffentliche Verkehrsmittel', 'Practice talking about Public Transport. Answer questions and have a simple conversation.', 'Public Transport', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Writing: Öffentliche Verkehrsmittel', 'Write a short text about Public Transport. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Stadt','die Straße','der Platz']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964e', 'Öffentliche Verkehrsmittel — Roleplay', 'Public Transport', 'Student', 'Teacher', 'Practice conversation about Public Transport', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964e', 'Öffentliche Verkehrsmittel — Advanced Roleplay', 'Public Transport', 'Customer', 'Assistant', 'Extended conversation about Public Transport', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006580964e', 'Öffentliche Verkehrsmittel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Öffentliche Verkehrsmittel".', 'Creative practice for Public Transport', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Homework: Öffentliche Verkehrsmittel', 'Complete these tasks to reinforce "Öffentliche Verkehrsmittel".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006580964e', 'In this lesson you learned about Public Transport. You practiced vocabulary related to city and grammar structure present_tense.', '["Mastered vocabulary about Public Transport","Applied present_tense correctly","Read and understood a text about Public Transport","Practiced speaking about Public Transport"]', '[{"title":"Öffentliche Verkehrsmittel Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Public Transport core vocabulary','city key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Culture: Public Transport in German-Speaking Countries', 'Learn how Public Transport is approached in German culture.

تعلم كيف يتم التعامل مع Public Transport في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Am Bahnhof und Flughafen (L-A2-03-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006580964d', '00000000-0000-4000-a000-000039b547bf', 'Am Bahnhof und Flughafen', 'Practice buying tickets and navigating transport hubs.', 'Train Stations & Airports', 'dialogue', '["Understand and use vocabulary related to Train Stations & Airports","Apply present_tense correctly","Read and comprehend a text about Train Stations & Airports","Listen and understand a dialogue about Train Stations & Airports","Speak about Train Stations & Airports in simple sentences","Write a short text about Train Stations & Airports"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-00006580964d', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-00006580964d', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-00006580964d', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-00006580964d', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-00006580964d', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-00006580964d', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-00006580964d', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-00006580964d', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-00006580964d', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-00006580964d', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-00006580964d', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-00006580964d', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-00006580964d', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-00006580964d', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-00006580964d', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-00006580964d', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 17),
  ('00000000-0000-4000-a000-00006580964d', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 18),
  ('00000000-0000-4000-a000-00006580964d', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 19),
  ('00000000-0000-4000-a000-00006580964d', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 20),
  ('00000000-0000-4000-a000-00006580964d', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 21),
  ('00000000-0000-4000-a000-00006580964d', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 22),
  ('00000000-0000-4000-a000-00006580964d', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 23),
  ('00000000-0000-4000-a000-00006580964d', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 24),
  ('00000000-0000-4000-a000-00006580964d', 'das Krankenhaus', 'المستشفى', 'hospital', 'das', 'die Krankenhäuser', 'noun', 'Das Krankenhaus ist neu.', 'The hospital is new.', 'A1', 25),
  ('00000000-0000-4000-a000-00006580964d', 'die Medizin', 'الدواء', 'medicine', 'die', NULL, 'noun', 'Die Medizin hilft gegen Schmerzen.', 'The medicine helps against pain.', 'A2', 26),
  ('00000000-0000-4000-a000-00006580964d', 'gesund', 'صحي', 'healthy', NULL, NULL, 'adjective', 'Sport ist gesund.', 'Sports are healthy.', 'A1', 27),
  ('00000000-0000-4000-a000-00006580964d', 'krank', 'مريض', 'sick', NULL, NULL, 'adjective', 'Ich bin krank.', 'I am sick.', 'A1', 28),
  ('00000000-0000-4000-a000-00006580964d', 'die Apotheke', 'الصيدلية', 'pharmacy', 'die', 'die Apotheken', 'noun', 'Die Apotheke hat geöffnet.', 'The pharmacy is open.', 'A2', 29),
  ('00000000-0000-4000-a000-00006580964d', 'die Versicherung', 'التأمين', 'insurance', 'die', 'die Versicherungen', 'noun', 'Ich habe eine Krankenversicherung.', 'I have health insurance.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006580964d', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006580964d', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006580964d', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006580964d', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'What is the main topic of this lesson?', '["Train Stations & Airports","Sports","Music","Travel"]', 'Train Stations & Airports', 1, 1),
  ('00000000-0000-4000-a000-00006580964d', 'true_false', 'This lesson teaches vocabulary about Train Stations & Airports.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006580964d', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006580964d', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006580964d', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006580964d', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006580964d', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Orientierung', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006580964d', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006580964d', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006580964d', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006580964d', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006580964d', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006580964d', 'Am Bahnhof und Flughafen — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006580964d', 'Am Bahnhof und Flughafen — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

[Mitarbeiter]: Einfach oder hin und zurück?

[Kunde]: Hin und zurück, bitte. Zweite Klasse.

[Mitarbeiter]: Das macht 98 Euro. Mit BahnCard 25 bekommen Sie 25 Prozent Rabatt.

[Kunde]: Ich habe eine BahnCard. Hier ist sie.

[Mitarbeiter]: Dann kostet es 73,50 Euro. Der Zug fährt um 10 Uhr ab.', '[Kunde]: Good day! I would like to buy a ticket to Munich.

[Mitarbeiter]: One way or round trip?

[Kunde]: Round trip, please. Second class.

[Mitarbeiter]: That comes to 98 euros. With BahnCard 25 you get 25 percent discount.

[Kunde]: I have a BahnCard. Here it is.

[Mitarbeiter]: Then it costs 73.50 euros. The train departs at 10 o''clock.', '[Kunde]: نهارك سعيد! أريد شراء تذكرة إلى ميونخ.

[Mitarbeiter]: ذهاب أم ذهاب وعودة؟

[Kunde]: ذهاب وعودة من فضلك. الدرجة الثانية.

[Mitarbeiter]: المجموع 98 يورو. مع بطاقة السكة الحديد 25 تحصلون على خصم 25 بالمئة.

[Kunde]: لدي بطاقة السكة الحديد. ها هي.

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Speaking: Am Bahnhof und Flughafen', 'Practice talking about Train Stations & Airports. Answer questions and have a simple conversation.', 'Train Stations & Airports', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Writing: Am Bahnhof und Flughafen', 'Write a short text about Train Stations & Airports. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964d', 'Am Bahnhof und Flughafen — Roleplay', 'Train Stations & Airports', 'Student', 'Teacher', 'Practice conversation about Train Stations & Airports', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964d', 'Am Bahnhof und Flughafen — Advanced Roleplay', 'Train Stations & Airports', 'Customer', 'Assistant', 'Extended conversation about Train Stations & Airports', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006580964d', 'Am Bahnhof und Flughafen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Am Bahnhof und Flughafen".', 'Creative practice for Train Stations & Airports', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Homework: Am Bahnhof und Flughafen', 'Complete these tasks to reinforce "Am Bahnhof und Flughafen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006580964d', 'In this lesson you learned about Train Stations & Airports. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Train Stations & Airports","Applied present_tense correctly","Read and understood a text about Train Stations & Airports","Practiced speaking about Train Stations & Airports"]', '[{"title":"Am Bahnhof und Flughafen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Train Stations & Airports core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Culture: Train Stations & Airports in German-Speaking Countries', 'Learn how Train Stations & Airports is approached in German culture.

تعلم كيف يتم التعامل مع Train Stations & Airports في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Meine Stadt beschreiben (L-A2-03-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006580964c', '00000000-0000-4000-a000-000039b547bf', 'Meine Stadt beschreiben', 'Describe your city or favorite places.', 'Describing Cities', 'speaking', '["Understand and use vocabulary related to Describing Cities","Apply present_tense correctly","Read and comprehend a text about Describing Cities","Listen and understand a dialogue about Describing Cities","Speak about Describing Cities in simple sentences","Write a short text about Describing Cities"]', 40, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'die Stadt', 'المدينة', 'city', 'die', 'die Städte', 'noun', 'Berlin ist eine große Stadt.', 'Berlin is a big city.', 'A1', 1),
  ('00000000-0000-4000-a000-00006580964c', 'die Straße', 'الشارع', 'street', 'die', 'die Straßen', 'noun', 'Die Straße ist lang.', 'The street is long.', 'A1', 2),
  ('00000000-0000-4000-a000-00006580964c', 'der Platz', 'الساحة', 'square', 'der', 'die Plätze', 'noun', 'Der Platz ist schön.', 'The square is beautiful.', 'A1', 3),
  ('00000000-0000-4000-a000-00006580964c', 'das Gebäude', 'المبنى', 'building', 'das', 'die Gebäude', 'noun', 'Das Gebäude ist alt.', 'The building is old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006580964c', 'die Ampel', 'إشارة المرور', 'traffic light', 'die', 'die Ampeln', 'noun', 'Die Ampel ist rot.', 'The traffic light is red.', 'A2', 5),
  ('00000000-0000-4000-a000-00006580964c', 'die Kirche', 'الكنيسة', 'church', 'die', 'die Kirchen', 'noun', 'Die Kirche ist alt.', 'The church is old.', 'A1', 6),
  ('00000000-0000-4000-a000-00006580964c', 'der Park', 'الحديقة', 'park', 'der', 'die Parks', 'noun', 'Der Park ist groß.', 'The park is big.', 'A1', 7),
  ('00000000-0000-4000-a000-00006580964c', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-00006580964c', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-00006580964c', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-00006580964c', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-00006580964c', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-00006580964c', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-00006580964c', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-00006580964c', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-00006580964c', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-00006580964c', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-00006580964c', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-00006580964c', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006580964c', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-00006580964c', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-00006580964c', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-00006580964c', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-00006580964c', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-00006580964c', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-00006580964c', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-00006580964c', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-00006580964c', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-00006580964c', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-00006580964c', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'What does "die Stadt" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006580964c', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006580964c', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006580964c', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006580964c', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'What is the main topic of this lesson?', '["Describing Cities","Sports","Music","Travel"]', 'Describing Cities', 1, 1),
  ('00000000-0000-4000-a000-00006580964c', 'true_false', 'This lesson teaches vocabulary about Describing Cities.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006580964c', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006580964c', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006580964c', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006580964c', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006580964c', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Orientierung', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006580964c', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006580964c', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006580964c', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006580964c', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006580964c', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006580964c', 'Meine Stadt beschreiben — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006580964c', 'Meine Stadt beschreiben — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Speaking: Meine Stadt beschreiben', 'Practice talking about Describing Cities. Answer questions and have a simple conversation.', 'Describing Cities', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Writing: Meine Stadt beschreiben', 'Write a short text about Describing Cities. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Stadt','die Straße','der Platz']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964c', 'Meine Stadt beschreiben — Roleplay', 'Describing Cities', 'Student', 'Teacher', 'Practice conversation about Describing Cities', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964c', 'Meine Stadt beschreiben — Advanced Roleplay', 'Describing Cities', 'Customer', 'Assistant', 'Extended conversation about Describing Cities', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006580964c', 'Meine Stadt beschreiben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Stadt beschreiben".', 'Creative practice for Describing Cities', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Homework: Meine Stadt beschreiben', 'Complete these tasks to reinforce "Meine Stadt beschreiben".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006580964c', 'In this lesson you learned about Describing Cities. You practiced vocabulary related to city and grammar structure present_tense.', '["Mastered vocabulary about Describing Cities","Applied present_tense correctly","Read and understood a text about Describing Cities","Practiced speaking about Describing Cities"]', '[{"title":"Meine Stadt beschreiben Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Describing Cities core vocabulary','city key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Culture: Describing Cities in German-Speaking Countries', 'Learn how Describing Cities is approached in German culture.

تعلم كيف يتم التعامل مع Describing Cities في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Stadt und Orientierung (L-A2-03-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006580964b', '00000000-0000-4000-a000-000039b547bf', 'Test: Stadt und Orientierung', 'Module test on city and orientation.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 40, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'die Stadt', 'المدينة', 'city', 'die', 'die Städte', 'noun', 'Berlin ist eine große Stadt.', 'Berlin is a big city.', 'A1', 1),
  ('00000000-0000-4000-a000-00006580964b', 'die Straße', 'الشارع', 'street', 'die', 'die Straßen', 'noun', 'Die Straße ist lang.', 'The street is long.', 'A1', 2),
  ('00000000-0000-4000-a000-00006580964b', 'der Platz', 'الساحة', 'square', 'der', 'die Plätze', 'noun', 'Der Platz ist schön.', 'The square is beautiful.', 'A1', 3),
  ('00000000-0000-4000-a000-00006580964b', 'das Gebäude', 'المبنى', 'building', 'das', 'die Gebäude', 'noun', 'Das Gebäude ist alt.', 'The building is old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006580964b', 'die Ampel', 'إشارة المرور', 'traffic light', 'die', 'die Ampeln', 'noun', 'Die Ampel ist rot.', 'The traffic light is red.', 'A2', 5),
  ('00000000-0000-4000-a000-00006580964b', 'die Kirche', 'الكنيسة', 'church', 'die', 'die Kirchen', 'noun', 'Die Kirche ist alt.', 'The church is old.', 'A1', 6),
  ('00000000-0000-4000-a000-00006580964b', 'der Park', 'الحديقة', 'park', 'der', 'die Parks', 'noun', 'Der Park ist groß.', 'The park is big.', 'A1', 7),
  ('00000000-0000-4000-a000-00006580964b', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-00006580964b', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-00006580964b', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-00006580964b', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-00006580964b', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-00006580964b', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-00006580964b', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-00006580964b', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-00006580964b', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-00006580964b', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-00006580964b', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-00006580964b', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006580964b', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-00006580964b', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-00006580964b', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-00006580964b', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-00006580964b', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-00006580964b', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-00006580964b', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-00006580964b', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-00006580964b', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-00006580964b', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-00006580964b', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'What does "die Stadt" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-00006580964b', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-00006580964b', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-00006580964b', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-00006580964b', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-00006580964b', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-00006580964b', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-00006580964b', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-00006580964b', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-00006580964b', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006580964b', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Stadt und Orientierung', 'informal', false, 2),
  ('00000000-0000-4000-a000-00006580964b', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006580964b', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-00006580964b', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-00006580964b', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-00006580964b', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006580964b', 'Test: Stadt und Orientierung — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-00006580964b', 'Test: Stadt und Orientierung — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Speaking: Test: Stadt und Orientierung', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Writing: Test: Stadt und Orientierung', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Stadt','die Straße','der Platz']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964b', 'Test: Stadt und Orientierung — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964b', 'Test: Stadt und Orientierung — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006580964b', 'Test: Stadt und Orientierung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Stadt und Orientierung".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Homework: Test: Stadt und Orientierung', 'Complete these tasks to reinforce "Test: Stadt und Orientierung".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006580964b', 'In this lesson you learned about Module Test. You practiced vocabulary related to city and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Stadt und Orientierung Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','city key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 4: Gesundheit und Körper
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547c0', 'A2', 'Gesundheit und Körper', 'Talk about health, body parts, and visit the doctor.', '["Name body parts","Describe symptoms to a doctor","Make a doctor's appointment","Use imperative mood for instructions","Talk about health and fitness"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Der Körper (L-A2-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021f1', '00000000-0000-4000-a000-000039b547c0', 'Der Körper', 'Learn body part vocabulary.', 'Body Parts', 'vocabulary', '["Understand and use vocabulary related to Body Parts","Apply present_tense correctly","Read and comprehend a text about Body Parts","Listen and understand a dialogue about Body Parts","Speak about Body Parts in simple sentences","Write a short text about Body Parts"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'der Kopf', 'الرأس', 'head', 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021f1', 'das Auge', 'العين', 'eye', 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021f1', 'die Hand', 'اليد', 'hand', 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021f1', 'das Bein', 'الساق', 'leg', 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021f1', 'das Herz', 'القلب', 'heart', 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021f1', 'der Schmerz', 'الألم', 'pain', 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021f1', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021f1', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021f1', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021f1', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021f1', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021f1', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021f1', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021f1', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021f1', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021f1', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021f1', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021f1', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021f1', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021f1', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021f1', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021f1', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021f1', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021f1', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021f1', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021f1', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021f1', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021f1', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021f1', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021f1', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'What does "der Kopf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000658021f1', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000658021f1', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000658021f1', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000658021f1', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'What is the main topic of this lesson?', '["Body Parts","Sports","Music","Travel"]', 'Body Parts', 1, 1),
  ('00000000-0000-4000-a000-0000658021f1', 'true_false', 'This lesson teaches vocabulary about Body Parts.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000658021f1', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000658021f1', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000658021f1', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000658021f1', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021f1', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und Körper', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000658021f1', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesundheit und Körper', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000658021f1', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesundheit und Körper', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000658021f1', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000658021f1', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000658021f1', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021f1', 'Der Körper — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000658021f1', 'Der Körper — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Speaking: Der Körper', 'Practice talking about Body Parts. Answer questions and have a simple conversation.', 'Body Parts', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Writing: Der Körper', 'Write a short text about Body Parts. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Kopf','das Auge','die Hand']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021f1', 'Der Körper — Roleplay', 'Body Parts', 'Student', 'Teacher', 'Practice conversation about Body Parts', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021f1', 'Der Körper — Advanced Roleplay', 'Body Parts', 'Customer', 'Assistant', 'Extended conversation about Body Parts', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021f1', 'Der Körper — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Der Körper".', 'Creative practice for Body Parts', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Homework: Der Körper', 'Complete these tasks to reinforce "Der Körper".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021f1', 'In this lesson you learned about Body Parts. You practiced vocabulary related to body and grammar structure present_tense.', '["Mastered vocabulary about Body Parts","Applied present_tense correctly","Read and understood a text about Body Parts","Practiced speaking about Body Parts"]', '[{"title":"Der Körper Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Body Parts core vocabulary','body key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Culture: Body Parts in German-Speaking Countries', 'Learn how Body Parts is approached in German culture.

تعلم كيف يتم التعامل مع Body Parts في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Beim Arzt (L-A2-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021f0', '00000000-0000-4000-a000-000039b547c0', 'Beim Arzt', 'Practice describing symptoms and visiting the doctor.', 'At the Doctor', 'dialogue', '["Understand and use vocabulary related to At the Doctor","Apply present_tense correctly","Read and comprehend a text about At the Doctor","Listen and understand a dialogue about At the Doctor","Speak about At the Doctor in simple sentences","Write a short text about At the Doctor"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'der Kopf', 'الرأس', 'head', 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021f0', 'das Auge', 'العين', 'eye', 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021f0', 'die Hand', 'اليد', 'hand', 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021f0', 'das Bein', 'الساق', 'leg', 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021f0', 'das Herz', 'القلب', 'heart', 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021f0', 'der Schmerz', 'الألم', 'pain', 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021f0', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021f0', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021f0', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021f0', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021f0', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021f0', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021f0', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021f0', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021f0', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021f0', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021f0', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021f0', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021f0', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021f0', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021f0', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021f0', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021f0', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021f0', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021f0', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021f0', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021f0', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021f0', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021f0', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021f0', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'What does "der Kopf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000658021f0', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000658021f0', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000658021f0', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000658021f0', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'What is the main topic of this lesson?', '["At the Doctor","Sports","Music","Travel"]', 'At the Doctor', 1, 1),
  ('00000000-0000-4000-a000-0000658021f0', 'true_false', 'This lesson teaches vocabulary about At the Doctor.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000658021f0', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000658021f0', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000658021f0', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000658021f0', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021f0', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und Körper', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000658021f0', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesundheit und Körper', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000658021f0', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesundheit und Körper', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000658021f0', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000658021f0', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000658021f0', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021f0', 'Beim Arzt — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000658021f0', 'Beim Arzt — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Speaking: Beim Arzt', 'Practice talking about At the Doctor. Answer questions and have a simple conversation.', 'At the Doctor', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Writing: Beim Arzt', 'Write a short text about At the Doctor. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Kopf','das Auge','die Hand']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021f0', 'Beim Arzt — Roleplay', 'At the Doctor', 'Student', 'Teacher', 'Practice conversation about At the Doctor', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021f0', 'Beim Arzt — Advanced Roleplay', 'At the Doctor', 'Customer', 'Assistant', 'Extended conversation about At the Doctor', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021f0', 'Beim Arzt — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beim Arzt".', 'Creative practice for At the Doctor', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Homework: Beim Arzt', 'Complete these tasks to reinforce "Beim Arzt".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021f0', 'In this lesson you learned about At the Doctor. You practiced vocabulary related to body and grammar structure present_tense.', '["Mastered vocabulary about At the Doctor","Applied present_tense correctly","Read and understood a text about At the Doctor","Practiced speaking about At the Doctor"]', '[{"title":"Beim Arzt Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['At the Doctor core vocabulary','body key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Culture: At the Doctor in German-Speaking Countries', 'Learn how At the Doctor is approached in German culture.

تعلم كيف يتم التعامل مع At the Doctor في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Gesundheit und Fitness (L-A2-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021ef', '00000000-0000-4000-a000-000039b547c0', 'Gesundheit und Fitness', 'Learn vocabulary about health, exercise, and well-being.', 'Health & Fitness', 'vocabulary', '["Understand and use vocabulary related to Health & Fitness","Apply present_tense correctly","Read and comprehend a text about Health & Fitness","Listen and understand a dialogue about Health & Fitness","Speak about Health & Fitness in simple sentences","Write a short text about Health & Fitness"]', 45, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'der Kopf', 'الرأس', 'head', 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021ef', 'das Auge', 'العين', 'eye', 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021ef', 'die Hand', 'اليد', 'hand', 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021ef', 'das Bein', 'الساق', 'leg', 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021ef', 'das Herz', 'القلب', 'heart', 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021ef', 'der Schmerz', 'الألم', 'pain', 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021ef', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021ef', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021ef', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021ef', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021ef', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021ef', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021ef', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021ef', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021ef', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021ef', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021ef', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021ef', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021ef', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021ef', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021ef', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021ef', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021ef', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021ef', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021ef', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021ef', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021ef', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021ef', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021ef', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021ef', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'What does "der Kopf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000658021ef', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000658021ef', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000658021ef', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000658021ef', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'What is the main topic of this lesson?', '["Health & Fitness","Sports","Music","Travel"]', 'Health & Fitness', 1, 1),
  ('00000000-0000-4000-a000-0000658021ef', 'true_false', 'This lesson teaches vocabulary about Health & Fitness.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000658021ef', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000658021ef', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000658021ef', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000658021ef', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021ef', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und Körper', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000658021ef', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesundheit und Körper', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000658021ef', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesundheit und Körper', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000658021ef', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000658021ef', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000658021ef', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021ef', 'Gesundheit und Fitness — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000658021ef', 'Gesundheit und Fitness — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Speaking: Gesundheit und Fitness', 'Practice talking about Health & Fitness. Answer questions and have a simple conversation.', 'Health & Fitness', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Writing: Gesundheit und Fitness', 'Write a short text about Health & Fitness. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Kopf','das Auge','die Hand']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ef', 'Gesundheit und Fitness — Roleplay', 'Health & Fitness', 'Student', 'Teacher', 'Practice conversation about Health & Fitness', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ef', 'Gesundheit und Fitness — Advanced Roleplay', 'Health & Fitness', 'Customer', 'Assistant', 'Extended conversation about Health & Fitness', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021ef', 'Gesundheit und Fitness — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesundheit und Fitness".', 'Creative practice for Health & Fitness', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Homework: Gesundheit und Fitness', 'Complete these tasks to reinforce "Gesundheit und Fitness".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021ef', 'In this lesson you learned about Health & Fitness. You practiced vocabulary related to body and grammar structure present_tense.', '["Mastered vocabulary about Health & Fitness","Applied present_tense correctly","Read and understood a text about Health & Fitness","Practiced speaking about Health & Fitness"]', '[{"title":"Gesundheit und Fitness Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Health & Fitness core vocabulary','body key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Culture: Health & Fitness in German-Speaking Countries', 'Learn how Health & Fitness is approached in German culture.

تعلم كيف يتم التعامل مع Health & Fitness في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: In der Apotheke (L-A2-04-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021ee', '00000000-0000-4000-a000-000039b547c0', 'In der Apotheke', 'Learn how to buy medicine and ask for advice at the pharmacy.', 'Pharmacy', 'dialogue', '["Understand and use vocabulary related to Pharmacy","Apply present_tense correctly","Read and comprehend a text about Pharmacy","Listen and understand a dialogue about Pharmacy","Speak about Pharmacy in simple sentences","Write a short text about Pharmacy"]', 40, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'der Kopf', 'الرأس', 'head', 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021ee', 'das Auge', 'العين', 'eye', 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021ee', 'die Hand', 'اليد', 'hand', 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021ee', 'das Bein', 'الساق', 'leg', 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021ee', 'das Herz', 'القلب', 'heart', 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021ee', 'der Schmerz', 'الألم', 'pain', 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021ee', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021ee', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021ee', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021ee', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021ee', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021ee', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021ee', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021ee', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021ee', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021ee', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021ee', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021ee', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021ee', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021ee', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021ee', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021ee', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021ee', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021ee', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021ee', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021ee', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021ee', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021ee', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021ee', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021ee', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'What does "der Kopf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000658021ee', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000658021ee', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000658021ee', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000658021ee', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'What is the main topic of this lesson?', '["Pharmacy","Sports","Music","Travel"]', 'Pharmacy', 1, 1),
  ('00000000-0000-4000-a000-0000658021ee', 'true_false', 'This lesson teaches vocabulary about Pharmacy.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000658021ee', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000658021ee', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000658021ee', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000658021ee', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021ee', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und Körper', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000658021ee', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesundheit und Körper', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000658021ee', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesundheit und Körper', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000658021ee', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000658021ee', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000658021ee', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021ee', 'In der Apotheke — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000658021ee', 'In der Apotheke — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Speaking: In der Apotheke', 'Practice talking about Pharmacy. Answer questions and have a simple conversation.', 'Pharmacy', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Writing: In der Apotheke', 'Write a short text about Pharmacy. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Kopf','das Auge','die Hand']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ee', 'In der Apotheke — Roleplay', 'Pharmacy', 'Student', 'Teacher', 'Practice conversation about Pharmacy', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ee', 'In der Apotheke — Advanced Roleplay', 'Pharmacy', 'Customer', 'Assistant', 'Extended conversation about Pharmacy', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021ee', 'In der Apotheke — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "In der Apotheke".', 'Creative practice for Pharmacy', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Homework: In der Apotheke', 'Complete these tasks to reinforce "In der Apotheke".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021ee', 'In this lesson you learned about Pharmacy. You practiced vocabulary related to body and grammar structure present_tense.', '["Mastered vocabulary about Pharmacy","Applied present_tense correctly","Read and understood a text about Pharmacy","Practiced speaking about Pharmacy"]', '[{"title":"In der Apotheke Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Pharmacy core vocabulary','body key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Culture: Pharmacy in German-Speaking Countries', 'Learn how Pharmacy is approached in German culture.

تعلم كيف يتم التعامل مع Pharmacy في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Der Imperativ (L-A2-04-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021ed', '00000000-0000-4000-a000-000039b547c0', 'Der Imperativ', 'Learn the imperative mood for commands and requests.', 'Imperative', 'grammar', '["Understand and use vocabulary related to Imperative","Apply present_tense correctly","Read and comprehend a text about Imperative","Listen and understand a dialogue about Imperative","Speak about Imperative in simple sentences","Write a short text about Imperative"]', 50, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'der Kopf', 'الرأس', 'head', 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021ed', 'das Auge', 'العين', 'eye', 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021ed', 'die Hand', 'اليد', 'hand', 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021ed', 'das Bein', 'الساق', 'leg', 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021ed', 'das Herz', 'القلب', 'heart', 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021ed', 'der Schmerz', 'الألم', 'pain', 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021ed', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021ed', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021ed', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021ed', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021ed', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021ed', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021ed', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021ed', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021ed', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021ed', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021ed', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021ed', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021ed', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021ed', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021ed', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021ed', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021ed', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021ed', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021ed', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021ed', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021ed', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021ed', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021ed', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021ed', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'What does "der Kopf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000658021ed', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000658021ed', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000658021ed', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000658021ed', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'What is the main topic of this lesson?', '["Imperative","Sports","Music","Travel"]', 'Imperative', 1, 1),
  ('00000000-0000-4000-a000-0000658021ed', 'true_false', 'This lesson teaches vocabulary about Imperative.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000658021ed', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000658021ed', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000658021ed', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000658021ed', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021ed', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und Körper', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000658021ed', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesundheit und Körper', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000658021ed', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesundheit und Körper', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000658021ed', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000658021ed', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000658021ed', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021ed', 'Der Imperativ — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000658021ed', 'Der Imperativ — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Speaking: Der Imperativ', 'Practice talking about Imperative. Answer questions and have a simple conversation.', 'Imperative', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Writing: Der Imperativ', 'Write a short text about Imperative. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Kopf','das Auge','die Hand']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ed', 'Der Imperativ — Roleplay', 'Imperative', 'Student', 'Teacher', 'Practice conversation about Imperative', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ed', 'Der Imperativ — Advanced Roleplay', 'Imperative', 'Customer', 'Assistant', 'Extended conversation about Imperative', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021ed', 'Der Imperativ — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Der Imperativ".', 'Creative practice for Imperative', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Homework: Der Imperativ', 'Complete these tasks to reinforce "Der Imperativ".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021ed', 'In this lesson you learned about Imperative. You practiced vocabulary related to body and grammar structure present_tense.', '["Mastered vocabulary about Imperative","Applied present_tense correctly","Read and understood a text about Imperative","Practiced speaking about Imperative"]', '[{"title":"Der Imperativ Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Imperative core vocabulary','body key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Culture: Imperative in German-Speaking Countries', 'Learn how Imperative is approached in German culture.

تعلم كيف يتم التعامل مع Imperative في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: Test: Gesundheit und Körper (L-A2-04-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021ec', '00000000-0000-4000-a000-000039b547c0', 'Test: Gesundheit und Körper', 'Module test on health and body.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 40, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'der Kopf', 'الرأس', 'head', 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021ec', 'das Auge', 'العين', 'eye', 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021ec', 'die Hand', 'اليد', 'hand', 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021ec', 'das Bein', 'الساق', 'leg', 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021ec', 'das Herz', 'القلب', 'heart', 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021ec', 'der Schmerz', 'الألم', 'pain', 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021ec', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021ec', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021ec', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021ec', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021ec', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021ec', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021ec', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021ec', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021ec', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021ec', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021ec', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021ec', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021ec', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021ec', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021ec', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021ec', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021ec', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021ec', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021ec', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021ec', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021ec', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021ec', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021ec', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021ec', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'What does "der Kopf" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000658021ec', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000658021ec', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000658021ec', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000658021ec', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-0000658021ec', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000658021ec', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000658021ec', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000658021ec', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000658021ec', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021ec', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Gesundheit und Körper', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000658021ec', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Gesundheit und Körper', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000658021ec', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Gesundheit und Körper', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000658021ec', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000658021ec', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000658021ec', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021ec', 'Test: Gesundheit und Körper — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000658021ec', 'Test: Gesundheit und Körper — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Speaking: Test: Gesundheit und Körper', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Writing: Test: Gesundheit und Körper', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Kopf','das Auge','die Hand']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ec', 'Test: Gesundheit und Körper — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ec', 'Test: Gesundheit und Körper — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021ec', 'Test: Gesundheit und Körper — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Gesundheit und Körper".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Homework: Test: Gesundheit und Körper', 'Complete these tasks to reinforce "Test: Gesundheit und Körper".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021ec', 'In this lesson you learned about Module Test. You practiced vocabulary related to body and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Gesundheit und Körper Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','body key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 5: Wetter, Natur und Jahreszeiten
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547c1', 'A2', 'Wetter, Natur und Jahreszeiten', 'Talk about weather, nature, and seasons.', '["Describe weather conditions","Name seasons and months","Use \"es gibt\" and \"es ist\" for weather","Use prepositions of time: im, am, um","Discuss climate and environment"]', 5, 4, true)
  on conflict (id) do nothing;

  -- Lesson 1: Das Wetter (L-A2-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657fad92', '00000000-0000-4000-a000-000039b547c1', 'Das Wetter', 'Learn weather vocabulary and expressions.', 'Weather', 'vocabulary', '["Understand and use vocabulary related to Weather","Apply present_tense correctly","Read and comprehend a text about Weather","Listen and understand a dialogue about Weather","Speak about Weather in simple sentences","Write a short text about Weather"]', 40, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'das Wetter', 'الطقس', 'weather', 'das', NULL, 'noun', 'Das Wetter ist schön.', 'The weather is nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657fad92', 'die Sonne', 'الشمس', 'sun', 'die', NULL, 'noun', 'Die Sonne scheint.', 'The sun is shining.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657fad92', 'der Regen', 'المطر', 'rain', 'der', NULL, 'noun', 'Es regnet.', 'It is raining.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657fad92', 'der Schnee', 'الثلج', 'snow', 'der', NULL, 'noun', 'Es schneit.', 'It is snowing.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657fad92', 'warm', 'دافئ', 'warm', NULL, NULL, 'adjective', 'Heute ist es warm.', 'Today it is warm.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657fad92', 'kalt', 'بارد', 'cold', NULL, NULL, 'adjective', 'Im Winter ist es kalt.', 'In winter it is cold.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657fad92', 'der Frühling', 'الربيع', 'spring', 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657fad92', 'der Winter', 'الشتاء', 'winter', 'der', NULL, 'noun', 'Im Winter schneit es.', 'In winter it snows.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657fad92', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657fad92', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657fad92', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657fad92', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657fad92', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657fad92', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657fad92', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657fad92', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657fad92', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657fad92', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657fad92', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657fad92', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657fad92', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657fad92', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657fad92', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657fad92', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657fad92', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657fad92', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657fad92', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657fad92', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657fad92', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657fad92', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'What does "das Wetter" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657fad92', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657fad92', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657fad92', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657fad92', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'What is the main topic of this lesson?', '["Weather","Sports","Music","Travel"]', 'Weather', 1, 1),
  ('00000000-0000-4000-a000-0000657fad92', 'true_false', 'This lesson teaches vocabulary about Weather.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657fad92', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657fad92', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657fad92', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657fad92', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657fad92', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wetter, Natur und Jahreszeiten', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657fad92', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wetter, Natur und Jahreszeiten', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657fad92', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wetter, Natur und Jahreszeiten', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657fad92', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657fad92', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657fad92', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657fad92', 'Das Wetter — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657fad92', 'Das Wetter — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wetter, Natur und Jahreszeiten');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Speaking: Das Wetter', 'Practice talking about Weather. Answer questions and have a simple conversation.', 'Weather', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Writing: Das Wetter', 'Write a short text about Weather. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Wetter','die Sonne','der Regen']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad92', 'Das Wetter — Roleplay', 'Weather', 'Student', 'Teacher', 'Practice conversation about Weather', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad92', 'Das Wetter — Advanced Roleplay', 'Weather', 'Customer', 'Assistant', 'Extended conversation about Weather', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657fad92', 'Das Wetter — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Wetter".', 'Creative practice for Weather', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Homework: Das Wetter', 'Complete these tasks to reinforce "Das Wetter".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657fad92', 'In this lesson you learned about Weather. You practiced vocabulary related to weather and grammar structure present_tense.', '["Mastered vocabulary about Weather","Applied present_tense correctly","Read and understood a text about Weather","Practiced speaking about Weather"]', '[{"title":"Das Wetter Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Weather core vocabulary','weather key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Culture: Weather in German-Speaking Countries', 'Learn how Weather is approached in German culture.

تعلم كيف يتم التعامل مع Weather في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Die Jahreszeiten (L-A2-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657fad91', '00000000-0000-4000-a000-000039b547c1', 'Die Jahreszeiten', 'Learn seasons, months, and seasonal activities.', 'Seasons', 'vocabulary', '["Understand and use vocabulary related to Seasons","Apply present_tense correctly","Read and comprehend a text about Seasons","Listen and understand a dialogue about Seasons","Speak about Seasons in simple sentences","Write a short text about Seasons"]', 40, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'das Wetter', 'الطقس', 'weather', 'das', NULL, 'noun', 'Das Wetter ist schön.', 'The weather is nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657fad91', 'die Sonne', 'الشمس', 'sun', 'die', NULL, 'noun', 'Die Sonne scheint.', 'The sun is shining.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657fad91', 'der Regen', 'المطر', 'rain', 'der', NULL, 'noun', 'Es regnet.', 'It is raining.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657fad91', 'der Schnee', 'الثلج', 'snow', 'der', NULL, 'noun', 'Es schneit.', 'It is snowing.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657fad91', 'warm', 'دافئ', 'warm', NULL, NULL, 'adjective', 'Heute ist es warm.', 'Today it is warm.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657fad91', 'kalt', 'بارد', 'cold', NULL, NULL, 'adjective', 'Im Winter ist es kalt.', 'In winter it is cold.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657fad91', 'der Frühling', 'الربيع', 'spring', 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657fad91', 'der Winter', 'الشتاء', 'winter', 'der', NULL, 'noun', 'Im Winter schneit es.', 'In winter it snows.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657fad91', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657fad91', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657fad91', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657fad91', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657fad91', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657fad91', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657fad91', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657fad91', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657fad91', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657fad91', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657fad91', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657fad91', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657fad91', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657fad91', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657fad91', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657fad91', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657fad91', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657fad91', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657fad91', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657fad91', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657fad91', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657fad91', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'What does "das Wetter" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657fad91', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657fad91', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657fad91', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657fad91', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'What is the main topic of this lesson?', '["Seasons","Sports","Music","Travel"]', 'Seasons', 1, 1),
  ('00000000-0000-4000-a000-0000657fad91', 'true_false', 'This lesson teaches vocabulary about Seasons.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657fad91', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657fad91', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657fad91', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657fad91', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657fad91', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wetter, Natur und Jahreszeiten', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657fad91', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wetter, Natur und Jahreszeiten', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657fad91', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wetter, Natur und Jahreszeiten', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657fad91', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657fad91', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657fad91', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657fad91', 'Die Jahreszeiten — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657fad91', 'Die Jahreszeiten — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wetter, Natur und Jahreszeiten');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Speaking: Die Jahreszeiten', 'Practice talking about Seasons. Answer questions and have a simple conversation.', 'Seasons', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Writing: Die Jahreszeiten', 'Write a short text about Seasons. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Wetter','die Sonne','der Regen']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad91', 'Die Jahreszeiten — Roleplay', 'Seasons', 'Student', 'Teacher', 'Practice conversation about Seasons', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad91', 'Die Jahreszeiten — Advanced Roleplay', 'Seasons', 'Customer', 'Assistant', 'Extended conversation about Seasons', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657fad91', 'Die Jahreszeiten — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Jahreszeiten".', 'Creative practice for Seasons', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Homework: Die Jahreszeiten', 'Complete these tasks to reinforce "Die Jahreszeiten".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657fad91', 'In this lesson you learned about Seasons. You practiced vocabulary related to weather and grammar structure present_tense.', '["Mastered vocabulary about Seasons","Applied present_tense correctly","Read and understood a text about Seasons","Practiced speaking about Seasons"]', '[{"title":"Die Jahreszeiten Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Seasons core vocabulary','weather key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Culture: Seasons in German-Speaking Countries', 'Learn how Seasons is approached in German culture.

تعلم كيف يتم التعامل مع Seasons في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Tiere und Natur (L-A2-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657fad90', '00000000-0000-4000-a000-000039b547c1', 'Tiere und Natur', 'Learn animal and nature vocabulary.', 'Animals & Nature', 'vocabulary', '["Understand and use vocabulary related to Animals & Nature","Apply present_tense correctly","Read and comprehend a text about Animals & Nature","Listen and understand a dialogue about Animals & Nature","Speak about Animals & Nature in simple sentences","Write a short text about Animals & Nature"]', 45, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'der Baum', 'الشجرة', 'tree', 'der', 'die Bäume', 'noun', 'Der Baum ist hoch.', 'The tree is tall.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657fad90', 'die Blume', 'الزهرة', 'flower', 'die', 'die Blumen', 'noun', 'Die Blume ist schön.', 'The flower is beautiful.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657fad90', 'der Fluss', 'النهر', 'river', 'der', 'die Flüsse', 'noun', 'Der Fluss fließt durch die Stadt.', 'The river flows through the city.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657fad90', 'der Berg', 'الجبل', 'mountain', 'der', 'die Berge', 'noun', 'Die Berge sind schön.', 'The mountains are beautiful.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657fad90', 'der Wald', 'الغابة', 'forest', 'der', 'die Wälder', 'noun', 'Der Wald ist ruhig.', 'The forest is quiet.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657fad90', 'das Meer', 'البحر', 'sea', 'das', 'die Meere', 'noun', 'Das Meer ist blau.', 'The sea is blue.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657fad90', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657fad90', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657fad90', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657fad90', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657fad90', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657fad90', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657fad90', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657fad90', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000657fad90', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657fad90', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000657fad90', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657fad90', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657fad90', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657fad90', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657fad90', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657fad90', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657fad90', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657fad90', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657fad90', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657fad90', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657fad90', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657fad90', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000657fad90', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657fad90', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'What does "der Baum" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657fad90', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657fad90', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657fad90', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657fad90', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'What is the main topic of this lesson?', '["Animals & Nature","Sports","Music","Travel"]', 'Animals & Nature', 1, 1),
  ('00000000-0000-4000-a000-0000657fad90', 'true_false', 'This lesson teaches vocabulary about Animals & Nature.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657fad90', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657fad90', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657fad90', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657fad90', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657fad90', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wetter, Natur und Jahreszeiten', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657fad90', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wetter, Natur und Jahreszeiten', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657fad90', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wetter, Natur und Jahreszeiten', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657fad90', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657fad90', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657fad90', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657fad90', 'Tiere und Natur — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657fad90', 'Tiere und Natur — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wetter, Natur und Jahreszeiten');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Speaking: Tiere und Natur', 'Practice talking about Animals & Nature. Answer questions and have a simple conversation.', 'Animals & Nature', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Baum','die Blume','der Fluss','der Berg','der Wald']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Writing: Tiere und Natur', 'Write a short text about Animals & Nature. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Baum','die Blume','der Fluss']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad90', 'Tiere und Natur — Roleplay', 'Animals & Nature', 'Student', 'Teacher', 'Practice conversation about Animals & Nature', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Baum','die Blume','der Fluss','der Berg','der Wald','das Meer','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad90', 'Tiere und Natur — Advanced Roleplay', 'Animals & Nature', 'Customer', 'Assistant', 'Extended conversation about Animals & Nature', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Baum','die Blume','der Fluss','der Berg','der Wald','das Meer','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657fad90', 'Tiere und Natur — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Tiere und Natur".', 'Creative practice for Animals & Nature', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Homework: Tiere und Natur', 'Complete these tasks to reinforce "Tiere und Natur".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657fad90', 'In this lesson you learned about Animals & Nature. You practiced vocabulary related to nature and grammar structure present_tense.', '["Mastered vocabulary about Animals & Nature","Applied present_tense correctly","Read and understood a text about Animals & Nature","Practiced speaking about Animals & Nature"]', '[{"title":"Tiere und Natur Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Animals & Nature core vocabulary','nature key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Culture: Animals & Nature in German-Speaking Countries', 'Learn how Animals & Nature is approached in German culture.

تعلم كيف يتم التعامل مع Animals & Nature في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Präpositionen: im, am, um (L-A2-05-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657fad8f', '00000000-0000-4000-a000-000039b547c1', 'Präpositionen: im, am, um', 'Learn time prepositions for seasons, days, and times.', 'Time Prepositions', 'grammar', '["Understand and use vocabulary related to Time Prepositions","Apply present_tense correctly","Read and comprehend a text about Time Prepositions","Listen and understand a dialogue about Time Prepositions","Speak about Time Prepositions in simple sentences","Write a short text about Time Prepositions"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'das Wetter', 'الطقس', 'weather', 'das', NULL, 'noun', 'Das Wetter ist schön.', 'The weather is nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657fad8f', 'die Sonne', 'الشمس', 'sun', 'die', NULL, 'noun', 'Die Sonne scheint.', 'The sun is shining.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Regen', 'المطر', 'rain', 'der', NULL, 'noun', 'Es regnet.', 'It is raining.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Schnee', 'الثلج', 'snow', 'der', NULL, 'noun', 'Es schneit.', 'It is snowing.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657fad8f', 'warm', 'دافئ', 'warm', NULL, NULL, 'adjective', 'Heute ist es warm.', 'Today it is warm.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657fad8f', 'kalt', 'بارد', 'cold', NULL, NULL, 'adjective', 'Im Winter ist es kalt.', 'In winter it is cold.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Frühling', 'الربيع', 'spring', 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Winter', 'الشتاء', 'winter', 'der', NULL, 'noun', 'Im Winter schneit es.', 'In winter it snows.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657fad8f', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657fad8f', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657fad8f', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657fad8f', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657fad8f', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657fad8f', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657fad8f', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657fad8f', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657fad8f', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657fad8f', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657fad8f', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657fad8f', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'What does "das Wetter" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657fad8f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657fad8f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657fad8f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657fad8f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'What is the main topic of this lesson?', '["Time Prepositions","Sports","Music","Travel"]', 'Time Prepositions', 1, 1),
  ('00000000-0000-4000-a000-0000657fad8f', 'true_false', 'This lesson teaches vocabulary about Time Prepositions.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657fad8f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657fad8f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657fad8f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657fad8f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657fad8f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wetter, Natur und Jahreszeiten', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657fad8f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wetter, Natur und Jahreszeiten', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657fad8f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wetter, Natur und Jahreszeiten', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657fad8f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657fad8f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657fad8f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Präpositionen: im, am, um — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Präpositionen: im, am, um — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wetter, Natur und Jahreszeiten');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Speaking: Präpositionen: im, am, um', 'Practice talking about Time Prepositions. Answer questions and have a simple conversation.', 'Time Prepositions', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Writing: Präpositionen: im, am, um', 'Write a short text about Time Prepositions. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Wetter','die Sonne','der Regen']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Präpositionen: im, am, um — Roleplay', 'Time Prepositions', 'Student', 'Teacher', 'Practice conversation about Time Prepositions', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Präpositionen: im, am, um — Advanced Roleplay', 'Time Prepositions', 'Customer', 'Assistant', 'Extended conversation about Time Prepositions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Präpositionen: im, am, um — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präpositionen: im, am, um".', 'Creative practice for Time Prepositions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Homework: Präpositionen: im, am, um', 'Complete these tasks to reinforce "Präpositionen: im, am, um".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657fad8f', 'In this lesson you learned about Time Prepositions. You practiced vocabulary related to weather and grammar structure present_tense.', '["Mastered vocabulary about Time Prepositions","Applied present_tense correctly","Read and understood a text about Time Prepositions","Practiced speaking about Time Prepositions"]', '[{"title":"Präpositionen: im, am, um Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Time Prepositions core vocabulary','weather key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Culture: Time Prepositions in German-Speaking Countries', 'Learn how Time Prepositions is approached in German culture.

تعلم كيف يتم التعامل مع Time Prepositions في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Test: Wetter und Natur (L-A2-05-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657fad8e', '00000000-0000-4000-a000-000039b547c1', 'Test: Wetter und Natur', 'Module test on weather and nature.', 'Module Test', 'test', '["Understand and use vocabulary related to Module Test","Apply present_tense correctly","Read and comprehend a text about Module Test","Listen and understand a dialogue about Module Test","Speak about Module Test in simple sentences","Write a short text about Module Test"]', 35, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'das Wetter', 'الطقس', 'weather', 'das', NULL, 'noun', 'Das Wetter ist schön.', 'The weather is nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657fad8e', 'die Sonne', 'الشمس', 'sun', 'die', NULL, 'noun', 'Die Sonne scheint.', 'The sun is shining.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Regen', 'المطر', 'rain', 'der', NULL, 'noun', 'Es regnet.', 'It is raining.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Schnee', 'الثلج', 'snow', 'der', NULL, 'noun', 'Es schneit.', 'It is snowing.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657fad8e', 'warm', 'دافئ', 'warm', NULL, NULL, 'adjective', 'Heute ist es warm.', 'Today it is warm.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657fad8e', 'kalt', 'بارد', 'cold', NULL, NULL, 'adjective', 'Im Winter ist es kalt.', 'In winter it is cold.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Frühling', 'الربيع', 'spring', 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Winter', 'الشتاء', 'winter', 'der', NULL, 'noun', 'Im Winter schneit es.', 'In winter it snows.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657fad8e', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657fad8e', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657fad8e', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657fad8e', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657fad8e', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657fad8e', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657fad8e', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657fad8e', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657fad8e', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657fad8e', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657fad8e', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657fad8e', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'What does "das Wetter" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657fad8e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657fad8e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657fad8e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657fad8e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'What is the main topic of this lesson?', '["Module Test","Sports","Music","Travel"]', 'Module Test', 1, 1),
  ('00000000-0000-4000-a000-0000657fad8e', 'true_false', 'This lesson teaches vocabulary about Module Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657fad8e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657fad8e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657fad8e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657fad8e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657fad8e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Wetter, Natur und Jahreszeiten', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657fad8e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Wetter, Natur und Jahreszeiten', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657fad8e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Wetter, Natur und Jahreszeiten', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657fad8e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657fad8e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657fad8e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Test: Wetter und Natur — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Test: Wetter und Natur — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Wetter, Natur und Jahreszeiten');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Speaking: Test: Wetter und Natur', 'Practice talking about Module Test. Answer questions and have a simple conversation.', 'Module Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Writing: Test: Wetter und Natur', 'Write a short text about Module Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['das Wetter','die Sonne','der Regen']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Test: Wetter und Natur — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Test: Wetter und Natur — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Test: Wetter und Natur — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Wetter und Natur".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Homework: Test: Wetter und Natur', 'Complete these tasks to reinforce "Test: Wetter und Natur".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657fad8e', 'In this lesson you learned about Module Test. You practiced vocabulary related to weather and grammar structure present_tense.', '["Mastered vocabulary about Module Test","Applied present_tense correctly","Read and understood a text about Module Test","Practiced speaking about Module Test"]', '[{"title":"Test: Wetter und Natur Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Module Test core vocabulary','weather key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Culture: Module Test in German-Speaking Countries', 'Learn how Module Test is approached in German culture.

تعلم كيف يتم التعامل مع Module Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Module 6: Feste, Traditionen und Reisen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547c2', 'A2', 'Feste, Traditionen und Reisen', 'Learn about German holidays, traditions, and travel experiences.', '["Name German holidays and traditions","Talk about travel experiences","Use Perfekt tense for past events","Write a simple postcard or email","Discuss cultural differences"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Feste und Feiertage (L-A2-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f3933', '00000000-0000-4000-a000-000039b547c2', 'Feste und Feiertage', 'Learn about German holidays and celebrations.', 'Holidays & Celebrations', 'vocabulary', '["Understand and use vocabulary related to Holidays & Celebrations","Apply present_tense correctly","Read and comprehend a text about Holidays & Celebrations","Listen and understand a dialogue about Holidays & Celebrations","Speak about Holidays & Celebrations in simple sentences","Write a short text about Holidays & Celebrations"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'der Feiertag', 'العطلة الرسمية', 'public holiday', 'der', 'die Feiertage', 'noun', 'Der 3. Oktober ist ein Feiertag.', 'October 3rd is a public holiday.', 'A2', 1),
  ('00000000-0000-4000-a000-0000657f3933', 'Weihnachten', 'عيد الميلاد', 'Christmas', NULL, NULL, 'noun', 'Weihnachten ist am 24. Dezember.', 'Christmas is on December 24th.', 'A2', 2),
  ('00000000-0000-4000-a000-0000657f3933', 'das Geschenk', 'الهدية', 'gift', 'das', 'die Geschenke', 'noun', 'Ich kaufe ein Geschenk.', 'I buy a gift.', 'A2', 3),
  ('00000000-0000-4000-a000-0000657f3933', 'feiern', 'يحتفل', 'to celebrate', NULL, NULL, 'verb', 'Wir feiern meinen Geburtstag.', 'We celebrate my birthday.', 'A2', 4),
  ('00000000-0000-4000-a000-0000657f3933', 'der Geburtstag', 'عيد الميلاد', 'birthday', 'der', 'die Geburtstage', 'noun', 'Alles Gute zum Geburtstag!', 'Happy birthday!', 'A2', 5),
  ('00000000-0000-4000-a000-0000657f3933', 'Ostern', 'عيد الفصح', 'Easter', NULL, NULL, 'noun', 'Ostern ist im Frühling.', 'Easter is in spring.', 'A2', 6),
  ('00000000-0000-4000-a000-0000657f3933', 'das Fest', 'المهرجان', 'festival', 'das', 'die Feste', 'noun', 'Das Oktoberfest ist in München.', 'The Oktoberfest is in Munich.', 'A2', 7),
  ('00000000-0000-4000-a000-0000657f3933', 'der Brauch', 'العادة التقليدية', 'tradition', 'der', 'die Bräuche', 'noun', 'Das ist ein deutscher Brauch.', 'That is a German tradition.', 'B1', 8),
  ('00000000-0000-4000-a000-0000657f3933', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f3933', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f3933', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f3933', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f3933', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f3933', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f3933', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f3933', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f3933', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f3933', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f3933', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f3933', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f3933', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f3933', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f3933', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f3933', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f3933', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f3933', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657f3933', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f3933', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f3933', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657f3933', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'What does "der Feiertag" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657f3933', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657f3933', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657f3933', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657f3933', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'What is the main topic of this lesson?', '["Holidays & Celebrations","Sports","Music","Travel"]', 'Holidays & Celebrations', 1, 1),
  ('00000000-0000-4000-a000-0000657f3933', 'true_false', 'This lesson teaches vocabulary about Holidays & Celebrations.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657f3933', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657f3933', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657f3933', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657f3933', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f3933', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Feste, Traditionen und Reisen', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657f3933', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657f3933', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657f3933', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657f3933', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657f3933', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f3933', 'Feste und Feiertage — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657f3933', 'Feste und Feiertage — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Speaking: Feste und Feiertage', 'Practice talking about Holidays & Celebrations. Answer questions and have a simple conversation.', 'Holidays & Celebrations', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Writing: Feste und Feiertage', 'Write a short text about Holidays & Celebrations. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3933', 'Feste und Feiertage — Roleplay', 'Holidays & Celebrations', 'Student', 'Teacher', 'Practice conversation about Holidays & Celebrations', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3933', 'Feste und Feiertage — Advanced Roleplay', 'Holidays & Celebrations', 'Customer', 'Assistant', 'Extended conversation about Holidays & Celebrations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f3933', 'Feste und Feiertage — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Feste und Feiertage".', 'Creative practice for Holidays & Celebrations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Homework: Feste und Feiertage', 'Complete these tasks to reinforce "Feste und Feiertage".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f3933', 'In this lesson you learned about Holidays & Celebrations. You practiced vocabulary related to holidays and grammar structure present_tense.', '["Mastered vocabulary about Holidays & Celebrations","Applied present_tense correctly","Read and understood a text about Holidays & Celebrations","Practiced speaking about Holidays & Celebrations"]', '[{"title":"Feste und Feiertage Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Holidays & Celebrations core vocabulary','holidays key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Culture: Holidays & Celebrations in German-Speaking Countries', 'Learn how Holidays & Celebrations is approached in German culture.

تعلم كيف يتم التعامل مع Holidays & Celebrations في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 2: Geburtstag feiern (L-A2-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f3932', '00000000-0000-4000-a000-000039b547c2', 'Geburtstag feiern', 'Learn birthday vocabulary and party planning.', 'Birthday', 'dialogue', '["Understand and use vocabulary related to Birthday","Apply present_tense correctly","Read and comprehend a text about Birthday","Listen and understand a dialogue about Birthday","Speak about Birthday in simple sentences","Write a short text about Birthday"]', 40, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'der Feiertag', 'العطلة الرسمية', 'public holiday', 'der', 'die Feiertage', 'noun', 'Der 3. Oktober ist ein Feiertag.', 'October 3rd is a public holiday.', 'A2', 1),
  ('00000000-0000-4000-a000-0000657f3932', 'Weihnachten', 'عيد الميلاد', 'Christmas', NULL, NULL, 'noun', 'Weihnachten ist am 24. Dezember.', 'Christmas is on December 24th.', 'A2', 2),
  ('00000000-0000-4000-a000-0000657f3932', 'das Geschenk', 'الهدية', 'gift', 'das', 'die Geschenke', 'noun', 'Ich kaufe ein Geschenk.', 'I buy a gift.', 'A2', 3),
  ('00000000-0000-4000-a000-0000657f3932', 'feiern', 'يحتفل', 'to celebrate', NULL, NULL, 'verb', 'Wir feiern meinen Geburtstag.', 'We celebrate my birthday.', 'A2', 4),
  ('00000000-0000-4000-a000-0000657f3932', 'der Geburtstag', 'عيد الميلاد', 'birthday', 'der', 'die Geburtstage', 'noun', 'Alles Gute zum Geburtstag!', 'Happy birthday!', 'A2', 5),
  ('00000000-0000-4000-a000-0000657f3932', 'Ostern', 'عيد الفصح', 'Easter', NULL, NULL, 'noun', 'Ostern ist im Frühling.', 'Easter is in spring.', 'A2', 6),
  ('00000000-0000-4000-a000-0000657f3932', 'das Fest', 'المهرجان', 'festival', 'das', 'die Feste', 'noun', 'Das Oktoberfest ist in München.', 'The Oktoberfest is in Munich.', 'A2', 7),
  ('00000000-0000-4000-a000-0000657f3932', 'der Brauch', 'العادة التقليدية', 'tradition', 'der', 'die Bräuche', 'noun', 'Das ist ein deutscher Brauch.', 'That is a German tradition.', 'B1', 8),
  ('00000000-0000-4000-a000-0000657f3932', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f3932', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f3932', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f3932', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f3932', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f3932', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f3932', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f3932', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f3932', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f3932', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f3932', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f3932', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f3932', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f3932', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f3932', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f3932', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f3932', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f3932', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657f3932', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f3932', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f3932', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657f3932', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'What does "der Feiertag" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657f3932', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657f3932', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657f3932', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657f3932', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'What is the main topic of this lesson?', '["Birthday","Sports","Music","Travel"]', 'Birthday', 1, 1),
  ('00000000-0000-4000-a000-0000657f3932', 'true_false', 'This lesson teaches vocabulary about Birthday.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657f3932', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657f3932', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657f3932', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657f3932', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f3932', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Feste, Traditionen und Reisen', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657f3932', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657f3932', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657f3932', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657f3932', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657f3932', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f3932', 'Geburtstag feiern — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657f3932', 'Geburtstag feiern — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Speaking: Geburtstag feiern', 'Practice talking about Birthday. Answer questions and have a simple conversation.', 'Birthday', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Writing: Geburtstag feiern', 'Write a short text about Birthday. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3932', 'Geburtstag feiern — Roleplay', 'Birthday', 'Student', 'Teacher', 'Practice conversation about Birthday', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3932', 'Geburtstag feiern — Advanced Roleplay', 'Birthday', 'Customer', 'Assistant', 'Extended conversation about Birthday', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f3932', 'Geburtstag feiern — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Geburtstag feiern".', 'Creative practice for Birthday', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Homework: Geburtstag feiern', 'Complete these tasks to reinforce "Geburtstag feiern".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f3932', 'In this lesson you learned about Birthday. You practiced vocabulary related to holidays and grammar structure present_tense.', '["Mastered vocabulary about Birthday","Applied present_tense correctly","Read and understood a text about Birthday","Practiced speaking about Birthday"]', '[{"title":"Geburtstag feiern Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Birthday core vocabulary','holidays key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Culture: Birthday in German-Speaking Countries', 'Learn how Birthday is approached in German culture.

تعلم كيف يتم التعامل مع Birthday في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 3: Reiseerfahrungen (L-A2-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f3931', '00000000-0000-4000-a000-000039b547c2', 'Reiseerfahrungen', 'Talk about travel experiences using Perfekt tense.', 'Travel Experiences', 'reading', '["Understand and use vocabulary related to Travel Experiences","Apply present_tense correctly","Read and comprehend a text about Travel Experiences","Listen and understand a dialogue about Travel Experiences","Speak about Travel Experiences in simple sentences","Write a short text about Travel Experiences"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657f3931', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657f3931', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657f3931', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657f3931', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657f3931', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657f3931', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657f3931', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657f3931', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f3931', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f3931', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f3931', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f3931', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f3931', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f3931', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f3931', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f3931', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f3931', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f3931', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f3931', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f3931', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f3931', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f3931', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f3931', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f3931', 'das Krankenhaus', 'المستشفى', 'hospital', 'das', 'die Krankenhäuser', 'noun', 'Das Krankenhaus ist neu.', 'The hospital is new.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f3931', 'die Medizin', 'الدواء', 'medicine', 'die', NULL, 'noun', 'Die Medizin hilft gegen Schmerzen.', 'The medicine helps against pain.', 'A2', 26),
  ('00000000-0000-4000-a000-0000657f3931', 'gesund', 'صحي', 'healthy', NULL, NULL, 'adjective', 'Sport ist gesund.', 'Sports are healthy.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f3931', 'krank', 'مريض', 'sick', NULL, NULL, 'adjective', 'Ich bin krank.', 'I am sick.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f3931', 'die Apotheke', 'الصيدلية', 'pharmacy', 'die', 'die Apotheken', 'noun', 'Die Apotheke hat geöffnet.', 'The pharmacy is open.', 'A2', 29),
  ('00000000-0000-4000-a000-0000657f3931', 'die Versicherung', 'التأمين', 'insurance', 'die', 'die Versicherungen', 'noun', 'Ich habe eine Krankenversicherung.', 'I have health insurance.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657f3931', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657f3931', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657f3931', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657f3931', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'What is the main topic of this lesson?', '["Travel Experiences","Sports","Music","Travel"]', 'Travel Experiences', 1, 1),
  ('00000000-0000-4000-a000-0000657f3931', 'true_false', 'This lesson teaches vocabulary about Travel Experiences.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657f3931', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657f3931', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657f3931', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657f3931', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f3931', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Feste, Traditionen und Reisen', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657f3931', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657f3931', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657f3931', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657f3931', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657f3931', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f3931', 'Reiseerfahrungen — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657f3931', 'Reiseerfahrungen — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

[Mitarbeiter]: Einfach oder hin und zurück?

[Kunde]: Hin und zurück, bitte. Zweite Klasse.

[Mitarbeiter]: Das macht 98 Euro. Mit BahnCard 25 bekommen Sie 25 Prozent Rabatt.

[Kunde]: Ich habe eine BahnCard. Hier ist sie.

[Mitarbeiter]: Dann kostet es 73,50 Euro. Der Zug fährt um 10 Uhr ab.', '[Kunde]: Good day! I would like to buy a ticket to Munich.

[Mitarbeiter]: One way or round trip?

[Kunde]: Round trip, please. Second class.

[Mitarbeiter]: That comes to 98 euros. With BahnCard 25 you get 25 percent discount.

[Kunde]: I have a BahnCard. Here it is.

[Mitarbeiter]: Then it costs 73.50 euros. The train departs at 10 o''clock.', '[Kunde]: نهارك سعيد! أريد شراء تذكرة إلى ميونخ.

[Mitarbeiter]: ذهاب أم ذهاب وعودة؟

[Kunde]: ذهاب وعودة من فضلك. الدرجة الثانية.

[Mitarbeiter]: المجموع 98 يورو. مع بطاقة السكة الحديد 25 تحصلون على خصم 25 بالمئة.

[Kunde]: لدي بطاقة السكة الحديد. ها هي.

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Speaking: Reiseerfahrungen', 'Practice talking about Travel Experiences. Answer questions and have a simple conversation.', 'Travel Experiences', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Writing: Reiseerfahrungen', 'Write a short text about Travel Experiences. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3931', 'Reiseerfahrungen — Roleplay', 'Travel Experiences', 'Student', 'Teacher', 'Practice conversation about Travel Experiences', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3931', 'Reiseerfahrungen — Advanced Roleplay', 'Travel Experiences', 'Customer', 'Assistant', 'Extended conversation about Travel Experiences', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f3931', 'Reiseerfahrungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Reiseerfahrungen".', 'Creative practice for Travel Experiences', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Homework: Reiseerfahrungen', 'Complete these tasks to reinforce "Reiseerfahrungen".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f3931', 'In this lesson you learned about Travel Experiences. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Travel Experiences","Applied present_tense correctly","Read and understood a text about Travel Experiences","Practiced speaking about Travel Experiences"]', '[{"title":"Reiseerfahrungen Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Travel Experiences core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Culture: Travel Experiences in German-Speaking Countries', 'Learn how Travel Experiences is approached in German culture.

تعلم كيف يتم التعامل مع Travel Experiences في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 4: Postkarte und E-Mail schreiben (L-A2-06-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f3930', '00000000-0000-4000-a000-000039b547c2', 'Postkarte und E-Mail schreiben', 'Write simple postcards and emails from vacation.', 'Writing: Postcards & Emails', 'writing', '["Understand and use vocabulary related to Writing: Postcards & Emails","Apply present_tense correctly","Read and comprehend a text about Writing: Postcards & Emails","Listen and understand a dialogue about Writing: Postcards & Emails","Speak about Writing: Postcards & Emails in simple sentences","Write a short text about Writing: Postcards & Emails"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657f3930', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657f3930', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657f3930', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657f3930', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657f3930', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657f3930', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657f3930', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657f3930', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f3930', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f3930', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f3930', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f3930', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f3930', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f3930', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f3930', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f3930', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f3930', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f3930', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f3930', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f3930', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f3930', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f3930', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f3930', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f3930', 'das Krankenhaus', 'المستشفى', 'hospital', 'das', 'die Krankenhäuser', 'noun', 'Das Krankenhaus ist neu.', 'The hospital is new.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f3930', 'die Medizin', 'الدواء', 'medicine', 'die', NULL, 'noun', 'Die Medizin hilft gegen Schmerzen.', 'The medicine helps against pain.', 'A2', 26),
  ('00000000-0000-4000-a000-0000657f3930', 'gesund', 'صحي', 'healthy', NULL, NULL, 'adjective', 'Sport ist gesund.', 'Sports are healthy.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f3930', 'krank', 'مريض', 'sick', NULL, NULL, 'adjective', 'Ich bin krank.', 'I am sick.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f3930', 'die Apotheke', 'الصيدلية', 'pharmacy', 'die', 'die Apotheken', 'noun', 'Die Apotheke hat geöffnet.', 'The pharmacy is open.', 'A2', 29),
  ('00000000-0000-4000-a000-0000657f3930', 'die Versicherung', 'التأمين', 'insurance', 'die', 'die Versicherungen', 'noun', 'Ich habe eine Krankenversicherung.', 'I have health insurance.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657f3930', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657f3930', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657f3930', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657f3930', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'What is the main topic of this lesson?', '["Writing: Postcards & Emails","Sports","Music","Travel"]', 'Writing: Postcards & Emails', 1, 1),
  ('00000000-0000-4000-a000-0000657f3930', 'true_false', 'This lesson teaches vocabulary about Writing: Postcards & Emails.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657f3930', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657f3930', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657f3930', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657f3930', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f3930', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Feste, Traditionen und Reisen', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657f3930', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657f3930', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657f3930', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657f3930', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657f3930', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f3930', 'Postkarte und E-Mail schreiben — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657f3930', 'Postkarte und E-Mail schreiben — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

[Mitarbeiter]: Einfach oder hin und zurück?

[Kunde]: Hin und zurück, bitte. Zweite Klasse.

[Mitarbeiter]: Das macht 98 Euro. Mit BahnCard 25 bekommen Sie 25 Prozent Rabatt.

[Kunde]: Ich habe eine BahnCard. Hier ist sie.

[Mitarbeiter]: Dann kostet es 73,50 Euro. Der Zug fährt um 10 Uhr ab.', '[Kunde]: Good day! I would like to buy a ticket to Munich.

[Mitarbeiter]: One way or round trip?

[Kunde]: Round trip, please. Second class.

[Mitarbeiter]: That comes to 98 euros. With BahnCard 25 you get 25 percent discount.

[Kunde]: I have a BahnCard. Here it is.

[Mitarbeiter]: Then it costs 73.50 euros. The train departs at 10 o''clock.', '[Kunde]: نهارك سعيد! أريد شراء تذكرة إلى ميونخ.

[Mitarbeiter]: ذهاب أم ذهاب وعودة؟

[Kunde]: ذهاب وعودة من فضلك. الدرجة الثانية.

[Mitarbeiter]: المجموع 98 يورو. مع بطاقة السكة الحديد 25 تحصلون على خصم 25 بالمئة.

[Kunde]: لدي بطاقة السكة الحديد. ها هي.

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Speaking: Postkarte und E-Mail schreiben', 'Practice talking about Writing: Postcards & Emails. Answer questions and have a simple conversation.', 'Writing: Postcards & Emails', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Writing: Postkarte und E-Mail schreiben', 'Write a short text about Writing: Postcards & Emails. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3930', 'Postkarte und E-Mail schreiben — Roleplay', 'Writing: Postcards & Emails', 'Student', 'Teacher', 'Practice conversation about Writing: Postcards & Emails', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3930', 'Postkarte und E-Mail schreiben — Advanced Roleplay', 'Writing: Postcards & Emails', 'Customer', 'Assistant', 'Extended conversation about Writing: Postcards & Emails', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f3930', 'Postkarte und E-Mail schreiben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Postkarte und E-Mail schreiben".', 'Creative practice for Writing: Postcards & Emails', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Homework: Postkarte und E-Mail schreiben', 'Complete these tasks to reinforce "Postkarte und E-Mail schreiben".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f3930', 'In this lesson you learned about Writing: Postcards & Emails. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Writing: Postcards & Emails","Applied present_tense correctly","Read and understood a text about Writing: Postcards & Emails","Practiced speaking about Writing: Postcards & Emails"]', '[{"title":"Postkarte und E-Mail schreiben Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Writing: Postcards & Emails core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Culture: Writing: Postcards & Emails in German-Speaking Countries', 'Learn how Writing: Postcards & Emails is approached in German culture.

تعلم كيف يتم التعامل مع Writing: Postcards & Emails في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 5: Kulturelle Unterschiede (L-A2-06-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f392f', '00000000-0000-4000-a000-000039b547c2', 'Kulturelle Unterschiede', 'Discuss cultural differences between your country and Germany.', 'Cultural Differences', 'culture', '["Understand and use vocabulary related to Cultural Differences","Apply present_tense correctly","Read and comprehend a text about Cultural Differences","Listen and understand a dialogue about Cultural Differences","Speak about Cultural Differences in simple sentences","Write a short text about Cultural Differences"]', 40, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'der Feiertag', 'العطلة الرسمية', 'public holiday', 'der', 'die Feiertage', 'noun', 'Der 3. Oktober ist ein Feiertag.', 'October 3rd is a public holiday.', 'A2', 1),
  ('00000000-0000-4000-a000-0000657f392f', 'Weihnachten', 'عيد الميلاد', 'Christmas', NULL, NULL, 'noun', 'Weihnachten ist am 24. Dezember.', 'Christmas is on December 24th.', 'A2', 2),
  ('00000000-0000-4000-a000-0000657f392f', 'das Geschenk', 'الهدية', 'gift', 'das', 'die Geschenke', 'noun', 'Ich kaufe ein Geschenk.', 'I buy a gift.', 'A2', 3),
  ('00000000-0000-4000-a000-0000657f392f', 'feiern', 'يحتفل', 'to celebrate', NULL, NULL, 'verb', 'Wir feiern meinen Geburtstag.', 'We celebrate my birthday.', 'A2', 4),
  ('00000000-0000-4000-a000-0000657f392f', 'der Geburtstag', 'عيد الميلاد', 'birthday', 'der', 'die Geburtstage', 'noun', 'Alles Gute zum Geburtstag!', 'Happy birthday!', 'A2', 5),
  ('00000000-0000-4000-a000-0000657f392f', 'Ostern', 'عيد الفصح', 'Easter', NULL, NULL, 'noun', 'Ostern ist im Frühling.', 'Easter is in spring.', 'A2', 6),
  ('00000000-0000-4000-a000-0000657f392f', 'das Fest', 'المهرجان', 'festival', 'das', 'die Feste', 'noun', 'Das Oktoberfest ist in München.', 'The Oktoberfest is in Munich.', 'A2', 7),
  ('00000000-0000-4000-a000-0000657f392f', 'der Brauch', 'العادة التقليدية', 'tradition', 'der', 'die Bräuche', 'noun', 'Das ist ein deutscher Brauch.', 'That is a German tradition.', 'B1', 8),
  ('00000000-0000-4000-a000-0000657f392f', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f392f', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f392f', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f392f', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f392f', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f392f', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f392f', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f392f', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f392f', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f392f', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f392f', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f392f', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f392f', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f392f', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f392f', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f392f', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f392f', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f392f', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657f392f', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f392f', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f392f', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657f392f', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'What does "der Feiertag" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657f392f', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657f392f', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657f392f', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657f392f', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'What is the main topic of this lesson?', '["Cultural Differences","Sports","Music","Travel"]', 'Cultural Differences', 1, 1),
  ('00000000-0000-4000-a000-0000657f392f', 'true_false', 'This lesson teaches vocabulary about Cultural Differences.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657f392f', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657f392f', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657f392f', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657f392f', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f392f', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Feste, Traditionen und Reisen', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657f392f', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657f392f', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657f392f', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657f392f', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657f392f', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f392f', 'Kulturelle Unterschiede — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657f392f', 'Kulturelle Unterschiede — Hörverständnis', '[Lehrerin]: Guten Morgen! Heute lernen wir Begrüßungen.

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

[Lehrerin]: ممتاز! إلى الغد!', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Speaking: Kulturelle Unterschiede', 'Practice talking about Cultural Differences. Answer questions and have a simple conversation.', 'Cultural Differences', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Writing: Kulturelle Unterschiede', 'Write a short text about Cultural Differences. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f392f', 'Kulturelle Unterschiede — Roleplay', 'Cultural Differences', 'Student', 'Teacher', 'Practice conversation about Cultural Differences', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f392f', 'Kulturelle Unterschiede — Advanced Roleplay', 'Cultural Differences', 'Customer', 'Assistant', 'Extended conversation about Cultural Differences', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f392f', 'Kulturelle Unterschiede — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kulturelle Unterschiede".', 'Creative practice for Cultural Differences', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Homework: Kulturelle Unterschiede', 'Complete these tasks to reinforce "Kulturelle Unterschiede".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f392f', 'In this lesson you learned about Cultural Differences. You practiced vocabulary related to holidays and grammar structure present_tense.', '["Mastered vocabulary about Cultural Differences","Applied present_tense correctly","Read and understood a text about Cultural Differences","Practiced speaking about Cultural Differences"]', '[{"title":"Kulturelle Unterschiede Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Cultural Differences core vocabulary','holidays key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Culture: Cultural Differences in German-Speaking Countries', 'Learn how Cultural Differences is approached in German culture.

تعلم كيف يتم التعامل مع Cultural Differences في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

  -- Lesson 6: A2 Abschlusstest (L-A2-06-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f392e', '00000000-0000-4000-a000-000039b547c2', 'A2 Abschlusstest', 'Comprehensive A2 level test.', 'Level Test', 'test', '["Understand and use vocabulary related to Level Test","Apply present_tense correctly","Read and comprehend a text about Level Test","Listen and understand a dialogue about Level Test","Speak about Level Test in simple sentences","Write a short text about Level Test"]', 50, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657f392e', 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657f392e', 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657f392e', 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657f392e', 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657f392e', 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657f392e', 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657f392e', 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657f392e', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f392e', 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f392e', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f392e', 'der Euro', 'اليورو', 'euro', 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f392e', 'das Geschäft', 'المتجر', 'store', 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f392e', 'der Markt', 'السوق', 'market', 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f392e', 'die Tasche', 'الحقيبة', 'bag', 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f392e', 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f392e', 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f392e', 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f392e', 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f392e', 'der Kellner', 'النادل', 'waiter', 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f392e', 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f392e', 'die Rechnung', 'الفاتورة', 'bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f392e', 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f392e', 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f392e', 'das Krankenhaus', 'المستشفى', 'hospital', 'das', 'die Krankenhäuser', 'noun', 'Das Krankenhaus ist neu.', 'The hospital is new.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f392e', 'die Medizin', 'الدواء', 'medicine', 'die', NULL, 'noun', 'Die Medizin hilft gegen Schmerzen.', 'The medicine helps against pain.', 'A2', 26),
  ('00000000-0000-4000-a000-0000657f392e', 'gesund', 'صحي', 'healthy', NULL, NULL, 'adjective', 'Sport ist gesund.', 'Sports are healthy.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f392e', 'krank', 'مريض', 'sick', NULL, NULL, 'adjective', 'Ich bin krank.', 'I am sick.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f392e', 'die Apotheke', 'الصيدلية', 'pharmacy', 'die', 'die Apotheken', 'noun', 'Die Apotheke hat geöffnet.', 'The pharmacy is open.', 'A2', 29),
  ('00000000-0000-4000-a000-0000657f392e', 'die Versicherung', 'التأمين', 'insurance', 'die', 'die Versicherungen', 'noun', 'Ich habe eine Krankenversicherung.', 'I have health insurance.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Präsens der regelmäßigen Verben (Present Tense) / المضارع للأفعال المنتظمة', 'In German, regular verbs follow a consistent pattern. The infinitive ends in -en. Remove the -en and add the personal endings: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en. For most Arabic speakers, this is easier than Arabic verb conjugation because German has fewer forms.', '[{"rule":"ich: stem + e","note":"Ich lerne, ich wohne, ich arbeite"},{"rule":"du: stem + st","note":"Du lernst, du wohnst, du arbeitest"},{"rule":"er/sie/es: stem + t","note":"Er lernt, sie wohnt, es arbeitet"},{"rule":"wir: stem + en","note":"Wir lernen, wir wohnen, wir arbeiten"},{"rule":"ihr: stem + t","note":"Ihr lernt, ihr wohnt, ihr arbeitet"},{"rule":"sie/Sie: stem + en","note":"Sie lernen, Sie wohnen"}]', '[{"german":"Ich lerne Deutsch.","arabic":"أنا أتعلم الألمانية.","english":"I am learning German."},{"german":"Du wohnst in Berlin.","arabic":"أنت تسكن في برلين.","english":"You live in Berlin."},{"german":"Er arbeitet bei Siemens.","arabic":"هو يعمل في سيمنز.","english":"He works at Siemens."}]', '[{"mistake":"Ich lernen Deutsch","correction":"Ich lerne Deutsch","explanation":"After \"ich\" we use the stem + e, not the infinitive."},{"mistake":"Er lerne Deutsch","correction":"Er lernt Deutsch","explanation":"After \"er/sie/es\" we add -t, not -e."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'What does "die Reise" mean?', '["The","A","This","That"]', 'The', 'This is a basic vocabulary item.', 1, 1),
  ('00000000-0000-4000-a000-0000657f392e', 'fill_gap', 'Complete with the correct form.', '["Option 1","Option 2","Option 3"]', 'Option 1', 'Practice grammar in context.', 1, 2),
  ('00000000-0000-4000-a000-0000657f392e', 'translation', 'Translate: "I learn German."', '["Ich lerne Deutsch.","Ich lerne Englisch.","Ich lerne Spanisch."]', 'Ich lerne Deutsch.', 'Ich = I, lerne = learn/learning, Deutsch = German.', 2, 3),
  ('00000000-0000-4000-a000-0000657f392e', 'sentence_order', 'Order the sentence.', '[]', 'Ich lerne Deutsch.', 'Subject + verb + object in German.', 2, 4),
  ('00000000-0000-4000-a000-0000657f392e', 'matching', 'Match the words with their meanings.', '["Match pairs correctly"]', 'Correct pairs', 'Test your vocabulary knowledge.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'What is the main topic of this lesson?', '["Level Test","Sports","Music","Travel"]', 'Level Test', 1, 1),
  ('00000000-0000-4000-a000-0000657f392e', 'true_false', 'This lesson teaches vocabulary about Level Test.', '["True","False"]', 'True', 1, 2),
  ('00000000-0000-4000-a000-0000657f392e', 'true_false', 'German word order is always the same as English.', '["True","False"]', 'False', 1, 3),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'How do you say "please" in German?', '["Danke","Bitte","Tschüss","Hallo"]', 'Bitte', 1, 4),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'Which article is feminine?', '["der","die","das","den"]', 'die', 1, 5),
  ('00000000-0000-4000-a000-0000657f392e', 'fill_blank', 'Ich ___ (to be) Student.', '["bin","bist","ist","sind"]', 'bin', 1, 6),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'What is the correct word order?', '["Ich lerne Deutsch","Ich Deutsch lerne","Lerne ich Deutsch","Deutsch ich lerne"]', 'Ich lerne Deutsch', 1, 7),
  ('00000000-0000-4000-a000-0000657f392e', 'true_false', 'All German nouns are capitalized.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'How do you say "thank you" in German?', '["Bitte","Danke","Tschüss","Hallo"]', 'Danke', 1, 9),
  ('00000000-0000-4000-a000-0000657f392e', 'fill_blank', 'Wo ___ du? (to live)', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 1, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f392e', 'Hallo!', 'Hello!', 'مرحباً!', 'Used in Feste, Traditionen und Reisen', 'informal', false, 2),
  ('00000000-0000-4000-a000-0000657f392e', 'Bitte!', 'Please!', 'من فضلك!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 3),
  ('00000000-0000-4000-a000-0000657f392e', 'Danke!', 'Thanks!', 'شكراً!', 'Used in Feste, Traditionen und Reisen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Hallo', 'Hello', 'Greeting', 'expression', 1),
  ('00000000-0000-4000-a000-0000657f392e', 'Danke', 'Thanks', 'Politeness', 'expression', 2),
  ('00000000-0000-4000-a000-0000657f392e', 'Bitte', 'Please', 'Politeness', 'expression', 3),
  ('00000000-0000-4000-a000-0000657f392e', 'Tschüss', 'Bye', 'Farewell', 'expression', 4);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f392e', 'A2 Abschlusstest — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, duration_seconds, speaker_count, scenario) values
  ('00000000-0000-4000-a000-0000657f392e', 'A2 Abschlusstest — Hörverständnis', '[Kunde]: Guten Tag! Ich möchte eine Fahrkarte nach München kaufen.

[Mitarbeiter]: Einfach oder hin und zurück?

[Kunde]: Hin und zurück, bitte. Zweite Klasse.

[Mitarbeiter]: Das macht 98 Euro. Mit BahnCard 25 bekommen Sie 25 Prozent Rabatt.

[Kunde]: Ich habe eine BahnCard. Hier ist sie.

[Mitarbeiter]: Dann kostet es 73,50 Euro. Der Zug fährt um 10 Uhr ab.', '[Kunde]: Good day! I would like to buy a ticket to Munich.

[Mitarbeiter]: One way or round trip?

[Kunde]: Round trip, please. Second class.

[Mitarbeiter]: That comes to 98 euros. With BahnCard 25 you get 25 percent discount.

[Kunde]: I have a BahnCard. Here it is.

[Mitarbeiter]: Then it costs 73.50 euros. The train departs at 10 o''clock.', '[Kunde]: نهارك سعيد! أريد شراء تذكرة إلى ميونخ.

[Mitarbeiter]: ذهاب أم ذهاب وعودة؟

[Kunde]: ذهاب وعودة من فضلك. الدرجة الثانية.

[Mitarbeiter]: المجموع 98 يورو. مع بطاقة السكة الحديد 25 تحصلون على خصم 25 بالمئة.

[Kunde]: لدي بطاقة السكة الحديد. ها هي.

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Speaking: A2 Abschlusstest', 'Practice talking about Level Test. Answer questions and have a simple conversation.', 'Level Test', ARRAY['Use full sentences','Speak clearly','Don''t worry about mistakes']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Writing: A2 Abschlusstest', 'Write a short text about Level Test. Use at least 5 vocabulary words from this lesson.', ARRAY['Start with a greeting','Use the vocabulary from this lesson','Check your grammar']::text[], ARRAY['die Reise','der Zug','das Ticket']::text[], '["Sentence structure","Vocabulary usage"]', 50, 150, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f392e', 'A2 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f392e', 'A2 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f392e', 'A2 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "A2 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Homework: A2 Abschlusstest', 'Complete these tasks to reinforce "A2 Abschlusstest".', 'mixed', '[{"description":"Review all vocabulary from this lesson"},{"description":"Write 5 sentences using the grammar structure"},{"description":"Practice the dialogue aloud"}]', 35, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f392e', 'In this lesson you learned about Level Test. You practiced vocabulary related to travel and grammar structure present_tense.', '["Mastered vocabulary about Level Test","Applied present_tense correctly","Read and understood a text about Level Test","Practiced speaking about Level Test"]', '[{"title":"A2 Abschlusstest Review","summary":"present_tense — the main grammar focus of this lesson."}]', ARRAY['Level Test core vocabulary','travel key terms']::text[], ARRAY['Pay attention to article gender (der/die/das)','Verb is always in second position']::text[], ARRAY['Practice 15-20 minutes daily','Use new vocabulary in real sentences','Speak out loud to improve pronunciation']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'translation', 'Translate to German: "This is a translation exercise."', '[]', 'Das ist eine Übersetzungsübung.', 'Use "das ist" for "this is"', 1, 40);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Culture: Level Test in German-Speaking Countries', 'Learn how Level Test is approached in German culture.

تعلم كيف يتم التعامل مع Level Test في الثقافة الألمانية.', '["Tip: Be direct and polite","Tip: Use formal language with strangers","Tip: Respect punctuality"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Common error for Arabic speakers","correction":"Correct version","explanation":"Explanation of the error"}]', 30);

end $$;
