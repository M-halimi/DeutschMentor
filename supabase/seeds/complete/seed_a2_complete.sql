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
  values ('00000000-0000-4000-a000-000065817f0e', '00000000-0000-4000-a000-000039b547bd', 'Lebensmittel und Nahrungsmittel', 'Detailed food vocabulary including ingredients and packaging.', 'Food & Ingredients', 'vocabulary', '["Understand and use 81 key vocabulary words about Food & Ingredients","Apply present_tense correctly in sentences","Read and comprehend a text about Food & Ingredients","Listen and understand a natural dialogue about Food & Ingredients","Speak about Food & Ingredients with confidence","Write a short text about Food & Ingredients using new vocabulary"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f0e', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f0e', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f0e', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f0e', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f0e', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f0e', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f0e', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f0e', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f0e', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f0e', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f0e', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f0e', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f0e', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f0e', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f0e', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f0e', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f0e', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f0e', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f0e', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f0e', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f0e', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f0e', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f0e', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f0e', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f0e', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f0e', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f0e', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f0e', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f0e', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'Welches deutsche Wort bedeutet "bread"?', '["der Käse","das Brot","der Apfel","die Milch"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'Welches deutsche Wort bedeutet "milk"?', '["der Apfel","die Milch","das Brot","der Käse"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'Welches deutsche Wort bedeutet "cheese"?', '["der Apfel","die Milch","das Brot","der Käse"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'Welches deutsche Wort bedeutet "apple"?', '["die Milch","das Brot","das Ei","der Käse"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'Welches deutsche Wort bedeutet "egg"?', '["der Apfel","der Käse","die Milch","das Brot"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-000065817f0e', 'fill_gap', 'Ergänze den Satz: Ich ___ gern Food & Ingredients. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065817f0e', 'translation', 'Übersetze ins Deutsche: "I am learning about Food & Ingredients."', '["Ich lerne über Food & Ingredients.","Ich lerne Food & Ingredients.","Lerne ich Food & Ingredients."]', 'Ich lerne über Food & Ingredients.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065817f0e', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'Was bedeutet "das Brot" auf Deutsch?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'Welcher Artikel gehört zu "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065817f0e', 'true_false', 'Das Wort "der Käse" gehört zum Thema Food & Ingredients.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-000065817f0e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065817f0e', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'Wie lautet das deutsche Wort für "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-000065817f0e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f0e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065817f0e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f0e', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Trinken', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065817f0e', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Trinken', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065817f0e', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Trinken', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065817f0e', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065817f0e', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065817f0e', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065817f0e', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065817f0e', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065817f0e', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065817f0e', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065817f0e', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065817f0e', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065817f0e', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065817f0e', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065817f0e', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065817f0e', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065817f0e', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065817f0e', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065817f0e', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065817f0e', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f0e', 'Lebensmittel und Nahrungsmittel — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', '🔊 Sprechen: Lebensmittel und Nahrungsmittel', 'Roleplay: You are in a Munich Biergarten. Introduce yourself and talk about Food & Ingredients. Your partner (AI) will respond naturally.', 'Food & Ingredients', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', '✏️ Schreiben: Lebensmittel und Nahrungsmittel', 'Write an email to a German friend about "Food & Ingredients". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0e', 'Lebensmittel und Nahrungsmittel — Roleplay', 'Food & Ingredients', 'Student', 'Teacher', 'Practice conversation about Food & Ingredients', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0e', 'Lebensmittel und Nahrungsmittel — Advanced Roleplay', 'Food & Ingredients', 'Customer', 'Assistant', 'Extended conversation about Food & Ingredients', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f0e', 'Lebensmittel und Nahrungsmittel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Lebensmittel und Nahrungsmittel".', 'Creative practice for Food & Ingredients', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', '📚 Hausaufgabe: Lebensmittel und Nahrungsmittel', 'Complete these tasks to reinforce "Lebensmittel und Nahrungsmittel".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Food & Ingredients: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Food & Ingredients. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f0e', '🎯 Great work! In this lesson you learned 81 new words about Food & Ingredients. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["81 vocabulary items about Food & Ingredients","present_tense — grammar explanation and practice","Reading comprehension: text about Food & Ingredients","Listening comprehension: dialogue about Food & Ingredients","Speaking practice: roleplay/discussion about Food & Ingredients","Writing task: text about Food & Ingredients"]', '[{"title":"Lebensmittel und Nahrungsmittel Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Food & Ingredients for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Food & Ingredients."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Food & Ingredients."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Food & Ingredients."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Culture: 🇩🇪 Deutsche Kultur: Food & Ingredients', 'In Germany, Food & Ingredients is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Food & Ingredients, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Food & Ingredients بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Getränke und Mahlzeiten (L-A2-01-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f0d', '00000000-0000-4000-a000-000039b547bd', 'Getränke und Mahlzeiten', 'Beverages, meals of the day, and eating habits.', 'Meals & Drinks', 'vocabulary', '["Understand and use 81 key vocabulary words about Meals & Drinks","Apply present_tense correctly in sentences","Read and comprehend a text about Meals & Drinks","Listen and understand a natural dialogue about Meals & Drinks","Speak about Meals & Drinks with confidence","Write a short text about Meals & Drinks using new vocabulary"]', 45, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f0d', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f0d', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f0d', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f0d', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f0d', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f0d', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f0d', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f0d', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f0d', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f0d', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f0d', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f0d', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f0d', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f0d', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f0d', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f0d', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f0d', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f0d', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f0d', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f0d', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f0d', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f0d', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f0d', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f0d', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f0d', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f0d', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f0d', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f0d', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f0d', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'Welches deutsche Wort bedeutet "bread"?', '["das Ei","der Apfel","der Käse","die Milch"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'Welches deutsche Wort bedeutet "milk"?', '["die Milch","der Apfel","das Brot","der Käse"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'Welches deutsche Wort bedeutet "cheese"?', '["der Apfel","die Milch","das Brot","das Ei"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'Welches deutsche Wort bedeutet "apple"?', '["der Apfel","das Brot","die Milch","der Käse"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'Welches deutsche Wort bedeutet "egg"?', '["das Ei","das Brot","der Apfel","die Milch"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-000065817f0d', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Meals & Drinks. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065817f0d', 'translation', 'Übersetze ins Deutsche: "I am learning about Meals & Drinks."', '["Ich lerne über Meals & Drinks.","Ich lerne Meals & Drinks.","Lerne ich Meals & Drinks."]', 'Ich lerne über Meals & Drinks.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065817f0d', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'Was bedeutet "das Brot" auf Deutsch?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'Welcher Artikel gehört zu "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065817f0d', 'true_false', 'Das Wort "der Käse" gehört zum Thema Meals & Drinks.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-000065817f0d', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065817f0d', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'Wie lautet das deutsche Wort für "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-000065817f0d', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f0d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065817f0d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f0d', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Trinken', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065817f0d', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Trinken', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065817f0d', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Trinken', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065817f0d', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065817f0d', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065817f0d', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065817f0d', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065817f0d', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065817f0d', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065817f0d', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065817f0d', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065817f0d', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065817f0d', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065817f0d', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065817f0d', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065817f0d', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065817f0d', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065817f0d', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065817f0d', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065817f0d', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f0d', 'Getränke und Mahlzeiten — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', '🔊 Sprechen: Getränke und Mahlzeiten', 'Roleplay: You are in a Munich Biergarten. Introduce yourself and talk about Meals & Drinks. Your partner (AI) will respond naturally.', 'Meals & Drinks', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', '✏️ Schreiben: Getränke und Mahlzeiten', 'Write an email to a German friend about "Meals & Drinks". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0d', 'Getränke und Mahlzeiten — Roleplay', 'Meals & Drinks', 'Student', 'Teacher', 'Practice conversation about Meals & Drinks', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0d', 'Getränke und Mahlzeiten — Advanced Roleplay', 'Meals & Drinks', 'Customer', 'Assistant', 'Extended conversation about Meals & Drinks', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f0d', 'Getränke und Mahlzeiten — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Getränke und Mahlzeiten".', 'Creative practice for Meals & Drinks', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', '📚 Hausaufgabe: Getränke und Mahlzeiten', 'Complete these tasks to reinforce "Getränke und Mahlzeiten".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Meals & Drinks: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Meals & Drinks. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f0d', '🎯 Great work! In this lesson you learned 81 new words about Meals & Drinks. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["81 vocabulary items about Meals & Drinks","present_tense — grammar explanation and practice","Reading comprehension: text about Meals & Drinks","Listening comprehension: dialogue about Meals & Drinks","Speaking practice: roleplay/discussion about Meals & Drinks","Writing task: text about Meals & Drinks"]', '[{"title":"Getränke und Mahlzeiten Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Meals & Drinks for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Meals & Drinks."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Meals & Drinks."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Meals & Drinks."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Culture: 🇩🇪 Deutsche Kultur: Meals & Drinks', 'In Germany, Meals & Drinks is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Meals & Drinks, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Meals & Drinks بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Perfekt mit haben und sein (L-A2-01-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f0c', '00000000-0000-4000-a000-000039b547bd', 'Perfekt mit haben und sein', 'Learn the perfect tense to talk about past meals and experiences.', 'Perfect Tense', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 60, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f0c', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f0c', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f0c', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f0c', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f0c', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f0c', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f0c', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f0c', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f0c', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f0c', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f0c', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f0c', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f0c', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f0c', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f0c', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f0c', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f0c', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f0c', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f0c', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f0c', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f0c', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f0c', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f0c', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f0c', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f0c', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f0c', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f0c', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f0c', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f0c', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'Welches deutsche Wort bedeutet "bread"?', '["der Käse","die Milch","das Ei","das Brot"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'Welches deutsche Wort bedeutet "milk"?', '["der Käse","das Brot","das Ei","der Apfel"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'Welches deutsche Wort bedeutet "cheese"?', '["das Brot","der Käse","die Milch","das Ei"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'Welches deutsche Wort bedeutet "apple"?', '["der Apfel","das Ei","der Käse","das Brot"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'Welches deutsche Wort bedeutet "egg"?', '["das Ei","der Apfel","der Käse","das Brot"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-000065817f0c', 'fill_gap', 'Ergänze den Satz: Ich ___ gern Perfect Tense. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065817f0c', 'translation', 'Übersetze ins Deutsche: "I am learning about Perfect Tense."', '["Ich lerne über Perfect Tense.","Ich lerne Perfect Tense.","Lerne ich Perfect Tense."]', 'Ich lerne über Perfect Tense.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065817f0c', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'Was bedeutet "das Brot" auf Deutsch?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'Welcher Artikel gehört zu "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065817f0c', 'true_false', 'Das Wort "der Käse" gehört zum Thema Perfect Tense.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-000065817f0c', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065817f0c', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'Wie lautet das deutsche Wort für "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-000065817f0c', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f0c', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065817f0c', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f0c', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Trinken', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065817f0c', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Trinken', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065817f0c', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Trinken', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065817f0c', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065817f0c', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065817f0c', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065817f0c', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065817f0c', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065817f0c', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065817f0c', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065817f0c', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065817f0c', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065817f0c', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065817f0c', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065817f0c', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065817f0c', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065817f0c', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065817f0c', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065817f0c', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065817f0c', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f0c', 'Perfekt mit haben und sein — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', '🔊 Sprechen: Perfekt mit haben und sein', 'Roleplay: You are in a Munich Biergarten. Introduce yourself and talk about Perfect Tense. Your partner (AI) will respond naturally.', 'Perfect Tense', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', '✏️ Schreiben: Perfekt mit haben und sein', 'Write an email to a German friend about "Perfect Tense". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0c', 'Perfekt mit haben und sein — Roleplay', 'Perfect Tense', 'Student', 'Teacher', 'Practice conversation about Perfect Tense', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0c', 'Perfekt mit haben und sein — Advanced Roleplay', 'Perfect Tense', 'Customer', 'Assistant', 'Extended conversation about Perfect Tense', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f0c', 'Perfekt mit haben und sein — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Perfekt mit haben und sein".', 'Creative practice for Perfect Tense', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', '📚 Hausaufgabe: Perfekt mit haben und sein', 'Complete these tasks to reinforce "Perfekt mit haben und sein".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Perfect Tense: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Perfect Tense. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f0c', '🎯 Great work! In this lesson you learned 81 new words about Perfect Tense. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["81 vocabulary items about Perfect Tense","present_tense — grammar explanation and practice","Reading comprehension: text about Perfect Tense","Listening comprehension: dialogue about Perfect Tense","Speaking practice: roleplay/discussion about Perfect Tense","Writing task: text about Perfect Tense"]', '[{"title":"Perfekt mit haben und sein Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Perfect Tense for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Perfect Tense."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Perfect Tense."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Perfect Tense."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Culture: 🇩🇪 Deutsche Kultur: Perfect Tense', 'In Germany, Perfect Tense is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Perfect Tense, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Perfect Tense بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Im Restaurant bestellen (L-A2-01-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f0b', '00000000-0000-4000-a000-000039b547bd', 'Im Restaurant bestellen', 'Practice ordering food, asking about the menu, and paying.', 'Restaurant Ordering', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f0b', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f0b', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f0b', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f0b', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f0b', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f0b', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f0b', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f0b', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f0b', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f0b', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f0b', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f0b', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f0b', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f0b', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f0b', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f0b', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f0b', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f0b', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f0b', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f0b', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f0b', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f0b', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f0b', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f0b', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f0b', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f0b', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f0b', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f0b', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f0b', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'Welches deutsche Wort bedeutet "bread"?', '["der Käse","das Brot","der Apfel","die Milch"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'Welches deutsche Wort bedeutet "milk"?', '["der Apfel","der Käse","das Brot","die Milch"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'Welches deutsche Wort bedeutet "cheese"?', '["der Käse","das Brot","die Milch","der Apfel"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'Welches deutsche Wort bedeutet "apple"?', '["die Milch","das Brot","der Käse","das Ei"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'Welches deutsche Wort bedeutet "egg"?', '["der Käse","der Apfel","das Ei","das Brot"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-000065817f0b', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Restaurant Ordering. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065817f0b', 'translation', 'Übersetze ins Deutsche: "I am learning about Restaurant Ordering."', '["Ich lerne über Restaurant Ordering.","Ich lerne Restaurant Ordering.","Lerne ich Restaurant Ordering."]', 'Ich lerne über Restaurant Ordering.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065817f0b', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'Was bedeutet "das Brot" auf Deutsch?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'Welcher Artikel gehört zu "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065817f0b', 'true_false', 'Das Wort "der Käse" gehört zum Thema Restaurant Ordering.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-000065817f0b', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065817f0b', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'Wie lautet das deutsche Wort für "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-000065817f0b', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f0b', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065817f0b', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f0b', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Trinken', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065817f0b', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Trinken', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065817f0b', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Trinken', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065817f0b', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065817f0b', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065817f0b', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065817f0b', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065817f0b', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065817f0b', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065817f0b', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065817f0b', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065817f0b', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065817f0b', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065817f0b', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065817f0b', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065817f0b', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065817f0b', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065817f0b', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065817f0b', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065817f0b', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f0b', 'Im Restaurant bestellen — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', '🔊 Sprechen: Im Restaurant bestellen', 'Roleplay: You are in a Munich Biergarten. Introduce yourself and talk about Restaurant Ordering. Your partner (AI) will respond naturally.', 'Restaurant Ordering', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', '✏️ Schreiben: Im Restaurant bestellen', 'Write an email to a German friend about "Restaurant Ordering". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0b', 'Im Restaurant bestellen — Roleplay', 'Restaurant Ordering', 'Student', 'Teacher', 'Practice conversation about Restaurant Ordering', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0b', 'Im Restaurant bestellen — Advanced Roleplay', 'Restaurant Ordering', 'Customer', 'Assistant', 'Extended conversation about Restaurant Ordering', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f0b', 'Im Restaurant bestellen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Im Restaurant bestellen".', 'Creative practice for Restaurant Ordering', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', '📚 Hausaufgabe: Im Restaurant bestellen', 'Complete these tasks to reinforce "Im Restaurant bestellen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Restaurant Ordering: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Restaurant Ordering. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f0b', '🎯 Great work! In this lesson you learned 81 new words about Restaurant Ordering. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["81 vocabulary items about Restaurant Ordering","present_tense — grammar explanation and practice","Reading comprehension: text about Restaurant Ordering","Listening comprehension: dialogue about Restaurant Ordering","Speaking practice: roleplay/discussion about Restaurant Ordering","Writing task: text about Restaurant Ordering"]', '[{"title":"Im Restaurant bestellen Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Restaurant Ordering for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Restaurant Ordering."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Restaurant Ordering."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Restaurant Ordering."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Culture: 🇩🇪 Deutsche Kultur: Restaurant Ordering', 'In Germany, Restaurant Ordering is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Restaurant Ordering, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Restaurant Ordering بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0b', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Kochen und Rezepte (L-A2-01-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f0a', '00000000-0000-4000-a000-000039b547bd', 'Kochen und Rezepte', 'Learn cooking verbs, recipes, and kitchen vocabulary.', 'Cooking & Recipes', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f0a', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f0a', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f0a', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f0a', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f0a', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f0a', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f0a', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f0a', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f0a', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f0a', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f0a', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f0a', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f0a', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f0a', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f0a', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f0a', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f0a', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f0a', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f0a', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f0a', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f0a', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f0a', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f0a', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f0a', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f0a', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f0a', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f0a', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f0a', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f0a', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'Welches deutsche Wort bedeutet "bread"?', '["das Ei","der Käse","die Milch","der Apfel"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'Welches deutsche Wort bedeutet "milk"?', '["das Ei","der Käse","der Apfel","das Brot"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'Welches deutsche Wort bedeutet "cheese"?', '["das Ei","der Apfel","die Milch","das Brot"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'Welches deutsche Wort bedeutet "apple"?', '["der Apfel","das Ei","das Brot","die Milch"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'Welches deutsche Wort bedeutet "egg"?', '["das Ei","das Brot","der Käse","der Apfel"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-000065817f0a', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Cooking & Recipes. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065817f0a', 'translation', 'Übersetze ins Deutsche: "I am learning about Cooking & Recipes."', '["Ich lerne über Cooking & Recipes.","Ich lerne Cooking & Recipes.","Lerne ich Cooking & Recipes."]', 'Ich lerne über Cooking & Recipes.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065817f0a', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'Was bedeutet "das Brot" auf Deutsch?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'Welcher Artikel gehört zu "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065817f0a', 'true_false', 'Das Wort "der Käse" gehört zum Thema Cooking & Recipes.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-000065817f0a', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065817f0a', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'Wie lautet das deutsche Wort für "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-000065817f0a', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f0a', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065817f0a', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f0a', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Trinken', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065817f0a', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Trinken', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065817f0a', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Trinken', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065817f0a', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065817f0a', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065817f0a', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065817f0a', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065817f0a', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065817f0a', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065817f0a', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065817f0a', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065817f0a', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065817f0a', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065817f0a', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065817f0a', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065817f0a', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065817f0a', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065817f0a', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065817f0a', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065817f0a', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f0a', 'Kochen und Rezepte — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', '🔊 Sprechen: Kochen und Rezepte', 'Roleplay: You are in a Munich Biergarten. Introduce yourself and talk about Cooking & Recipes. Your partner (AI) will respond naturally.', 'Cooking & Recipes', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', '✏️ Schreiben: Kochen und Rezepte', 'Write an email to a German friend about "Cooking & Recipes". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0a', 'Kochen und Rezepte — Roleplay', 'Cooking & Recipes', 'Student', 'Teacher', 'Practice conversation about Cooking & Recipes', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f0a', 'Kochen und Rezepte — Advanced Roleplay', 'Cooking & Recipes', 'Customer', 'Assistant', 'Extended conversation about Cooking & Recipes', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f0a', 'Kochen und Rezepte — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kochen und Rezepte".', 'Creative practice for Cooking & Recipes', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', '📚 Hausaufgabe: Kochen und Rezepte', 'Complete these tasks to reinforce "Kochen und Rezepte".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Cooking & Recipes: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Cooking & Recipes. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f0a', '🎯 Great work! In this lesson you learned 81 new words about Cooking & Recipes. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["81 vocabulary items about Cooking & Recipes","present_tense — grammar explanation and practice","Reading comprehension: text about Cooking & Recipes","Listening comprehension: dialogue about Cooking & Recipes","Speaking practice: roleplay/discussion about Cooking & Recipes","Writing task: text about Cooking & Recipes"]', '[{"title":"Kochen und Rezepte Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Cooking & Recipes for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Cooking & Recipes."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Cooking & Recipes."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Cooking & Recipes."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Culture: 🇩🇪 Deutsche Kultur: Cooking & Recipes', 'In Germany, Cooking & Recipes is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Cooking & Recipes, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Cooking & Recipes بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f0a', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: Test: Essen und Trinken (L-A2-01-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065817f09', '00000000-0000-4000-a000-000039b547bd', 'Test: Essen und Trinken', 'Module test on food, drink, and restaurant topics.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'das Brot', 'الخبز', 'bread', 'le pain', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 'A1', 1),
  ('00000000-0000-4000-a000-000065817f09', 'die Milch', 'الحليب', 'milk', 'le lait', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 'A1', 2),
  ('00000000-0000-4000-a000-000065817f09', 'der Käse', 'الجبن', 'cheese', 'le fromage', 'der', NULL, 'noun', 'Der Käse schmeckt gut.', 'The cheese tastes good.', 'A1', 3),
  ('00000000-0000-4000-a000-000065817f09', 'der Apfel', 'التفاح', 'apple', 'la pomme', 'der', 'die Äpfel', 'noun', 'Der Apfel ist rot.', 'The apple is red.', 'A1', 4),
  ('00000000-0000-4000-a000-000065817f09', 'das Ei', 'البيضة', 'egg', 'l''œuf', 'das', 'die Eier', 'noun', 'Ich esse ein Ei zum Frühstück.', 'I eat an egg for breakfast.', 'A1', 5),
  ('00000000-0000-4000-a000-000065817f09', 'das Obst', 'الفاكهة', 'fruit', 'les fruits', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 'A1', 6),
  ('00000000-0000-4000-a000-000065817f09', 'das Gemüse', 'الخضروات', 'vegetables', 'les légumes', 'das', NULL, 'noun', 'Ich kaufe Gemüse auf dem Markt.', 'I buy vegetables at the market.', 'A1', 7),
  ('00000000-0000-4000-a000-000065817f09', 'kochen', 'يطبخ', 'to cook', 'cuisiner', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 'A1', 8),
  ('00000000-0000-4000-a000-000065817f09', 'der Fisch', 'السمك', 'fish', 'le poisson', 'der', 'die Fische', 'noun', 'Der Fisch ist frisch.', 'The fish is fresh.', 'A1', 9),
  ('00000000-0000-4000-a000-000065817f09', 'das Fleisch', 'اللحم', 'meat', 'la viande', 'das', NULL, 'noun', 'Ich esse nicht viel Fleisch.', 'I do not eat much meat.', 'A1', 10),
  ('00000000-0000-4000-a000-000065817f09', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 11),
  ('00000000-0000-4000-a000-000065817f09', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 12),
  ('00000000-0000-4000-a000-000065817f09', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 13),
  ('00000000-0000-4000-a000-000065817f09', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 14),
  ('00000000-0000-4000-a000-000065817f09', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 15),
  ('00000000-0000-4000-a000-000065817f09', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 16),
  ('00000000-0000-4000-a000-000065817f09', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 17),
  ('00000000-0000-4000-a000-000065817f09', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 18),
  ('00000000-0000-4000-a000-000065817f09', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 19),
  ('00000000-0000-4000-a000-000065817f09', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 20),
  ('00000000-0000-4000-a000-000065817f09', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 21),
  ('00000000-0000-4000-a000-000065817f09', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 22),
  ('00000000-0000-4000-a000-000065817f09', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 23),
  ('00000000-0000-4000-a000-000065817f09', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 24),
  ('00000000-0000-4000-a000-000065817f09', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 25),
  ('00000000-0000-4000-a000-000065817f09', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 26),
  ('00000000-0000-4000-a000-000065817f09', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 27),
  ('00000000-0000-4000-a000-000065817f09', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 28),
  ('00000000-0000-4000-a000-000065817f09', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 29),
  ('00000000-0000-4000-a000-000065817f09', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'Welches deutsche Wort bedeutet "bread"?', '["der Käse","das Ei","der Apfel","die Milch"]', 'das Brot', '"bread" = "das Brot" in German. Article: das Plural: die Brote', 1, 1),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'Welches deutsche Wort bedeutet "milk"?', '["die Milch","der Apfel","das Ei","das Brot"]', 'die Milch', '"milk" = "die Milch" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'Welches deutsche Wort bedeutet "cheese"?', '["der Apfel","das Ei","die Milch","das Brot"]', 'der Käse', '"cheese" = "der Käse" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'Welches deutsche Wort bedeutet "apple"?', '["der Apfel","das Brot","das Ei","die Milch"]', 'der Apfel', '"apple" = "der Apfel" in German. Article: der Plural: die Äpfel', 1, 4),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'Welches deutsche Wort bedeutet "egg"?', '["das Brot","das Ei","der Käse","die Milch"]', 'das Ei', '"egg" = "das Ei" in German. Article: das Plural: die Eier', 1, 5),
  ('00000000-0000-4000-a000-000065817f09', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065817f09', 'translation', 'Übersetze ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065817f09', 'matching', 'Match: Which word pairs are correct?', '["das Brot - bread, die Milch - milk"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'Was bedeutet "das Brot" auf Deutsch?', '["bread","to run","beautiful","yesterday"]', 'bread', 1, 1),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'Welcher Artikel gehört zu "die Milch"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065817f09', 'true_false', 'Das Wort "der Käse" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-000065817f09', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065817f09', 'fill_blank', 'Complete: Ich ___ (apple) Deutsch.', '["der Apfel","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'Wie lautet das deutsche Wort für "egg"?', '["das Ei","das Obst","das Gemüse","kochen"]', 'das Ei', 1, 7),
  ('00000000-0000-4000-a000-000065817f09', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065817f09', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065817f09', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Ich möchte bitte bestellen.', 'I would like to order, please.', 'أريد أن أطلب من فضلك.', NULL, 'Used in Essen und Trinken', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065817f09', 'Was empfehlen Sie?', 'What do you recommend?', 'ماذا تنصحون؟', NULL, 'Used in Essen und Trinken', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065817f09', 'Die Rechnung, bitte!', 'The bill, please!', 'الفاتورة من فضلك!', NULL, 'Used in Essen und Trinken', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065817f09', 'Es hat sehr gut geschmeckt!', 'It was delicious!', 'كان لذيذاً جداً!', NULL, 'Used in Essen und Trinken', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'das das Brot (die Brote)', 'bread — الخبز', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065817f09', 'die die Milch', 'milk — الحليب', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065817f09', 'der der Käse', 'cheese — الجبن', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065817f09', 'der der Apfel (die Äpfel)', 'apple — التفاح', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065817f09', 'das das Ei (die Eier)', 'egg — البيضة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065817f09', 'das das Obst', 'fruit — الفاكهة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065817f09', 'das das Gemüse', 'vegetables — الخضروات', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065817f09', 'kochen', 'to cook — يطبخ', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065817f09', 'der der Fisch (die Fische)', 'fish — السمك', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065817f09', 'das das Fleisch', 'meat — اللحم', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065817f09', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065817f09', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065817f09', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065817f09', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065817f09', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065817f09', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065817f09', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065817f09', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065817f09', 'Test: Essen und Trinken — Leseübung', 'Heute gehe ich einkaufen. Ich brauche Lebensmittel. Ich gehe zum Supermarkt. Ich kaufe Brot, Milch, Käse und Eier. Auch Obst und Gemüse brauche ich. Die Äpfel sehen gut aus. Ich nehme fünf Äpfel. Der Käse kostet 3 Euro. Alles zusammen kostet 15 Euro. Ich bezahle an der Kasse. Die Verkäuferin ist freundlich. Dann gehe ich nach Hause.', 'Today I go shopping. I need groceries. I go to the supermarket. I buy bread, milk, cheese and eggs. I also need fruit and vegetables. The apples look good. I take five apples. The cheese costs 3 euros. Everything together costs 15 euros. I pay at the checkout. The saleswoman is friendly. Then I go home.', 'اليوم أذهب للتسوق. أحتاج مواد غذائية. أذهب إلى السوبرماركت. أشتري خبزاً وحليباً وجبناً وبيضاً. أحتاج أيضاً فاكهة وخضروات. التفاح يبدو جيداً. آخذ خمس تفاحات. الجبن يكلف 3 يورو. المجموع الكلي 15 يورو. أدفع عند الصندوق. البائعة ودودة. ثم أعود إلى المنزل.', NULL, 57, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Kellner]: فوراً. شهية طيبة!', '[Kellner]: 

[Gast]: 

[Kellner]: 

[Gast]: 

[Kellner]: ', 60, 2, 'Essen und Trinken');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065817f09', '🔊 Sprechen: Test: Essen und Trinken', 'Roleplay: You are in a Munich Biergarten. Introduce yourself and talk about Module Test. Your partner (AI) will respond naturally.', 'Module Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065817f09', '✏️ Schreiben: Test: Essen und Trinken', 'Write an email to a German friend about "Module Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f09', 'Test: Essen und Trinken — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065817f09', 'Test: Essen und Trinken — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Brot','die Milch','der Käse','der Apfel','das Ei','das Obst','das Gemüse','kochen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065817f09', 'Test: Essen und Trinken — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Essen und Trinken".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065817f09', '📚 Hausaufgabe: Test: Essen und Trinken', 'Complete these tasks to reinforce "Test: Essen und Trinken".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065817f09', '🎯 Great work! In this lesson you learned 81 new words about Module Test. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["81 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Essen und Trinken Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Brot (bread)','die Milch (milk)','der Käse (cheese)','der Apfel (apple)','das Ei (egg)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'translation', 'Translate to German: "I use the word "bread" in a sentence about Module Test."', '[]', 'Ich kaufe ein Brot.', 'Use das  "das Brot" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'translation', 'Translate to German: "I use the word "milk" in a sentence about Module Test."', '[]', 'Die Milch ist frisch.', 'Use die  "die Milch" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'translation', 'Translate to German: "I use the word "cheese" in a sentence about Module Test."', '[]', 'Der Käse schmeckt gut.', 'Use der  "der Käse" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'In Germany, Module Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Module Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Module Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065817f09', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"der\" for all food nouns","correction":"Learn article + noun as one unit for every food word","explanation":"Arabic food words don''t have inherent gender."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Module 2: Kleidung und Mode
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547be', 'A2', 'Kleidung und Mode', 'Name clothing items, describe colors and sizes, and go shopping.', '["Name clothing items and accessories","Describe colors, sizes, and materials","Use accusative and dative correctly","Use comparative and superlative","Shop for clothes and make returns"]', 2, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Kleidungsstücke (L-A2-02-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aaf', '00000000-0000-4000-a000-000039b547be', 'Kleidungsstücke', 'Learn clothing items and their articles.', 'Clothing', 'vocabulary', '["Understand and use 79 key vocabulary words about Clothing","Apply present_tense correctly in sentences","Read and comprehend a text about Clothing","Listen and understand a natural dialogue about Clothing","Speak about Clothing with confidence","Write a short text about Clothing using new vocabulary"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'der Mantel', 'المعطف', 'coat', NULL, 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aaf', 'das Hemd', 'القميص', 'shirt', NULL, 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aaf', 'die Hose', 'البنطلون', 'pants', NULL, 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aaf', 'die Jacke', 'الجاكيت', 'jacket', NULL, 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aaf', 'der Schuh', 'الحذاء', 'shoe', NULL, 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aaf', 'tragen', 'يرتدي', 'to wear', NULL, NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aaf', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aaf', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aaf', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aaf', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aaf', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aaf', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aaf', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aaf', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aaf', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aaf', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aaf', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aaf', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aaf', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aaf', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aaf', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aaf', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aaf', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aaf', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aaf', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aaf', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aaf', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aaf', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aaf', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aaf', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'Welches deutsche Wort bedeutet "coat"?', '["die Jacke","die Hose","der Schuh","das Hemd"]', 'der Mantel', '"coat" = "der Mantel" in German. Article: der Plural: die Mäntel', 1, 1),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'Welches deutsche Wort bedeutet "shirt"?', '["die Hose","die Jacke","das Hemd","der Mantel"]', 'das Hemd', '"shirt" = "das Hemd" in German. Article: das Plural: die Hemden', 1, 2),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'Welches deutsche Wort bedeutet "pants"?', '["der Schuh","die Jacke","das Hemd","der Mantel"]', 'die Hose', '"pants" = "die Hose" in German. Article: die Plural: die Hosen', 1, 3),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'Welches deutsche Wort bedeutet "jacket"?', '["die Jacke","der Mantel","der Schuh","das Hemd"]', 'die Jacke', '"jacket" = "die Jacke" in German. Article: die Plural: die Jacken', 1, 4),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'Welches deutsche Wort bedeutet "shoe"?', '["der Mantel","das Hemd","die Jacke","die Hose"]', 'der Schuh', '"shoe" = "der Schuh" in German. Article: der Plural: die Schuhe', 1, 5),
  ('00000000-0000-4000-a000-000065810aaf', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Clothing. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065810aaf', 'translation', 'Übersetze ins Deutsche: "I am learning about Clothing."', '["Ich lerne über Clothing.","Ich lerne Clothing.","Lerne ich Clothing."]', 'Ich lerne über Clothing.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065810aaf', 'matching', 'Match: Which word pairs are correct?', '["der Mantel - coat, das Hemd - shirt"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'Was bedeutet "der Mantel" auf Deutsch?', '["coat","to run","beautiful","yesterday"]', 'coat', 1, 1),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'Welcher Artikel gehört zu "das Hemd"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-000065810aaf', 'true_false', 'Das Wort "die Hose" gehört zum Thema Clothing.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-000065810aaf', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065810aaf', 'fill_blank', 'Complete: Ich ___ (jacket) Deutsch.', '["die Jacke","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'Wie lautet das deutsche Wort für "shoe"?', '["der Schuh","tragen","anziehen","einkaufen"]', 'der Schuh', 1, 7),
  ('00000000-0000-4000-a000-000065810aaf', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aaf', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065810aaf', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aaf', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kleidung und Mode', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065810aaf', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kleidung und Mode', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065810aaf', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kleidung und Mode', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'der der Mantel (die Mäntel)', 'coat — المعطف', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065810aaf', 'das das Hemd (die Hemden)', 'shirt — القميص', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065810aaf', 'die die Hose (die Hosen)', 'pants — البنطلون', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065810aaf', 'die die Jacke (die Jacken)', 'jacket — الجاكيت', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065810aaf', 'der der Schuh (die Schuhe)', 'shoe — الحذاء', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065810aaf', 'tragen', 'to wear — يرتدي', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065810aaf', 'anziehen', 'to put on — يرتدي/يلبس', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065810aaf', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065810aaf', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065810aaf', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065810aaf', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065810aaf', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065810aaf', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065810aaf', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065810aaf', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065810aaf', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065810aaf', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065810aaf', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aaf', 'Kleidungsstücke — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', '🔊 Sprechen: Kleidungsstücke', 'Roleplay: You are in a Berlin bookstore. Introduce yourself and talk about Clothing. Your partner (AI) will respond naturally.', 'Clothing', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', '✏️ Schreiben: Kleidungsstücke', 'Write an email to a German friend about "Clothing". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aaf', 'Kleidungsstücke — Roleplay', 'Clothing', 'Student', 'Teacher', 'Practice conversation about Clothing', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aaf', 'Kleidungsstücke — Advanced Roleplay', 'Clothing', 'Customer', 'Assistant', 'Extended conversation about Clothing', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aaf', 'Kleidungsstücke — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kleidungsstücke".', 'Creative practice for Clothing', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', '📚 Hausaufgabe: Kleidungsstücke', 'Complete these tasks to reinforce "Kleidungsstücke".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Clothing: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Clothing. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aaf', '🎯 Great work! In this lesson you learned 79 new words about Clothing. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["79 vocabulary items about Clothing","present_tense — grammar explanation and practice","Reading comprehension: text about Clothing","Listening comprehension: dialogue about Clothing","Speaking practice: roleplay/discussion about Clothing","Writing task: text about Clothing"]', '[{"title":"Kleidungsstücke Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Mantel (coat)','das Hemd (shirt)','die Hose (pants)','die Jacke (jacket)','der Schuh (shoe)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Clothing for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'translation', 'Translate to German: "I use the word "coat" in a sentence about Clothing."', '[]', 'Der Mantel ist warm.', 'Use der  "der Mantel" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'translation', 'Translate to German: "I use the word "shirt" in a sentence about Clothing."', '[]', 'Das Hemd ist blau.', 'Use das  "das Hemd" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'translation', 'Translate to German: "I use the word "pants" in a sentence about Clothing."', '[]', 'Die Hose passt gut.', 'Use die  "die Hose" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Culture: 🇩🇪 Deutsche Kultur: Clothing', 'In Germany, Clothing is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Clothing, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Clothing بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaf', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Farben, Größen und Materialien (L-A2-02-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aae', '00000000-0000-4000-a000-000039b547be', 'Farben, Größen und Materialien', 'Describe colors, sizes, and what clothes are made of.', 'Colors & Materials', 'vocabulary', '["Understand and use 79 key vocabulary words about Colors & Materials","Apply present_tense correctly in sentences","Read and comprehend a text about Colors & Materials","Listen and understand a natural dialogue about Colors & Materials","Speak about Colors & Materials with confidence","Write a short text about Colors & Materials using new vocabulary"]', 45, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'der Mantel', 'المعطف', 'coat', NULL, 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aae', 'das Hemd', 'القميص', 'shirt', NULL, 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aae', 'die Hose', 'البنطلون', 'pants', NULL, 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aae', 'die Jacke', 'الجاكيت', 'jacket', NULL, 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aae', 'der Schuh', 'الحذاء', 'shoe', NULL, 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aae', 'tragen', 'يرتدي', 'to wear', NULL, NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aae', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aae', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aae', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aae', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aae', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aae', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aae', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aae', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aae', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aae', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aae', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aae', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aae', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aae', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aae', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aae', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aae', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aae', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aae', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aae', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aae', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aae', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aae', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aae', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'Welches deutsche Wort bedeutet "coat"?', '["die Jacke","die Hose","der Schuh","der Mantel"]', 'der Mantel', '"coat" = "der Mantel" in German. Article: der Plural: die Mäntel', 1, 1),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'Welches deutsche Wort bedeutet "shirt"?', '["der Schuh","die Jacke","das Hemd","der Mantel"]', 'das Hemd', '"shirt" = "das Hemd" in German. Article: das Plural: die Hemden', 1, 2),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'Welches deutsche Wort bedeutet "pants"?', '["das Hemd","der Mantel","der Schuh","die Hose"]', 'die Hose', '"pants" = "die Hose" in German. Article: die Plural: die Hosen', 1, 3),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'Welches deutsche Wort bedeutet "jacket"?', '["die Jacke","die Hose","der Schuh","der Mantel"]', 'die Jacke', '"jacket" = "die Jacke" in German. Article: die Plural: die Jacken', 1, 4),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'Welches deutsche Wort bedeutet "shoe"?', '["der Schuh","die Hose","das Hemd","der Mantel"]', 'der Schuh', '"shoe" = "der Schuh" in German. Article: der Plural: die Schuhe', 1, 5),
  ('00000000-0000-4000-a000-000065810aae', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Colors & Materials. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065810aae', 'translation', 'Übersetze ins Deutsche: "I am learning about Colors & Materials."', '["Ich lerne über Colors & Materials.","Ich lerne Colors & Materials.","Lerne ich Colors & Materials."]', 'Ich lerne über Colors & Materials.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065810aae', 'matching', 'Match: Which word pairs are correct?', '["der Mantel - coat, das Hemd - shirt"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'Was bedeutet "der Mantel" auf Deutsch?', '["coat","to run","beautiful","yesterday"]', 'coat', 1, 1),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'Welcher Artikel gehört zu "das Hemd"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-000065810aae', 'true_false', 'Das Wort "die Hose" gehört zum Thema Colors & Materials.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-000065810aae', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065810aae', 'fill_blank', 'Complete: Ich ___ (jacket) Deutsch.', '["die Jacke","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'Wie lautet das deutsche Wort für "shoe"?', '["der Schuh","tragen","anziehen","einkaufen"]', 'der Schuh', 1, 7),
  ('00000000-0000-4000-a000-000065810aae', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aae', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065810aae', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aae', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kleidung und Mode', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065810aae', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kleidung und Mode', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065810aae', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kleidung und Mode', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'der der Mantel (die Mäntel)', 'coat — المعطف', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065810aae', 'das das Hemd (die Hemden)', 'shirt — القميص', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065810aae', 'die die Hose (die Hosen)', 'pants — البنطلون', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065810aae', 'die die Jacke (die Jacken)', 'jacket — الجاكيت', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065810aae', 'der der Schuh (die Schuhe)', 'shoe — الحذاء', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065810aae', 'tragen', 'to wear — يرتدي', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065810aae', 'anziehen', 'to put on — يرتدي/يلبس', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065810aae', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065810aae', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065810aae', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065810aae', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065810aae', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065810aae', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065810aae', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065810aae', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065810aae', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065810aae', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065810aae', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aae', 'Farben, Größen und Materialien — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aae', '🔊 Sprechen: Farben, Größen und Materialien', 'Roleplay: You are in a Berlin bookstore. Introduce yourself and talk about Colors & Materials. Your partner (AI) will respond naturally.', 'Colors & Materials', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aae', '✏️ Schreiben: Farben, Größen und Materialien', 'Write an email to a German friend about "Colors & Materials". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aae', 'Farben, Größen und Materialien — Roleplay', 'Colors & Materials', 'Student', 'Teacher', 'Practice conversation about Colors & Materials', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aae', 'Farben, Größen und Materialien — Advanced Roleplay', 'Colors & Materials', 'Customer', 'Assistant', 'Extended conversation about Colors & Materials', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aae', 'Farben, Größen und Materialien — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Farben, Größen und Materialien".', 'Creative practice for Colors & Materials', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aae', '📚 Hausaufgabe: Farben, Größen und Materialien', 'Complete these tasks to reinforce "Farben, Größen und Materialien".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Colors & Materials: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Colors & Materials. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aae', '🎯 Great work! In this lesson you learned 79 new words about Colors & Materials. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["79 vocabulary items about Colors & Materials","present_tense — grammar explanation and practice","Reading comprehension: text about Colors & Materials","Listening comprehension: dialogue about Colors & Materials","Speaking practice: roleplay/discussion about Colors & Materials","Writing task: text about Colors & Materials"]', '[{"title":"Farben, Größen und Materialien Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Mantel (coat)','das Hemd (shirt)','die Hose (pants)','die Jacke (jacket)','der Schuh (shoe)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Colors & Materials for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'translation', 'Translate to German: "I use the word "coat" in a sentence about Colors & Materials."', '[]', 'Der Mantel ist warm.', 'Use der  "der Mantel" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'translation', 'Translate to German: "I use the word "shirt" in a sentence about Colors & Materials."', '[]', 'Das Hemd ist blau.', 'Use das  "das Hemd" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'translation', 'Translate to German: "I use the word "pants" in a sentence about Colors & Materials."', '[]', 'Die Hose passt gut.', 'Use die  "die Hose" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Culture: 🇩🇪 Deutsche Kultur: Colors & Materials', 'In Germany, Colors & Materials is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Colors & Materials, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Colors & Materials بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aae', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Einkaufen: Kleidung kaufen (L-A2-02-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aad', '00000000-0000-4000-a000-000039b547be', 'Einkaufen: Kleidung kaufen', 'Practice shopping for clothes, asking for sizes, and paying.', 'Clothes Shopping', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'der Mantel', 'المعطف', 'coat', NULL, 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aad', 'das Hemd', 'القميص', 'shirt', NULL, 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aad', 'die Hose', 'البنطلون', 'pants', NULL, 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aad', 'die Jacke', 'الجاكيت', 'jacket', NULL, 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aad', 'der Schuh', 'الحذاء', 'shoe', NULL, 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aad', 'tragen', 'يرتدي', 'to wear', NULL, NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aad', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aad', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aad', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aad', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aad', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aad', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aad', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aad', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aad', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aad', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aad', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aad', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aad', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aad', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aad', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aad', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aad', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aad', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aad', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aad', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aad', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aad', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aad', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aad', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'Welches deutsche Wort bedeutet "coat"?', '["der Mantel","das Hemd","die Hose","die Jacke"]', 'der Mantel', '"coat" = "der Mantel" in German. Article: der Plural: die Mäntel', 1, 1),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'Welches deutsche Wort bedeutet "shirt"?', '["der Schuh","die Jacke","die Hose","der Mantel"]', 'das Hemd', '"shirt" = "das Hemd" in German. Article: das Plural: die Hemden', 1, 2),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'Welches deutsche Wort bedeutet "pants"?', '["der Mantel","die Jacke","die Hose","das Hemd"]', 'die Hose', '"pants" = "die Hose" in German. Article: die Plural: die Hosen', 1, 3),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'Welches deutsche Wort bedeutet "jacket"?', '["die Jacke","der Mantel","das Hemd","die Hose"]', 'die Jacke', '"jacket" = "die Jacke" in German. Article: die Plural: die Jacken', 1, 4),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'Welches deutsche Wort bedeutet "shoe"?', '["das Hemd","der Mantel","die Hose","der Schuh"]', 'der Schuh', '"shoe" = "der Schuh" in German. Article: der Plural: die Schuhe', 1, 5),
  ('00000000-0000-4000-a000-000065810aad', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Clothes Shopping. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065810aad', 'translation', 'Übersetze ins Deutsche: "I am learning about Clothes Shopping."', '["Ich lerne über Clothes Shopping.","Ich lerne Clothes Shopping.","Lerne ich Clothes Shopping."]', 'Ich lerne über Clothes Shopping.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065810aad', 'matching', 'Match: Which word pairs are correct?', '["der Mantel - coat, das Hemd - shirt"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'Was bedeutet "der Mantel" auf Deutsch?', '["coat","to run","beautiful","yesterday"]', 'coat', 1, 1),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'Welcher Artikel gehört zu "das Hemd"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-000065810aad', 'true_false', 'Das Wort "die Hose" gehört zum Thema Clothes Shopping.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-000065810aad', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065810aad', 'fill_blank', 'Complete: Ich ___ (jacket) Deutsch.', '["die Jacke","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'Wie lautet das deutsche Wort für "shoe"?', '["der Schuh","tragen","anziehen","einkaufen"]', 'der Schuh', 1, 7),
  ('00000000-0000-4000-a000-000065810aad', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aad', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065810aad', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aad', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kleidung und Mode', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065810aad', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kleidung und Mode', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065810aad', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kleidung und Mode', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'der der Mantel (die Mäntel)', 'coat — المعطف', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065810aad', 'das das Hemd (die Hemden)', 'shirt — القميص', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065810aad', 'die die Hose (die Hosen)', 'pants — البنطلون', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065810aad', 'die die Jacke (die Jacken)', 'jacket — الجاكيت', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065810aad', 'der der Schuh (die Schuhe)', 'shoe — الحذاء', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065810aad', 'tragen', 'to wear — يرتدي', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065810aad', 'anziehen', 'to put on — يرتدي/يلبس', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065810aad', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065810aad', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065810aad', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065810aad', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065810aad', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065810aad', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065810aad', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065810aad', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065810aad', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065810aad', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065810aad', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aad', 'Einkaufen: Kleidung kaufen — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aad', '🔊 Sprechen: Einkaufen: Kleidung kaufen', 'Roleplay: You are in a Berlin bookstore. Introduce yourself and talk about Clothes Shopping. Your partner (AI) will respond naturally.', 'Clothes Shopping', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aad', '✏️ Schreiben: Einkaufen: Kleidung kaufen', 'Write an email to a German friend about "Clothes Shopping". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aad', 'Einkaufen: Kleidung kaufen — Roleplay', 'Clothes Shopping', 'Student', 'Teacher', 'Practice conversation about Clothes Shopping', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aad', 'Einkaufen: Kleidung kaufen — Advanced Roleplay', 'Clothes Shopping', 'Customer', 'Assistant', 'Extended conversation about Clothes Shopping', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aad', 'Einkaufen: Kleidung kaufen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Einkaufen: Kleidung kaufen".', 'Creative practice for Clothes Shopping', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aad', '📚 Hausaufgabe: Einkaufen: Kleidung kaufen', 'Complete these tasks to reinforce "Einkaufen: Kleidung kaufen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Clothes Shopping: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Clothes Shopping. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aad', '🎯 Great work! In this lesson you learned 79 new words about Clothes Shopping. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["79 vocabulary items about Clothes Shopping","present_tense — grammar explanation and practice","Reading comprehension: text about Clothes Shopping","Listening comprehension: dialogue about Clothes Shopping","Speaking practice: roleplay/discussion about Clothes Shopping","Writing task: text about Clothes Shopping"]', '[{"title":"Einkaufen: Kleidung kaufen Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Mantel (coat)','das Hemd (shirt)','die Hose (pants)','die Jacke (jacket)','der Schuh (shoe)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Clothes Shopping for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'translation', 'Translate to German: "I use the word "coat" in a sentence about Clothes Shopping."', '[]', 'Der Mantel ist warm.', 'Use der  "der Mantel" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'translation', 'Translate to German: "I use the word "shirt" in a sentence about Clothes Shopping."', '[]', 'Das Hemd ist blau.', 'Use das  "das Hemd" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'translation', 'Translate to German: "I use the word "pants" in a sentence about Clothes Shopping."', '[]', 'Die Hose passt gut.', 'Use die  "die Hose" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Culture: 🇩🇪 Deutsche Kultur: Clothes Shopping', 'In Germany, Clothes Shopping is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Clothes Shopping, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Clothes Shopping بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aad', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Mode und Stil (L-A2-02-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aac', '00000000-0000-4000-a000-000039b547be', 'Mode und Stil', 'Discuss fashion, style preferences, and compliments.', 'Fashion & Style', 'vocabulary', '["Understand and use 79 key vocabulary words about Fashion & Style","Apply present_tense correctly in sentences","Read and comprehend a text about Fashion & Style","Listen and understand a natural dialogue about Fashion & Style","Speak about Fashion & Style with confidence","Write a short text about Fashion & Style using new vocabulary"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'der Mantel', 'المعطف', 'coat', NULL, 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aac', 'das Hemd', 'القميص', 'shirt', NULL, 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aac', 'die Hose', 'البنطلون', 'pants', NULL, 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aac', 'die Jacke', 'الجاكيت', 'jacket', NULL, 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aac', 'der Schuh', 'الحذاء', 'shoe', NULL, 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aac', 'tragen', 'يرتدي', 'to wear', NULL, NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aac', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aac', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aac', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aac', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aac', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aac', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aac', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aac', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aac', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aac', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aac', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aac', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aac', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aac', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aac', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aac', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aac', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aac', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aac', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aac', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aac', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aac', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aac', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aac', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'Welches deutsche Wort bedeutet "coat"?', '["die Hose","das Hemd","die Jacke","der Schuh"]', 'der Mantel', '"coat" = "der Mantel" in German. Article: der Plural: die Mäntel', 1, 1),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'Welches deutsche Wort bedeutet "shirt"?', '["das Hemd","die Jacke","der Mantel","der Schuh"]', 'das Hemd', '"shirt" = "das Hemd" in German. Article: das Plural: die Hemden', 1, 2),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'Welches deutsche Wort bedeutet "pants"?', '["das Hemd","die Jacke","der Mantel","der Schuh"]', 'die Hose', '"pants" = "die Hose" in German. Article: die Plural: die Hosen', 1, 3),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'Welches deutsche Wort bedeutet "jacket"?', '["die Jacke","die Hose","der Mantel","der Schuh"]', 'die Jacke', '"jacket" = "die Jacke" in German. Article: die Plural: die Jacken', 1, 4),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'Welches deutsche Wort bedeutet "shoe"?', '["die Jacke","die Hose","das Hemd","der Mantel"]', 'der Schuh', '"shoe" = "der Schuh" in German. Article: der Plural: die Schuhe', 1, 5),
  ('00000000-0000-4000-a000-000065810aac', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Fashion & Style. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065810aac', 'translation', 'Übersetze ins Deutsche: "I am learning about Fashion & Style."', '["Ich lerne über Fashion & Style.","Ich lerne Fashion & Style.","Lerne ich Fashion & Style."]', 'Ich lerne über Fashion & Style.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065810aac', 'matching', 'Match: Which word pairs are correct?', '["der Mantel - coat, das Hemd - shirt"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'Was bedeutet "der Mantel" auf Deutsch?', '["coat","to run","beautiful","yesterday"]', 'coat', 1, 1),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'Welcher Artikel gehört zu "das Hemd"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-000065810aac', 'true_false', 'Das Wort "die Hose" gehört zum Thema Fashion & Style.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-000065810aac', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065810aac', 'fill_blank', 'Complete: Ich ___ (jacket) Deutsch.', '["die Jacke","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'Wie lautet das deutsche Wort für "shoe"?', '["der Schuh","tragen","anziehen","einkaufen"]', 'der Schuh', 1, 7),
  ('00000000-0000-4000-a000-000065810aac', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aac', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065810aac', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aac', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kleidung und Mode', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065810aac', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kleidung und Mode', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065810aac', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kleidung und Mode', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'der der Mantel (die Mäntel)', 'coat — المعطف', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065810aac', 'das das Hemd (die Hemden)', 'shirt — القميص', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065810aac', 'die die Hose (die Hosen)', 'pants — البنطلون', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065810aac', 'die die Jacke (die Jacken)', 'jacket — الجاكيت', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065810aac', 'der der Schuh (die Schuhe)', 'shoe — الحذاء', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065810aac', 'tragen', 'to wear — يرتدي', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065810aac', 'anziehen', 'to put on — يرتدي/يلبس', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065810aac', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065810aac', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065810aac', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065810aac', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065810aac', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065810aac', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065810aac', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065810aac', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065810aac', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065810aac', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065810aac', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aac', 'Mode und Stil — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aac', '🔊 Sprechen: Mode und Stil', 'Roleplay: You are in a Berlin bookstore. Introduce yourself and talk about Fashion & Style. Your partner (AI) will respond naturally.', 'Fashion & Style', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aac', '✏️ Schreiben: Mode und Stil', 'Write an email to a German friend about "Fashion & Style". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aac', 'Mode und Stil — Roleplay', 'Fashion & Style', 'Student', 'Teacher', 'Practice conversation about Fashion & Style', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aac', 'Mode und Stil — Advanced Roleplay', 'Fashion & Style', 'Customer', 'Assistant', 'Extended conversation about Fashion & Style', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aac', 'Mode und Stil — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Mode und Stil".', 'Creative practice for Fashion & Style', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aac', '📚 Hausaufgabe: Mode und Stil', 'Complete these tasks to reinforce "Mode und Stil".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Fashion & Style: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Fashion & Style. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aac', '🎯 Great work! In this lesson you learned 79 new words about Fashion & Style. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["79 vocabulary items about Fashion & Style","present_tense — grammar explanation and practice","Reading comprehension: text about Fashion & Style","Listening comprehension: dialogue about Fashion & Style","Speaking practice: roleplay/discussion about Fashion & Style","Writing task: text about Fashion & Style"]', '[{"title":"Mode und Stil Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Mantel (coat)','das Hemd (shirt)','die Hose (pants)','die Jacke (jacket)','der Schuh (shoe)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Fashion & Style for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'translation', 'Translate to German: "I use the word "coat" in a sentence about Fashion & Style."', '[]', 'Der Mantel ist warm.', 'Use der  "der Mantel" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'translation', 'Translate to German: "I use the word "shirt" in a sentence about Fashion & Style."', '[]', 'Das Hemd ist blau.', 'Use das  "das Hemd" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'translation', 'Translate to German: "I use the word "pants" in a sentence about Fashion & Style."', '[]', 'Die Hose passt gut.', 'Use die  "die Hose" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Culture: 🇩🇪 Deutsche Kultur: Fashion & Style', 'In Germany, Fashion & Style is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Fashion & Style, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Fashion & Style بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aac', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Komparativ und Superlativ (L-A2-02-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aab', '00000000-0000-4000-a000-000039b547be', 'Komparativ und Superlativ', 'Compare clothing items using comparative and superlative forms.', 'Comparatives', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'der Mantel', 'المعطف', 'coat', NULL, 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aab', 'das Hemd', 'القميص', 'shirt', NULL, 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aab', 'die Hose', 'البنطلون', 'pants', NULL, 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aab', 'die Jacke', 'الجاكيت', 'jacket', NULL, 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aab', 'der Schuh', 'الحذاء', 'shoe', NULL, 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aab', 'tragen', 'يرتدي', 'to wear', NULL, NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aab', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aab', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aab', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aab', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aab', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aab', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aab', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aab', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aab', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aab', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aab', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aab', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aab', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aab', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aab', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aab', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aab', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aab', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aab', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aab', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aab', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aab', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aab', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aab', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'Welches deutsche Wort bedeutet "coat"?', '["der Schuh","der Mantel","das Hemd","die Jacke"]', 'der Mantel', '"coat" = "der Mantel" in German. Article: der Plural: die Mäntel', 1, 1),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'Welches deutsche Wort bedeutet "shirt"?', '["die Jacke","der Mantel","das Hemd","der Schuh"]', 'das Hemd', '"shirt" = "das Hemd" in German. Article: das Plural: die Hemden', 1, 2),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'Welches deutsche Wort bedeutet "pants"?', '["die Jacke","das Hemd","der Schuh","der Mantel"]', 'die Hose', '"pants" = "die Hose" in German. Article: die Plural: die Hosen', 1, 3),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'Welches deutsche Wort bedeutet "jacket"?', '["der Schuh","das Hemd","die Jacke","der Mantel"]', 'die Jacke', '"jacket" = "die Jacke" in German. Article: die Plural: die Jacken', 1, 4),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'Welches deutsche Wort bedeutet "shoe"?', '["der Schuh","der Mantel","die Jacke","das Hemd"]', 'der Schuh', '"shoe" = "der Schuh" in German. Article: der Plural: die Schuhe', 1, 5),
  ('00000000-0000-4000-a000-000065810aab', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Comparatives. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065810aab', 'translation', 'Übersetze ins Deutsche: "I am learning about Comparatives."', '["Ich lerne über Comparatives.","Ich lerne Comparatives.","Lerne ich Comparatives."]', 'Ich lerne über Comparatives.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065810aab', 'matching', 'Match: Which word pairs are correct?', '["der Mantel - coat, das Hemd - shirt"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'Was bedeutet "der Mantel" auf Deutsch?', '["coat","to run","beautiful","yesterday"]', 'coat', 1, 1),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'Welcher Artikel gehört zu "das Hemd"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-000065810aab', 'true_false', 'Das Wort "die Hose" gehört zum Thema Comparatives.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-000065810aab', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065810aab', 'fill_blank', 'Complete: Ich ___ (jacket) Deutsch.', '["die Jacke","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'Wie lautet das deutsche Wort für "shoe"?', '["der Schuh","tragen","anziehen","einkaufen"]', 'der Schuh', 1, 7),
  ('00000000-0000-4000-a000-000065810aab', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aab', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065810aab', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aab', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kleidung und Mode', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065810aab', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kleidung und Mode', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065810aab', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kleidung und Mode', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'der der Mantel (die Mäntel)', 'coat — المعطف', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065810aab', 'das das Hemd (die Hemden)', 'shirt — القميص', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065810aab', 'die die Hose (die Hosen)', 'pants — البنطلون', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065810aab', 'die die Jacke (die Jacken)', 'jacket — الجاكيت', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065810aab', 'der der Schuh (die Schuhe)', 'shoe — الحذاء', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065810aab', 'tragen', 'to wear — يرتدي', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065810aab', 'anziehen', 'to put on — يرتدي/يلبس', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065810aab', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065810aab', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065810aab', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065810aab', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065810aab', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065810aab', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065810aab', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065810aab', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065810aab', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065810aab', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065810aab', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aab', 'Komparativ und Superlativ — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aab', '🔊 Sprechen: Komparativ und Superlativ', 'Roleplay: You are in a Berlin bookstore. Introduce yourself and talk about Comparatives. Your partner (AI) will respond naturally.', 'Comparatives', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aab', '✏️ Schreiben: Komparativ und Superlativ', 'Write an email to a German friend about "Comparatives". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aab', 'Komparativ und Superlativ — Roleplay', 'Comparatives', 'Student', 'Teacher', 'Practice conversation about Comparatives', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aab', 'Komparativ und Superlativ — Advanced Roleplay', 'Comparatives', 'Customer', 'Assistant', 'Extended conversation about Comparatives', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aab', 'Komparativ und Superlativ — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Komparativ und Superlativ".', 'Creative practice for Comparatives', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aab', '📚 Hausaufgabe: Komparativ und Superlativ', 'Complete these tasks to reinforce "Komparativ und Superlativ".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Comparatives: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Comparatives. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aab', '🎯 Great work! In this lesson you learned 79 new words about Comparatives. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["79 vocabulary items about Comparatives","present_tense — grammar explanation and practice","Reading comprehension: text about Comparatives","Listening comprehension: dialogue about Comparatives","Speaking practice: roleplay/discussion about Comparatives","Writing task: text about Comparatives"]', '[{"title":"Komparativ und Superlativ Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Mantel (coat)','das Hemd (shirt)','die Hose (pants)','die Jacke (jacket)','der Schuh (shoe)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Comparatives for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'translation', 'Translate to German: "I use the word "coat" in a sentence about Comparatives."', '[]', 'Der Mantel ist warm.', 'Use der  "der Mantel" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'translation', 'Translate to German: "I use the word "shirt" in a sentence about Comparatives."', '[]', 'Das Hemd ist blau.', 'Use das  "das Hemd" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'translation', 'Translate to German: "I use the word "pants" in a sentence about Comparatives."', '[]', 'Die Hose passt gut.', 'Use die  "die Hose" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Culture: 🇩🇪 Deutsche Kultur: Comparatives', 'In Germany, Comparatives is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Comparatives, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Comparatives بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aab', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: Test: Kleidung und Mode (L-A2-02-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065810aaa', '00000000-0000-4000-a000-000039b547be', 'Test: Kleidung und Mode', 'Module test on clothing and fashion.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'der Mantel', 'المعطف', 'coat', NULL, 'der', 'die Mäntel', 'noun', 'Der Mantel ist warm.', 'The coat is warm.', 'A1', 1),
  ('00000000-0000-4000-a000-000065810aaa', 'das Hemd', 'القميص', 'shirt', NULL, 'das', 'die Hemden', 'noun', 'Das Hemd ist blau.', 'The shirt is blue.', 'A1', 2),
  ('00000000-0000-4000-a000-000065810aaa', 'die Hose', 'البنطلون', 'pants', NULL, 'die', 'die Hosen', 'noun', 'Die Hose passt gut.', 'The pants fit well.', 'A1', 3),
  ('00000000-0000-4000-a000-000065810aaa', 'die Jacke', 'الجاكيت', 'jacket', NULL, 'die', 'die Jacken', 'noun', 'Zieh deine Jacke an!', 'Put on your jacket!', 'A1', 4),
  ('00000000-0000-4000-a000-000065810aaa', 'der Schuh', 'الحذاء', 'shoe', NULL, 'der', 'die Schuhe', 'noun', 'Die Schuhe sind neu.', 'The shoes are new.', 'A1', 5),
  ('00000000-0000-4000-a000-000065810aaa', 'tragen', 'يرتدي', 'to wear', NULL, NULL, NULL, 'verb', 'Er trägt einen Anzug.', 'He wears a suit.', 'A1', 6),
  ('00000000-0000-4000-a000-000065810aaa', 'anziehen', 'يرتدي/يلبس', 'to put on', NULL, NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 'A1', 7),
  ('00000000-0000-4000-a000-000065810aaa', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065810aaa', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065810aaa', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065810aaa', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065810aaa', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065810aaa', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065810aaa', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065810aaa', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065810aaa', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065810aaa', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065810aaa', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065810aaa', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065810aaa', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065810aaa', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065810aaa', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065810aaa', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065810aaa', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065810aaa', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065810aaa', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065810aaa', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065810aaa', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065810aaa', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065810aaa', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'Welches deutsche Wort bedeutet "coat"?', '["das Hemd","die Hose","der Schuh","der Mantel"]', 'der Mantel', '"coat" = "der Mantel" in German. Article: der Plural: die Mäntel', 1, 1),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'Welches deutsche Wort bedeutet "shirt"?', '["das Hemd","der Mantel","die Hose","die Jacke"]', 'das Hemd', '"shirt" = "das Hemd" in German. Article: das Plural: die Hemden', 1, 2),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'Welches deutsche Wort bedeutet "pants"?', '["das Hemd","die Jacke","der Schuh","der Mantel"]', 'die Hose', '"pants" = "die Hose" in German. Article: die Plural: die Hosen', 1, 3),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'Welches deutsche Wort bedeutet "jacket"?', '["die Hose","das Hemd","die Jacke","der Schuh"]', 'die Jacke', '"jacket" = "die Jacke" in German. Article: die Plural: die Jacken', 1, 4),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'Welches deutsche Wort bedeutet "shoe"?', '["die Hose","das Hemd","die Jacke","der Mantel"]', 'der Schuh', '"shoe" = "der Schuh" in German. Article: der Plural: die Schuhe', 1, 5),
  ('00000000-0000-4000-a000-000065810aaa', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065810aaa', 'translation', 'Übersetze ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065810aaa', 'matching', 'Match: Which word pairs are correct?', '["der Mantel - coat, das Hemd - shirt"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'Was bedeutet "der Mantel" auf Deutsch?', '["coat","to run","beautiful","yesterday"]', 'coat', 1, 1),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'Welcher Artikel gehört zu "das Hemd"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-000065810aaa', 'true_false', 'Das Wort "die Hose" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-000065810aaa', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065810aaa', 'fill_blank', 'Complete: Ich ___ (jacket) Deutsch.', '["die Jacke","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'Wie lautet das deutsche Wort für "shoe"?', '["der Schuh","tragen","anziehen","einkaufen"]', 'der Schuh', 1, 7),
  ('00000000-0000-4000-a000-000065810aaa', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065810aaa', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065810aaa', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Kleidung und Mode', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065810aaa', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Kleidung und Mode', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065810aaa', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Kleidung und Mode', 'formal', false, 3),
  ('00000000-0000-4000-a000-000065810aaa', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Kleidung und Mode', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'der der Mantel (die Mäntel)', 'coat — المعطف', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065810aaa', 'das das Hemd (die Hemden)', 'shirt — القميص', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065810aaa', 'die die Hose (die Hosen)', 'pants — البنطلون', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065810aaa', 'die die Jacke (die Jacken)', 'jacket — الجاكيت', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065810aaa', 'der der Schuh (die Schuhe)', 'shoe — الحذاء', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065810aaa', 'tragen', 'to wear — يرتدي', 'verb', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065810aaa', 'anziehen', 'to put on — يرتدي/يلبس', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065810aaa', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065810aaa', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065810aaa', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065810aaa', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065810aaa', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065810aaa', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065810aaa', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065810aaa', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065810aaa', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065810aaa', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065810aaa', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065810aaa', 'Test: Kleidung und Mode — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Kleidung und Mode');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', '🔊 Sprechen: Test: Kleidung und Mode', 'Roleplay: You are in a Berlin bookstore. Introduce yourself and talk about Module Test. Your partner (AI) will respond naturally.', 'Module Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', '✏️ Schreiben: Test: Kleidung und Mode', 'Write an email to a German friend about "Module Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aaa', 'Test: Kleidung und Mode — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065810aaa', 'Test: Kleidung und Mode — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Mantel','das Hemd','die Hose','die Jacke','der Schuh','tragen','anziehen','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065810aaa', 'Test: Kleidung und Mode — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Kleidung und Mode".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', '📚 Hausaufgabe: Test: Kleidung und Mode', 'Complete these tasks to reinforce "Test: Kleidung und Mode".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065810aaa', '🎯 Great work! In this lesson you learned 79 new words about Module Test. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["79 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Kleidung und Mode Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Mantel (coat)','das Hemd (shirt)','die Hose (pants)','die Jacke (jacket)','der Schuh (shoe)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'translation', 'Translate to German: "I use the word "coat" in a sentence about Module Test."', '[]', 'Der Mantel ist warm.', 'Use der  "der Mantel" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'translation', 'Translate to German: "I use the word "shirt" in a sentence about Module Test."', '[]', 'Das Hemd ist blau.', 'Use das  "das Hemd" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'translation', 'Translate to German: "I use the word "pants" in a sentence about Module Test."', '[]', 'Die Hose passt gut.', 'Use die  "die Hose" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'In Germany, Module Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Module Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Module Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065810aaa', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Module 3: Stadt und Orientierung
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547bf', 'A2', 'Stadt und Orientierung', 'Navigate cities, ask for and give directions, and use public transportation.', '["Ask for and give directions","Name city landmarks and locations","Use prepositions of location","Use modal verbs for polite requests","Navigate public transportation"]', 3, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: In der Stadt (L-A2-03-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-000065809650', '00000000-0000-4000-a000-000039b547bf', 'In der Stadt', 'Learn city vocabulary: streets, buildings, and landmarks.', 'City Life', 'vocabulary', '["Understand and use 72 key vocabulary words about City Life","Apply present_tense correctly in sentences","Read and comprehend a text about City Life","Listen and understand a natural dialogue about City Life","Speak about City Life with confidence","Write a short text about City Life using new vocabulary"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'die Stadt', 'المدينة', 'city', NULL, 'die', 'die Städte', 'noun', 'Berlin ist eine große Stadt.', 'Berlin is a big city.', 'A1', 1),
  ('00000000-0000-4000-a000-000065809650', 'die Straße', 'الشارع', 'street', NULL, 'die', 'die Straßen', 'noun', 'Die Straße ist lang.', 'The street is long.', 'A1', 2),
  ('00000000-0000-4000-a000-000065809650', 'der Platz', 'الساحة', 'square', NULL, 'der', 'die Plätze', 'noun', 'Der Platz ist schön.', 'The square is beautiful.', 'A1', 3),
  ('00000000-0000-4000-a000-000065809650', 'das Gebäude', 'المبنى', 'building', NULL, 'das', 'die Gebäude', 'noun', 'Das Gebäude ist alt.', 'The building is old.', 'A1', 4),
  ('00000000-0000-4000-a000-000065809650', 'die Ampel', 'إشارة المرور', 'traffic light', NULL, 'die', 'die Ampeln', 'noun', 'Die Ampel ist rot.', 'The traffic light is red.', 'A2', 5),
  ('00000000-0000-4000-a000-000065809650', 'die Kirche', 'الكنيسة', 'church', NULL, 'die', 'die Kirchen', 'noun', 'Die Kirche ist alt.', 'The church is old.', 'A1', 6),
  ('00000000-0000-4000-a000-000065809650', 'der Park', 'الحديقة', 'park', NULL, 'der', 'die Parks', 'noun', 'Der Park ist groß.', 'The park is big.', 'A1', 7),
  ('00000000-0000-4000-a000-000065809650', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-000065809650', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-000065809650', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-000065809650', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-000065809650', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-000065809650', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-000065809650', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-000065809650', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-000065809650', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-000065809650', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-000065809650', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-000065809650', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-000065809650', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-000065809650', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-000065809650', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-000065809650', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-000065809650', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-000065809650', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-000065809650', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-000065809650', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-000065809650', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-000065809650', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-000065809650', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'Welches deutsche Wort bedeutet "city"?', '["der Platz","die Straße","die Stadt","das Gebäude"]', 'die Stadt', '"city" = "die Stadt" in German. Article: die Plural: die Städte', 1, 1),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'Welches deutsche Wort bedeutet "street"?', '["die Straße","die Stadt","die Ampel","das Gebäude"]', 'die Straße', '"street" = "die Straße" in German. Article: die Plural: die Straßen', 1, 2),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'Welches deutsche Wort bedeutet "square"?', '["der Platz","die Straße","die Ampel","die Stadt"]', 'der Platz', '"square" = "der Platz" in German. Article: der Plural: die Plätze', 1, 3),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'Welches deutsche Wort bedeutet "building"?', '["die Stadt","das Gebäude","die Ampel","die Straße"]', 'das Gebäude', '"building" = "das Gebäude" in German. Article: das Plural: die Gebäude', 1, 4),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'Welches deutsche Wort bedeutet "traffic light"?', '["die Stadt","der Platz","das Gebäude","die Ampel"]', 'die Ampel', '"traffic light" = "die Ampel" in German. Article: die Plural: die Ampeln', 1, 5),
  ('00000000-0000-4000-a000-000065809650', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über City Life. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-000065809650', 'translation', 'Übersetze ins Deutsche: "I am learning about City Life."', '["Ich lerne über City Life.","Ich lerne City Life.","Lerne ich City Life."]', 'Ich lerne über City Life.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-000065809650', 'matching', 'Match: Which word pairs are correct?', '["die Stadt - city, die Straße - street"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'Was bedeutet "die Stadt" auf Deutsch?', '["city","to run","beautiful","yesterday"]', 'city', 1, 1),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'Welcher Artikel gehört zu "die Straße"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-000065809650', 'true_false', 'Das Wort "der Platz" gehört zum Thema City Life.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-000065809650', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-000065809650', 'fill_blank', 'Complete: Ich ___ (building) Deutsch.', '["das Gebäude","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'Wie lautet das deutsche Wort für "traffic light"?', '["die Ampel","die Kirche","der Park","einkaufen"]', 'die Ampel', 1, 7),
  ('00000000-0000-4000-a000-000065809650', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-000065809650', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-000065809650', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Entschuldigung, wo ist der Bahnhof?', 'Excuse me, where is the train station?', 'عذراً، أين محطة القطار؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-000065809650', 'Wie komme ich zum Alexanderplatz?', 'How do I get to Alexanderplatz?', 'كيف أصل إلى ألكسندر بلاتس؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 2),
  ('00000000-0000-4000-a000-000065809650', 'Ist das weit von hier?', 'Is that far from here?', 'هل هذا بعيد من هنا؟', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-000065809650', 'Ich habe mich verlaufen.', 'I am lost.', 'لقد توهت.', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'die die Stadt (die Städte)', 'city — المدينة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-000065809650', 'die die Straße (die Straßen)', 'street — الشارع', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-000065809650', 'der der Platz (die Plätze)', 'square — الساحة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-000065809650', 'das das Gebäude (die Gebäude)', 'building — المبنى', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-000065809650', 'die die Ampel (die Ampeln)', 'traffic light — إشارة المرور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-000065809650', 'die die Kirche (die Kirchen)', 'church — الكنيسة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-000065809650', 'der der Park (die Parks)', 'park — الحديقة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-000065809650', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-000065809650', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-000065809650', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-000065809650', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-000065809650', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-000065809650', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-000065809650', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-000065809650', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-000065809650', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-000065809650', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-000065809650', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-000065809650', 'In der Stadt — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-000065809650', '🔊 Sprechen: In der Stadt', 'Roleplay: You are in a German café. Introduce yourself and talk about City Life. Your partner (AI) will respond naturally.', 'City Life', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-000065809650', '✏️ Schreiben: In der Stadt', 'Write an email to a German friend about "City Life". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065809650', 'In der Stadt — Roleplay', 'City Life', 'Student', 'Teacher', 'Practice conversation about City Life', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-000065809650', 'In der Stadt — Advanced Roleplay', 'City Life', 'Customer', 'Assistant', 'Extended conversation about City Life', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-000065809650', 'In der Stadt — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "In der Stadt".', 'Creative practice for City Life', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-000065809650', '📚 Hausaufgabe: In der Stadt', 'Complete these tasks to reinforce "In der Stadt".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about City Life: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about City Life. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-000065809650', '🎯 Great work! In this lesson you learned 72 new words about City Life. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about City Life","present_tense — grammar explanation and practice","Reading comprehension: text about City Life","Listening comprehension: dialogue about City Life","Speaking practice: roleplay/discussion about City Life","Writing task: text about City Life"]', '[{"title":"In der Stadt Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Stadt (city)','die Straße (street)','der Platz (square)','das Gebäude (building)','die Ampel (traffic light)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about City Life for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'translation', 'Translate to German: "I use the word "city" in a sentence about City Life."', '[]', 'Berlin ist eine große Stadt.', 'Use die  "die Stadt" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'translation', 'Translate to German: "I use the word "street" in a sentence about City Life."', '[]', 'Die Straße ist lang.', 'Use die  "die Straße" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'translation', 'Translate to German: "I use the word "square" in a sentence about City Life."', '[]', 'Der Platz ist schön.', 'Use der  "der Platz" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Culture: 🇩🇪 Deutsche Kultur: City Life', 'In Germany, City Life is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing City Life, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع City Life بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-000065809650', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Wegbeschreibung (L-A2-03-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006580964f', '00000000-0000-4000-a000-000039b547bf', 'Wegbeschreibung', 'Learn how to ask for and give directions.', 'Directions', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'die Stadt', 'المدينة', 'city', NULL, 'die', 'die Städte', 'noun', 'Berlin ist eine große Stadt.', 'Berlin is a big city.', 'A1', 1),
  ('00000000-0000-4000-a000-00006580964f', 'die Straße', 'الشارع', 'street', NULL, 'die', 'die Straßen', 'noun', 'Die Straße ist lang.', 'The street is long.', 'A1', 2),
  ('00000000-0000-4000-a000-00006580964f', 'der Platz', 'الساحة', 'square', NULL, 'der', 'die Plätze', 'noun', 'Der Platz ist schön.', 'The square is beautiful.', 'A1', 3),
  ('00000000-0000-4000-a000-00006580964f', 'das Gebäude', 'المبنى', 'building', NULL, 'das', 'die Gebäude', 'noun', 'Das Gebäude ist alt.', 'The building is old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006580964f', 'die Ampel', 'إشارة المرور', 'traffic light', NULL, 'die', 'die Ampeln', 'noun', 'Die Ampel ist rot.', 'The traffic light is red.', 'A2', 5),
  ('00000000-0000-4000-a000-00006580964f', 'die Kirche', 'الكنيسة', 'church', NULL, 'die', 'die Kirchen', 'noun', 'Die Kirche ist alt.', 'The church is old.', 'A1', 6),
  ('00000000-0000-4000-a000-00006580964f', 'der Park', 'الحديقة', 'park', NULL, 'der', 'die Parks', 'noun', 'Der Park ist groß.', 'The park is big.', 'A1', 7),
  ('00000000-0000-4000-a000-00006580964f', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-00006580964f', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-00006580964f', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-00006580964f', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-00006580964f', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-00006580964f', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-00006580964f', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-00006580964f', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-00006580964f', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-00006580964f', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-00006580964f', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-00006580964f', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006580964f', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-00006580964f', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-00006580964f', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-00006580964f', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-00006580964f', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-00006580964f', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-00006580964f', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-00006580964f', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-00006580964f', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-00006580964f', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-00006580964f', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'Welches deutsche Wort bedeutet "city"?', '["die Stadt","die Straße","die Ampel","der Platz"]', 'die Stadt', '"city" = "die Stadt" in German. Article: die Plural: die Städte', 1, 1),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'Welches deutsche Wort bedeutet "street"?', '["die Ampel","der Platz","das Gebäude","die Stadt"]', 'die Straße', '"street" = "die Straße" in German. Article: die Plural: die Straßen', 1, 2),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'Welches deutsche Wort bedeutet "square"?', '["die Ampel","das Gebäude","die Straße","die Stadt"]', 'der Platz', '"square" = "der Platz" in German. Article: der Plural: die Plätze', 1, 3),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'Welches deutsche Wort bedeutet "building"?', '["die Ampel","die Stadt","das Gebäude","die Straße"]', 'das Gebäude', '"building" = "das Gebäude" in German. Article: das Plural: die Gebäude', 1, 4),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'Welches deutsche Wort bedeutet "traffic light"?', '["das Gebäude","der Platz","die Straße","die Stadt"]', 'die Ampel', '"traffic light" = "die Ampel" in German. Article: die Plural: die Ampeln', 1, 5),
  ('00000000-0000-4000-a000-00006580964f', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Directions. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006580964f', 'translation', 'Übersetze ins Deutsche: "I am learning about Directions."', '["Ich lerne über Directions.","Ich lerne Directions.","Lerne ich Directions."]', 'Ich lerne über Directions.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006580964f', 'matching', 'Match: Which word pairs are correct?', '["die Stadt - city, die Straße - street"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'Was bedeutet "die Stadt" auf Deutsch?', '["city","to run","beautiful","yesterday"]', 'city', 1, 1),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'Welcher Artikel gehört zu "die Straße"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006580964f', 'true_false', 'Das Wort "der Platz" gehört zum Thema Directions.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-00006580964f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006580964f', 'fill_blank', 'Complete: Ich ___ (building) Deutsch.', '["das Gebäude","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'Wie lautet das deutsche Wort für "traffic light"?', '["die Ampel","die Kirche","der Park","einkaufen"]', 'die Ampel', 1, 7),
  ('00000000-0000-4000-a000-00006580964f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006580964f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006580964f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Entschuldigung, wo ist der Bahnhof?', 'Excuse me, where is the train station?', 'عذراً، أين محطة القطار؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006580964f', 'Wie komme ich zum Alexanderplatz?', 'How do I get to Alexanderplatz?', 'كيف أصل إلى ألكسندر بلاتس؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006580964f', 'Ist das weit von hier?', 'Is that far from here?', 'هل هذا بعيد من هنا؟', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006580964f', 'Ich habe mich verlaufen.', 'I am lost.', 'لقد توهت.', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'die die Stadt (die Städte)', 'city — المدينة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006580964f', 'die die Straße (die Straßen)', 'street — الشارع', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006580964f', 'der der Platz (die Plätze)', 'square — الساحة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006580964f', 'das das Gebäude (die Gebäude)', 'building — المبنى', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006580964f', 'die die Ampel (die Ampeln)', 'traffic light — إشارة المرور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006580964f', 'die die Kirche (die Kirchen)', 'church — الكنيسة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006580964f', 'der der Park (die Parks)', 'park — الحديقة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006580964f', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006580964f', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006580964f', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006580964f', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006580964f', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006580964f', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006580964f', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006580964f', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006580964f', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006580964f', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006580964f', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006580964f', 'Wegbeschreibung — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006580964f', '🔊 Sprechen: Wegbeschreibung', 'Roleplay: You are in a German café. Introduce yourself and talk about Directions. Your partner (AI) will respond naturally.', 'Directions', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006580964f', '✏️ Schreiben: Wegbeschreibung', 'Write an email to a German friend about "Directions". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964f', 'Wegbeschreibung — Roleplay', 'Directions', 'Student', 'Teacher', 'Practice conversation about Directions', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964f', 'Wegbeschreibung — Advanced Roleplay', 'Directions', 'Customer', 'Assistant', 'Extended conversation about Directions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006580964f', 'Wegbeschreibung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Wegbeschreibung".', 'Creative practice for Directions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006580964f', '📚 Hausaufgabe: Wegbeschreibung', 'Complete these tasks to reinforce "Wegbeschreibung".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Directions: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Directions. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006580964f', '🎯 Great work! In this lesson you learned 72 new words about Directions. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Directions","present_tense — grammar explanation and practice","Reading comprehension: text about Directions","Listening comprehension: dialogue about Directions","Speaking practice: roleplay/discussion about Directions","Writing task: text about Directions"]', '[{"title":"Wegbeschreibung Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Stadt (city)','die Straße (street)','der Platz (square)','das Gebäude (building)','die Ampel (traffic light)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Directions for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'translation', 'Translate to German: "I use the word "city" in a sentence about Directions."', '[]', 'Berlin ist eine große Stadt.', 'Use die  "die Stadt" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'translation', 'Translate to German: "I use the word "street" in a sentence about Directions."', '[]', 'Die Straße ist lang.', 'Use die  "die Straße" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'translation', 'Translate to German: "I use the word "square" in a sentence about Directions."', '[]', 'Der Platz ist schön.', 'Use der  "der Platz" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Culture: 🇩🇪 Deutsche Kultur: Directions', 'In Germany, Directions is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Directions, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Directions بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Öffentliche Verkehrsmittel (L-A2-03-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006580964e', '00000000-0000-4000-a000-000039b547bf', 'Öffentliche Verkehrsmittel', 'Learn how to use buses, trains, and trams.', 'Public Transport', 'vocabulary', '["Understand and use 72 key vocabulary words about Public Transport","Apply present_tense correctly in sentences","Read and comprehend a text about Public Transport","Listen and understand a natural dialogue about Public Transport","Speak about Public Transport with confidence","Write a short text about Public Transport using new vocabulary"]', 45, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'die Stadt', 'المدينة', 'city', NULL, 'die', 'die Städte', 'noun', 'Berlin ist eine große Stadt.', 'Berlin is a big city.', 'A1', 1),
  ('00000000-0000-4000-a000-00006580964e', 'die Straße', 'الشارع', 'street', NULL, 'die', 'die Straßen', 'noun', 'Die Straße ist lang.', 'The street is long.', 'A1', 2),
  ('00000000-0000-4000-a000-00006580964e', 'der Platz', 'الساحة', 'square', NULL, 'der', 'die Plätze', 'noun', 'Der Platz ist schön.', 'The square is beautiful.', 'A1', 3),
  ('00000000-0000-4000-a000-00006580964e', 'das Gebäude', 'المبنى', 'building', NULL, 'das', 'die Gebäude', 'noun', 'Das Gebäude ist alt.', 'The building is old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006580964e', 'die Ampel', 'إشارة المرور', 'traffic light', NULL, 'die', 'die Ampeln', 'noun', 'Die Ampel ist rot.', 'The traffic light is red.', 'A2', 5),
  ('00000000-0000-4000-a000-00006580964e', 'die Kirche', 'الكنيسة', 'church', NULL, 'die', 'die Kirchen', 'noun', 'Die Kirche ist alt.', 'The church is old.', 'A1', 6),
  ('00000000-0000-4000-a000-00006580964e', 'der Park', 'الحديقة', 'park', NULL, 'der', 'die Parks', 'noun', 'Der Park ist groß.', 'The park is big.', 'A1', 7),
  ('00000000-0000-4000-a000-00006580964e', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-00006580964e', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-00006580964e', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-00006580964e', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-00006580964e', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-00006580964e', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-00006580964e', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-00006580964e', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-00006580964e', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-00006580964e', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-00006580964e', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-00006580964e', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006580964e', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-00006580964e', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-00006580964e', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-00006580964e', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-00006580964e', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-00006580964e', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-00006580964e', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-00006580964e', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-00006580964e', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-00006580964e', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-00006580964e', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'Welches deutsche Wort bedeutet "city"?', '["der Platz","die Straße","die Stadt","die Ampel"]', 'die Stadt', '"city" = "die Stadt" in German. Article: die Plural: die Städte', 1, 1),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'Welches deutsche Wort bedeutet "street"?', '["die Straße","das Gebäude","die Ampel","die Stadt"]', 'die Straße', '"street" = "die Straße" in German. Article: die Plural: die Straßen', 1, 2),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'Welches deutsche Wort bedeutet "square"?', '["die Ampel","das Gebäude","der Platz","die Straße"]', 'der Platz', '"square" = "der Platz" in German. Article: der Plural: die Plätze', 1, 3),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'Welches deutsche Wort bedeutet "building"?', '["die Stadt","die Ampel","das Gebäude","der Platz"]', 'das Gebäude', '"building" = "das Gebäude" in German. Article: das Plural: die Gebäude', 1, 4),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'Welches deutsche Wort bedeutet "traffic light"?', '["der Platz","die Straße","das Gebäude","die Stadt"]', 'die Ampel', '"traffic light" = "die Ampel" in German. Article: die Plural: die Ampeln', 1, 5),
  ('00000000-0000-4000-a000-00006580964e', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Public Transport. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006580964e', 'translation', 'Übersetze ins Deutsche: "I am learning about Public Transport."', '["Ich lerne über Public Transport.","Ich lerne Public Transport.","Lerne ich Public Transport."]', 'Ich lerne über Public Transport.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006580964e', 'matching', 'Match: Which word pairs are correct?', '["die Stadt - city, die Straße - street"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'Was bedeutet "die Stadt" auf Deutsch?', '["city","to run","beautiful","yesterday"]', 'city', 1, 1),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'Welcher Artikel gehört zu "die Straße"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006580964e', 'true_false', 'Das Wort "der Platz" gehört zum Thema Public Transport.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-00006580964e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006580964e', 'fill_blank', 'Complete: Ich ___ (building) Deutsch.', '["das Gebäude","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'Wie lautet das deutsche Wort für "traffic light"?', '["die Ampel","die Kirche","der Park","einkaufen"]', 'die Ampel', 1, 7),
  ('00000000-0000-4000-a000-00006580964e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006580964e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006580964e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Entschuldigung, wo ist der Bahnhof?', 'Excuse me, where is the train station?', 'عذراً، أين محطة القطار؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006580964e', 'Wie komme ich zum Alexanderplatz?', 'How do I get to Alexanderplatz?', 'كيف أصل إلى ألكسندر بلاتس؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006580964e', 'Ist das weit von hier?', 'Is that far from here?', 'هل هذا بعيد من هنا؟', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006580964e', 'Ich habe mich verlaufen.', 'I am lost.', 'لقد توهت.', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'die die Stadt (die Städte)', 'city — المدينة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006580964e', 'die die Straße (die Straßen)', 'street — الشارع', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006580964e', 'der der Platz (die Plätze)', 'square — الساحة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006580964e', 'das das Gebäude (die Gebäude)', 'building — المبنى', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006580964e', 'die die Ampel (die Ampeln)', 'traffic light — إشارة المرور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006580964e', 'die die Kirche (die Kirchen)', 'church — الكنيسة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006580964e', 'der der Park (die Parks)', 'park — الحديقة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006580964e', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006580964e', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006580964e', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006580964e', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006580964e', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006580964e', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006580964e', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006580964e', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006580964e', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006580964e', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006580964e', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006580964e', 'Öffentliche Verkehrsmittel — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006580964e', '🔊 Sprechen: Öffentliche Verkehrsmittel', 'Roleplay: You are in a German café. Introduce yourself and talk about Public Transport. Your partner (AI) will respond naturally.', 'Public Transport', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006580964e', '✏️ Schreiben: Öffentliche Verkehrsmittel', 'Write an email to a German friend about "Public Transport". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964e', 'Öffentliche Verkehrsmittel — Roleplay', 'Public Transport', 'Student', 'Teacher', 'Practice conversation about Public Transport', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964e', 'Öffentliche Verkehrsmittel — Advanced Roleplay', 'Public Transport', 'Customer', 'Assistant', 'Extended conversation about Public Transport', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006580964e', 'Öffentliche Verkehrsmittel — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Öffentliche Verkehrsmittel".', 'Creative practice for Public Transport', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006580964e', '📚 Hausaufgabe: Öffentliche Verkehrsmittel', 'Complete these tasks to reinforce "Öffentliche Verkehrsmittel".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Public Transport: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Public Transport. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006580964e', '🎯 Great work! In this lesson you learned 72 new words about Public Transport. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Public Transport","present_tense — grammar explanation and practice","Reading comprehension: text about Public Transport","Listening comprehension: dialogue about Public Transport","Speaking practice: roleplay/discussion about Public Transport","Writing task: text about Public Transport"]', '[{"title":"Öffentliche Verkehrsmittel Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Stadt (city)','die Straße (street)','der Platz (square)','das Gebäude (building)','die Ampel (traffic light)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Public Transport for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'translation', 'Translate to German: "I use the word "city" in a sentence about Public Transport."', '[]', 'Berlin ist eine große Stadt.', 'Use die  "die Stadt" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'translation', 'Translate to German: "I use the word "street" in a sentence about Public Transport."', '[]', 'Die Straße ist lang.', 'Use die  "die Straße" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'translation', 'Translate to German: "I use the word "square" in a sentence about Public Transport."', '[]', 'Der Platz ist schön.', 'Use der  "der Platz" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Culture: 🇩🇪 Deutsche Kultur: Public Transport', 'In Germany, Public Transport is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Public Transport, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Public Transport بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Am Bahnhof und Flughafen (L-A2-03-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006580964d', '00000000-0000-4000-a000-000039b547bf', 'Am Bahnhof und Flughafen', 'Practice buying tickets and navigating transport hubs.', 'Train Stations & Airports', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-00006580964d', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-00006580964d', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-00006580964d', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-00006580964d', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-00006580964d', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-00006580964d', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-00006580964d', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-00006580964d', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-00006580964d', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-00006580964d', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-00006580964d', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-00006580964d', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-00006580964d', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-00006580964d', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-00006580964d', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-00006580964d', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 17),
  ('00000000-0000-4000-a000-00006580964d', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 18),
  ('00000000-0000-4000-a000-00006580964d', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 19),
  ('00000000-0000-4000-a000-00006580964d', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 20),
  ('00000000-0000-4000-a000-00006580964d', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 21),
  ('00000000-0000-4000-a000-00006580964d', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 22),
  ('00000000-0000-4000-a000-00006580964d', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 23),
  ('00000000-0000-4000-a000-00006580964d', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 24),
  ('00000000-0000-4000-a000-00006580964d', 'das Krankenhaus', 'المستشفى', 'hospital', NULL, 'das', 'die Krankenhäuser', 'noun', 'Das Krankenhaus ist neu.', 'The hospital is new.', 'A1', 25),
  ('00000000-0000-4000-a000-00006580964d', 'die Medizin', 'الدواء', 'medicine', NULL, 'die', NULL, 'noun', 'Die Medizin hilft gegen Schmerzen.', 'The medicine helps against pain.', 'A2', 26),
  ('00000000-0000-4000-a000-00006580964d', 'gesund', 'صحي', 'healthy', NULL, NULL, NULL, 'adjective', 'Sport ist gesund.', 'Sports are healthy.', 'A1', 27),
  ('00000000-0000-4000-a000-00006580964d', 'krank', 'مريض', 'sick', NULL, NULL, NULL, 'adjective', 'Ich bin krank.', 'I am sick.', 'A1', 28),
  ('00000000-0000-4000-a000-00006580964d', 'die Apotheke', 'الصيدلية', 'pharmacy', NULL, 'die', 'die Apotheken', 'noun', 'Die Apotheke hat geöffnet.', 'The pharmacy is open.', 'A2', 29),
  ('00000000-0000-4000-a000-00006580964d', 'die Versicherung', 'التأمين', 'insurance', NULL, 'die', 'die Versicherungen', 'noun', 'Ich habe eine Krankenversicherung.', 'I have health insurance.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'Welches deutsche Wort bedeutet "trip"?', '["die Reise","das Ticket","der Flughafen","der Bahnhof"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'Welches deutsche Wort bedeutet "train"?', '["der Bahnhof","der Flughafen","die Reise","der Zug"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'Welches deutsche Wort bedeutet "ticket"?', '["das Ticket","die Reise","der Zug","der Flughafen"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'Welches deutsche Wort bedeutet "train station"?', '["der Bahnhof","die Reise","das Ticket","der Flughafen"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'Welches deutsche Wort bedeutet "airport"?', '["der Flughafen","die Reise","der Zug","das Ticket"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-00006580964d', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Train Stations & Airports. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006580964d', 'translation', 'Übersetze ins Deutsche: "I am learning about Train Stations & Airports."', '["Ich lerne über Train Stations & Airports.","Ich lerne Train Stations & Airports.","Lerne ich Train Stations & Airports."]', 'Ich lerne über Train Stations & Airports.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006580964d', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'Was bedeutet "die Reise" auf Deutsch?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'Welcher Artikel gehört zu "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-00006580964d', 'true_false', 'Das Wort "das Ticket" gehört zum Thema Train Stations & Airports.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-00006580964d', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006580964d', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'Wie lautet das deutsche Wort für "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-00006580964d', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006580964d', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006580964d', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006580964d', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006580964d', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 3),
  ('00000000-0000-4000-a000-00006580964d', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006580964d', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006580964d', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006580964d', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006580964d', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006580964d', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006580964d', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006580964d', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006580964d', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006580964d', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006580964d', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006580964d', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006580964d', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006580964d', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006580964d', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006580964d', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006580964d', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006580964d', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006580964d', 'Am Bahnhof und Flughafen — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006580964d', '🔊 Sprechen: Am Bahnhof und Flughafen', 'Roleplay: You are in a German café. Introduce yourself and talk about Train Stations & Airports. Your partner (AI) will respond naturally.', 'Train Stations & Airports', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006580964d', '✏️ Schreiben: Am Bahnhof und Flughafen', 'Write an email to a German friend about "Train Stations & Airports". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964d', 'Am Bahnhof und Flughafen — Roleplay', 'Train Stations & Airports', 'Student', 'Teacher', 'Practice conversation about Train Stations & Airports', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964d', 'Am Bahnhof und Flughafen — Advanced Roleplay', 'Train Stations & Airports', 'Customer', 'Assistant', 'Extended conversation about Train Stations & Airports', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006580964d', 'Am Bahnhof und Flughafen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Am Bahnhof und Flughafen".', 'Creative practice for Train Stations & Airports', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006580964d', '📚 Hausaufgabe: Am Bahnhof und Flughafen', 'Complete these tasks to reinforce "Am Bahnhof und Flughafen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Train Stations & Airports: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Train Stations & Airports. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006580964d', '🎯 Great work! In this lesson you learned 72 new words about Train Stations & Airports. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Train Stations & Airports","present_tense — grammar explanation and practice","Reading comprehension: text about Train Stations & Airports","Listening comprehension: dialogue about Train Stations & Airports","Speaking practice: roleplay/discussion about Train Stations & Airports","Writing task: text about Train Stations & Airports"]', '[{"title":"Am Bahnhof und Flughafen Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Train Stations & Airports for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Train Stations & Airports."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'translation', 'Translate to German: "I use the word "train" in a sentence about Train Stations & Airports."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Train Stations & Airports."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Culture: 🇩🇪 Deutsche Kultur: Train Stations & Airports', 'In Germany, Train Stations & Airports is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Train Stations & Airports, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Train Stations & Airports بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964d', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Meine Stadt beschreiben (L-A2-03-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006580964c', '00000000-0000-4000-a000-000039b547bf', 'Meine Stadt beschreiben', 'Describe your city or favorite places.', 'Describing Cities', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'die Stadt', 'المدينة', 'city', NULL, 'die', 'die Städte', 'noun', 'Berlin ist eine große Stadt.', 'Berlin is a big city.', 'A1', 1),
  ('00000000-0000-4000-a000-00006580964c', 'die Straße', 'الشارع', 'street', NULL, 'die', 'die Straßen', 'noun', 'Die Straße ist lang.', 'The street is long.', 'A1', 2),
  ('00000000-0000-4000-a000-00006580964c', 'der Platz', 'الساحة', 'square', NULL, 'der', 'die Plätze', 'noun', 'Der Platz ist schön.', 'The square is beautiful.', 'A1', 3),
  ('00000000-0000-4000-a000-00006580964c', 'das Gebäude', 'المبنى', 'building', NULL, 'das', 'die Gebäude', 'noun', 'Das Gebäude ist alt.', 'The building is old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006580964c', 'die Ampel', 'إشارة المرور', 'traffic light', NULL, 'die', 'die Ampeln', 'noun', 'Die Ampel ist rot.', 'The traffic light is red.', 'A2', 5),
  ('00000000-0000-4000-a000-00006580964c', 'die Kirche', 'الكنيسة', 'church', NULL, 'die', 'die Kirchen', 'noun', 'Die Kirche ist alt.', 'The church is old.', 'A1', 6),
  ('00000000-0000-4000-a000-00006580964c', 'der Park', 'الحديقة', 'park', NULL, 'der', 'die Parks', 'noun', 'Der Park ist groß.', 'The park is big.', 'A1', 7),
  ('00000000-0000-4000-a000-00006580964c', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-00006580964c', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-00006580964c', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-00006580964c', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-00006580964c', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-00006580964c', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-00006580964c', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-00006580964c', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-00006580964c', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-00006580964c', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-00006580964c', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-00006580964c', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006580964c', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-00006580964c', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-00006580964c', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-00006580964c', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-00006580964c', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-00006580964c', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-00006580964c', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-00006580964c', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-00006580964c', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-00006580964c', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-00006580964c', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'Welches deutsche Wort bedeutet "city"?', '["die Stadt","das Gebäude","der Platz","die Ampel"]', 'die Stadt', '"city" = "die Stadt" in German. Article: die Plural: die Städte', 1, 1),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'Welches deutsche Wort bedeutet "street"?', '["das Gebäude","die Straße","die Ampel","die Stadt"]', 'die Straße', '"street" = "die Straße" in German. Article: die Plural: die Straßen', 1, 2),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'Welches deutsche Wort bedeutet "square"?', '["der Platz","das Gebäude","die Ampel","die Stadt"]', 'der Platz', '"square" = "der Platz" in German. Article: der Plural: die Plätze', 1, 3),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'Welches deutsche Wort bedeutet "building"?', '["das Gebäude","die Stadt","die Straße","der Platz"]', 'das Gebäude', '"building" = "das Gebäude" in German. Article: das Plural: die Gebäude', 1, 4),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'Welches deutsche Wort bedeutet "traffic light"?', '["die Ampel","die Stadt","die Straße","der Platz"]', 'die Ampel', '"traffic light" = "die Ampel" in German. Article: die Plural: die Ampeln', 1, 5),
  ('00000000-0000-4000-a000-00006580964c', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Describing Cities. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006580964c', 'translation', 'Übersetze ins Deutsche: "I am learning about Describing Cities."', '["Ich lerne über Describing Cities.","Ich lerne Describing Cities.","Lerne ich Describing Cities."]', 'Ich lerne über Describing Cities.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006580964c', 'matching', 'Match: Which word pairs are correct?', '["die Stadt - city, die Straße - street"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'Was bedeutet "die Stadt" auf Deutsch?', '["city","to run","beautiful","yesterday"]', 'city', 1, 1),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'Welcher Artikel gehört zu "die Straße"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006580964c', 'true_false', 'Das Wort "der Platz" gehört zum Thema Describing Cities.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-00006580964c', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006580964c', 'fill_blank', 'Complete: Ich ___ (building) Deutsch.', '["das Gebäude","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'Wie lautet das deutsche Wort für "traffic light"?', '["die Ampel","die Kirche","der Park","einkaufen"]', 'die Ampel', 1, 7),
  ('00000000-0000-4000-a000-00006580964c', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006580964c', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006580964c', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Entschuldigung, wo ist der Bahnhof?', 'Excuse me, where is the train station?', 'عذراً، أين محطة القطار؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006580964c', 'Wie komme ich zum Alexanderplatz?', 'How do I get to Alexanderplatz?', 'كيف أصل إلى ألكسندر بلاتس؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006580964c', 'Ist das weit von hier?', 'Is that far from here?', 'هل هذا بعيد من هنا؟', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006580964c', 'Ich habe mich verlaufen.', 'I am lost.', 'لقد توهت.', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'die die Stadt (die Städte)', 'city — المدينة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006580964c', 'die die Straße (die Straßen)', 'street — الشارع', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006580964c', 'der der Platz (die Plätze)', 'square — الساحة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006580964c', 'das das Gebäude (die Gebäude)', 'building — المبنى', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006580964c', 'die die Ampel (die Ampeln)', 'traffic light — إشارة المرور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006580964c', 'die die Kirche (die Kirchen)', 'church — الكنيسة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006580964c', 'der der Park (die Parks)', 'park — الحديقة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006580964c', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006580964c', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006580964c', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006580964c', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006580964c', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006580964c', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006580964c', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006580964c', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006580964c', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006580964c', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006580964c', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006580964c', 'Meine Stadt beschreiben — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006580964c', '🔊 Sprechen: Meine Stadt beschreiben', 'Roleplay: You are in a German café. Introduce yourself and talk about Describing Cities. Your partner (AI) will respond naturally.', 'Describing Cities', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006580964c', '✏️ Schreiben: Meine Stadt beschreiben', 'Write an email to a German friend about "Describing Cities". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964c', 'Meine Stadt beschreiben — Roleplay', 'Describing Cities', 'Student', 'Teacher', 'Practice conversation about Describing Cities', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964c', 'Meine Stadt beschreiben — Advanced Roleplay', 'Describing Cities', 'Customer', 'Assistant', 'Extended conversation about Describing Cities', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006580964c', 'Meine Stadt beschreiben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Meine Stadt beschreiben".', 'Creative practice for Describing Cities', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006580964c', '📚 Hausaufgabe: Meine Stadt beschreiben', 'Complete these tasks to reinforce "Meine Stadt beschreiben".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Describing Cities: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Describing Cities. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006580964c', '🎯 Great work! In this lesson you learned 72 new words about Describing Cities. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Describing Cities","present_tense — grammar explanation and practice","Reading comprehension: text about Describing Cities","Listening comprehension: dialogue about Describing Cities","Speaking practice: roleplay/discussion about Describing Cities","Writing task: text about Describing Cities"]', '[{"title":"Meine Stadt beschreiben Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Stadt (city)','die Straße (street)','der Platz (square)','das Gebäude (building)','die Ampel (traffic light)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Describing Cities for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'translation', 'Translate to German: "I use the word "city" in a sentence about Describing Cities."', '[]', 'Berlin ist eine große Stadt.', 'Use die  "die Stadt" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'translation', 'Translate to German: "I use the word "street" in a sentence about Describing Cities."', '[]', 'Die Straße ist lang.', 'Use die  "die Straße" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'translation', 'Translate to German: "I use the word "square" in a sentence about Describing Cities."', '[]', 'Der Platz ist schön.', 'Use der  "der Platz" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Culture: 🇩🇪 Deutsche Kultur: Describing Cities', 'In Germany, Describing Cities is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Describing Cities, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Describing Cities بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964c', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: Test: Stadt und Orientierung (L-A2-03-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-00006580964b', '00000000-0000-4000-a000-000039b547bf', 'Test: Stadt und Orientierung', 'Module test on city and orientation.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'die Stadt', 'المدينة', 'city', NULL, 'die', 'die Städte', 'noun', 'Berlin ist eine große Stadt.', 'Berlin is a big city.', 'A1', 1),
  ('00000000-0000-4000-a000-00006580964b', 'die Straße', 'الشارع', 'street', NULL, 'die', 'die Straßen', 'noun', 'Die Straße ist lang.', 'The street is long.', 'A1', 2),
  ('00000000-0000-4000-a000-00006580964b', 'der Platz', 'الساحة', 'square', NULL, 'der', 'die Plätze', 'noun', 'Der Platz ist schön.', 'The square is beautiful.', 'A1', 3),
  ('00000000-0000-4000-a000-00006580964b', 'das Gebäude', 'المبنى', 'building', NULL, 'das', 'die Gebäude', 'noun', 'Das Gebäude ist alt.', 'The building is old.', 'A1', 4),
  ('00000000-0000-4000-a000-00006580964b', 'die Ampel', 'إشارة المرور', 'traffic light', NULL, 'die', 'die Ampeln', 'noun', 'Die Ampel ist rot.', 'The traffic light is red.', 'A2', 5),
  ('00000000-0000-4000-a000-00006580964b', 'die Kirche', 'الكنيسة', 'church', NULL, 'die', 'die Kirchen', 'noun', 'Die Kirche ist alt.', 'The church is old.', 'A1', 6),
  ('00000000-0000-4000-a000-00006580964b', 'der Park', 'الحديقة', 'park', NULL, 'der', 'die Parks', 'noun', 'Der Park ist groß.', 'The park is big.', 'A1', 7),
  ('00000000-0000-4000-a000-00006580964b', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 8),
  ('00000000-0000-4000-a000-00006580964b', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 9),
  ('00000000-0000-4000-a000-00006580964b', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 10),
  ('00000000-0000-4000-a000-00006580964b', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 11),
  ('00000000-0000-4000-a000-00006580964b', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 12),
  ('00000000-0000-4000-a000-00006580964b', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 13),
  ('00000000-0000-4000-a000-00006580964b', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 14),
  ('00000000-0000-4000-a000-00006580964b', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 15),
  ('00000000-0000-4000-a000-00006580964b', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 16),
  ('00000000-0000-4000-a000-00006580964b', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 17),
  ('00000000-0000-4000-a000-00006580964b', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 18),
  ('00000000-0000-4000-a000-00006580964b', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 19),
  ('00000000-0000-4000-a000-00006580964b', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 20),
  ('00000000-0000-4000-a000-00006580964b', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 21),
  ('00000000-0000-4000-a000-00006580964b', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 22),
  ('00000000-0000-4000-a000-00006580964b', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 23),
  ('00000000-0000-4000-a000-00006580964b', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 24),
  ('00000000-0000-4000-a000-00006580964b', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 25),
  ('00000000-0000-4000-a000-00006580964b', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 26),
  ('00000000-0000-4000-a000-00006580964b', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 27),
  ('00000000-0000-4000-a000-00006580964b', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 28),
  ('00000000-0000-4000-a000-00006580964b', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 29),
  ('00000000-0000-4000-a000-00006580964b', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'Welches deutsche Wort bedeutet "city"?', '["die Ampel","das Gebäude","der Platz","die Straße"]', 'die Stadt', '"city" = "die Stadt" in German. Article: die Plural: die Städte', 1, 1),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'Welches deutsche Wort bedeutet "street"?', '["der Platz","die Straße","die Ampel","die Stadt"]', 'die Straße', '"street" = "die Straße" in German. Article: die Plural: die Straßen', 1, 2),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'Welches deutsche Wort bedeutet "square"?', '["die Straße","das Gebäude","der Platz","die Ampel"]', 'der Platz', '"square" = "der Platz" in German. Article: der Plural: die Plätze', 1, 3),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'Welches deutsche Wort bedeutet "building"?', '["die Stadt","die Straße","der Platz","die Ampel"]', 'das Gebäude', '"building" = "das Gebäude" in German. Article: das Plural: die Gebäude', 1, 4),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'Welches deutsche Wort bedeutet "traffic light"?', '["das Gebäude","die Stadt","der Platz","die Straße"]', 'die Ampel', '"traffic light" = "die Ampel" in German. Article: die Plural: die Ampeln', 1, 5),
  ('00000000-0000-4000-a000-00006580964b', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-00006580964b', 'translation', 'Übersetze ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-00006580964b', 'matching', 'Match: Which word pairs are correct?', '["die Stadt - city, die Straße - street"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'Was bedeutet "die Stadt" auf Deutsch?', '["city","to run","beautiful","yesterday"]', 'city', 1, 1),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'Welcher Artikel gehört zu "die Straße"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-00006580964b', 'true_false', 'Das Wort "der Platz" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-00006580964b', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-00006580964b', 'fill_blank', 'Complete: Ich ___ (building) Deutsch.', '["das Gebäude","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'Wie lautet das deutsche Wort für "traffic light"?', '["die Ampel","die Kirche","der Park","einkaufen"]', 'die Ampel', 1, 7),
  ('00000000-0000-4000-a000-00006580964b', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-00006580964b', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-00006580964b', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Entschuldigung, wo ist der Bahnhof?', 'Excuse me, where is the train station?', 'عذراً، أين محطة القطار؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 1),
  ('00000000-0000-4000-a000-00006580964b', 'Wie komme ich zum Alexanderplatz?', 'How do I get to Alexanderplatz?', 'كيف أصل إلى ألكسندر بلاتس؟', NULL, 'Used in Stadt und Orientierung', 'formal', false, 2),
  ('00000000-0000-4000-a000-00006580964b', 'Ist das weit von hier?', 'Is that far from here?', 'هل هذا بعيد من هنا؟', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 3),
  ('00000000-0000-4000-a000-00006580964b', 'Ich habe mich verlaufen.', 'I am lost.', 'لقد توهت.', NULL, 'Used in Stadt und Orientierung', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'die die Stadt (die Städte)', 'city — المدينة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-00006580964b', 'die die Straße (die Straßen)', 'street — الشارع', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-00006580964b', 'der der Platz (die Plätze)', 'square — الساحة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-00006580964b', 'das das Gebäude (die Gebäude)', 'building — المبنى', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-00006580964b', 'die die Ampel (die Ampeln)', 'traffic light — إشارة المرور', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-00006580964b', 'die die Kirche (die Kirchen)', 'church — الكنيسة', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-00006580964b', 'der der Park (die Parks)', 'park — الحديقة', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-00006580964b', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 8),
  ('00000000-0000-4000-a000-00006580964b', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 9),
  ('00000000-0000-4000-a000-00006580964b', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 10),
  ('00000000-0000-4000-a000-00006580964b', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-00006580964b', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-00006580964b', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-00006580964b', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-00006580964b', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-00006580964b', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-00006580964b', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-00006580964b', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-00006580964b', 'Test: Stadt und Orientierung — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Stadt und Orientierung');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-00006580964b', '🔊 Sprechen: Test: Stadt und Orientierung', 'Roleplay: You are in a German café. Introduce yourself and talk about Module Test. Your partner (AI) will respond naturally.', 'Module Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-00006580964b', '✏️ Schreiben: Test: Stadt und Orientierung', 'Write an email to a German friend about "Module Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964b', 'Test: Stadt und Orientierung — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-00006580964b', 'Test: Stadt und Orientierung — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Stadt','die Straße','der Platz','das Gebäude','die Ampel','die Kirche','der Park','einkaufen']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-00006580964b', 'Test: Stadt und Orientierung — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Stadt und Orientierung".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-00006580964b', '📚 Hausaufgabe: Test: Stadt und Orientierung', 'Complete these tasks to reinforce "Test: Stadt und Orientierung".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-00006580964b', '🎯 Great work! In this lesson you learned 72 new words about Module Test. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Stadt und Orientierung Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Stadt (city)','die Straße (street)','der Platz (square)','das Gebäude (building)','die Ampel (traffic light)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'translation', 'Translate to German: "I use the word "city" in a sentence about Module Test."', '[]', 'Berlin ist eine große Stadt.', 'Use die  "die Stadt" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'translation', 'Translate to German: "I use the word "street" in a sentence about Module Test."', '[]', 'Die Straße ist lang.', 'Use die  "die Straße" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'translation', 'Translate to German: "I use the word "square" in a sentence about Module Test."', '[]', 'Der Platz ist schön.', 'Use der  "der Platz" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'In Germany, Module Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Module Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Module Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-00006580964b', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Module 4: Gesundheit und Körper
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547c0', 'A2', 'Gesundheit und Körper', 'Talk about health, body parts, and visit the doctor.', '["Name body parts","Describe symptoms to a doctor","Make a doctor''s appointment","Use imperative mood for instructions","Talk about health and fitness"]', 4, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Der Körper (L-A2-04-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021f1', '00000000-0000-4000-a000-000039b547c0', 'Der Körper', 'Learn body part vocabulary.', 'Body Parts', 'vocabulary', '["Understand and use 78 key vocabulary words about Body Parts","Apply present_tense correctly in sentences","Read and comprehend a text about Body Parts","Listen and understand a natural dialogue about Body Parts","Speak about Body Parts with confidence","Write a short text about Body Parts using new vocabulary"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'der Kopf', 'الرأس', 'head', NULL, 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021f1', 'das Auge', 'العين', 'eye', NULL, 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021f1', 'die Hand', 'اليد', 'hand', NULL, 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021f1', 'das Bein', 'الساق', 'leg', NULL, 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021f1', 'das Herz', 'القلب', 'heart', NULL, 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021f1', 'der Schmerz', 'الألم', 'pain', NULL, 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021f1', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021f1', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021f1', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021f1', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021f1', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021f1', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021f1', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021f1', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021f1', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021f1', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021f1', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021f1', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021f1', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021f1', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021f1', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021f1', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021f1', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021f1', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021f1', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021f1', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021f1', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021f1', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021f1', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021f1', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'Welches deutsche Wort bedeutet "head"?', '["der Kopf","das Bein","die Hand","das Auge"]', 'der Kopf', '"head" = "der Kopf" in German. Article: der Plural: die Köpfe', 1, 1),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'Welches deutsche Wort bedeutet "eye"?', '["das Herz","das Bein","das Auge","der Kopf"]', 'das Auge', '"eye" = "das Auge" in German. Article: das Plural: die Augen', 1, 2),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'Welches deutsche Wort bedeutet "hand"?', '["die Hand","der Kopf","das Auge","das Bein"]', 'die Hand', '"hand" = "die Hand" in German. Article: die Plural: die Hände', 1, 3),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'Welches deutsche Wort bedeutet "leg"?', '["das Bein","der Kopf","das Auge","die Hand"]', 'das Bein', '"leg" = "das Bein" in German. Article: das Plural: die Beine', 1, 4),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'Welches deutsche Wort bedeutet "heart"?', '["das Bein","die Hand","das Auge","der Kopf"]', 'das Herz', '"heart" = "das Herz" in German. Article: das Plural: die Herzen', 1, 5),
  ('00000000-0000-4000-a000-0000658021f1', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Body Parts. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000658021f1', 'translation', 'Übersetze ins Deutsche: "I am learning about Body Parts."', '["Ich lerne über Body Parts.","Ich lerne Body Parts.","Lerne ich Body Parts."]', 'Ich lerne über Body Parts.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000658021f1', 'matching', 'Match: Which word pairs are correct?', '["der Kopf - head, das Auge - eye"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'Was bedeutet "der Kopf" auf Deutsch?', '["head","to run","beautiful","yesterday"]', 'head', 1, 1),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'Welcher Artikel gehört zu "das Auge"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000658021f1', 'true_false', 'Das Wort "die Hand" gehört zum Thema Body Parts.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-0000658021f1', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000658021f1', 'fill_blank', 'Complete: Ich ___ (leg) Deutsch.', '["das Bein","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'Wie lautet das deutsche Wort für "heart"?', '["das Herz","der Schmerz","einkaufen","der Preis"]', 'das Herz', 1, 7),
  ('00000000-0000-4000-a000-0000658021f1', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021f1', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000658021f1', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021f1', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000658021f1', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesundheit und Körper', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000658021f1', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'der der Kopf (die Köpfe)', 'head — الرأس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000658021f1', 'das das Auge (die Augen)', 'eye — العين', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000658021f1', 'die die Hand (die Hände)', 'hand — اليد', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000658021f1', 'das das Bein (die Beine)', 'leg — الساق', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000658021f1', 'das das Herz (die Herzen)', 'heart — القلب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000658021f1', 'der der Schmerz (die Schmerzen)', 'pain — الألم', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000658021f1', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000658021f1', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000658021f1', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000658021f1', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000658021f1', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000658021f1', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000658021f1', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000658021f1', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000658021f1', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000658021f1', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000658021f1', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000658021f1', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021f1', 'Der Körper — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', '🔊 Sprechen: Der Körper', 'Roleplay: You are in a German café. Introduce yourself and talk about Body Parts. Your partner (AI) will respond naturally.', 'Body Parts', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', '✏️ Schreiben: Der Körper', 'Write an email to a German friend about "Body Parts". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021f1', 'Der Körper — Roleplay', 'Body Parts', 'Student', 'Teacher', 'Practice conversation about Body Parts', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021f1', 'Der Körper — Advanced Roleplay', 'Body Parts', 'Customer', 'Assistant', 'Extended conversation about Body Parts', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021f1', 'Der Körper — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Der Körper".', 'Creative practice for Body Parts', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', '📚 Hausaufgabe: Der Körper', 'Complete these tasks to reinforce "Der Körper".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Body Parts: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Body Parts. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021f1', '🎯 Great work! In this lesson you learned 78 new words about Body Parts. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["78 vocabulary items about Body Parts","present_tense — grammar explanation and practice","Reading comprehension: text about Body Parts","Listening comprehension: dialogue about Body Parts","Speaking practice: roleplay/discussion about Body Parts","Writing task: text about Body Parts"]', '[{"title":"Der Körper Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Kopf (head)','das Auge (eye)','die Hand (hand)','das Bein (leg)','das Herz (heart)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Body Parts for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'translation', 'Translate to German: "I use the word "head" in a sentence about Body Parts."', '[]', 'Der Kopf tut mir weh.', 'Use der  "der Kopf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'translation', 'Translate to German: "I use the word "eye" in a sentence about Body Parts."', '[]', 'Er hat blaue Augen.', 'Use das  "das Auge" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'translation', 'Translate to German: "I use the word "hand" in a sentence about Body Parts."', '[]', 'Die Hände sind kalt.', 'Use die  "die Hand" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Culture: 🇩🇪 Deutsche Kultur: Body Parts', 'In Germany, Body Parts is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Body Parts, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Body Parts بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f1', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Beim Arzt (L-A2-04-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021f0', '00000000-0000-4000-a000-000039b547c0', 'Beim Arzt', 'Practice describing symptoms and visiting the doctor.', 'At the Doctor', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'der Kopf', 'الرأس', 'head', NULL, 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021f0', 'das Auge', 'العين', 'eye', NULL, 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021f0', 'die Hand', 'اليد', 'hand', NULL, 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021f0', 'das Bein', 'الساق', 'leg', NULL, 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021f0', 'das Herz', 'القلب', 'heart', NULL, 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021f0', 'der Schmerz', 'الألم', 'pain', NULL, 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021f0', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021f0', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021f0', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021f0', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021f0', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021f0', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021f0', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021f0', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021f0', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021f0', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021f0', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021f0', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021f0', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021f0', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021f0', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021f0', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021f0', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021f0', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021f0', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021f0', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021f0', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021f0', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021f0', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021f0', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'Welches deutsche Wort bedeutet "head"?', '["das Bein","die Hand","das Auge","der Kopf"]', 'der Kopf', '"head" = "der Kopf" in German. Article: der Plural: die Köpfe', 1, 1),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'Welches deutsche Wort bedeutet "eye"?', '["die Hand","das Bein","das Herz","das Auge"]', 'das Auge', '"eye" = "das Auge" in German. Article: das Plural: die Augen', 1, 2),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'Welches deutsche Wort bedeutet "hand"?', '["das Bein","die Hand","das Herz","der Kopf"]', 'die Hand', '"hand" = "die Hand" in German. Article: die Plural: die Hände', 1, 3),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'Welches deutsche Wort bedeutet "leg"?', '["das Bein","die Hand","der Kopf","das Herz"]', 'das Bein', '"leg" = "das Bein" in German. Article: das Plural: die Beine', 1, 4),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'Welches deutsche Wort bedeutet "heart"?', '["die Hand","das Auge","das Bein","der Kopf"]', 'das Herz', '"heart" = "das Herz" in German. Article: das Plural: die Herzen', 1, 5),
  ('00000000-0000-4000-a000-0000658021f0', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über At the Doctor. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000658021f0', 'translation', 'Übersetze ins Deutsche: "I am learning about At the Doctor."', '["Ich lerne über At the Doctor.","Ich lerne At the Doctor.","Lerne ich At the Doctor."]', 'Ich lerne über At the Doctor.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000658021f0', 'matching', 'Match: Which word pairs are correct?', '["der Kopf - head, das Auge - eye"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'Was bedeutet "der Kopf" auf Deutsch?', '["head","to run","beautiful","yesterday"]', 'head', 1, 1),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'Welcher Artikel gehört zu "das Auge"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000658021f0', 'true_false', 'Das Wort "die Hand" gehört zum Thema At the Doctor.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-0000658021f0', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000658021f0', 'fill_blank', 'Complete: Ich ___ (leg) Deutsch.', '["das Bein","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'Wie lautet das deutsche Wort für "heart"?', '["das Herz","der Schmerz","einkaufen","der Preis"]', 'das Herz', 1, 7),
  ('00000000-0000-4000-a000-0000658021f0', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021f0', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000658021f0', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021f0', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000658021f0', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesundheit und Körper', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000658021f0', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'der der Kopf (die Köpfe)', 'head — الرأس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000658021f0', 'das das Auge (die Augen)', 'eye — العين', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000658021f0', 'die die Hand (die Hände)', 'hand — اليد', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000658021f0', 'das das Bein (die Beine)', 'leg — الساق', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000658021f0', 'das das Herz (die Herzen)', 'heart — القلب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000658021f0', 'der der Schmerz (die Schmerzen)', 'pain — الألم', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000658021f0', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000658021f0', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000658021f0', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000658021f0', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000658021f0', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000658021f0', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000658021f0', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000658021f0', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000658021f0', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000658021f0', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000658021f0', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000658021f0', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021f0', 'Beim Arzt — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', '🔊 Sprechen: Beim Arzt', 'Roleplay: You are in a German café. Introduce yourself and talk about At the Doctor. Your partner (AI) will respond naturally.', 'At the Doctor', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', '✏️ Schreiben: Beim Arzt', 'Write an email to a German friend about "At the Doctor". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021f0', 'Beim Arzt — Roleplay', 'At the Doctor', 'Student', 'Teacher', 'Practice conversation about At the Doctor', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021f0', 'Beim Arzt — Advanced Roleplay', 'At the Doctor', 'Customer', 'Assistant', 'Extended conversation about At the Doctor', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021f0', 'Beim Arzt — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Beim Arzt".', 'Creative practice for At the Doctor', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', '📚 Hausaufgabe: Beim Arzt', 'Complete these tasks to reinforce "Beim Arzt".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about At the Doctor: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about At the Doctor. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021f0', '🎯 Great work! In this lesson you learned 78 new words about At the Doctor. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["78 vocabulary items about At the Doctor","present_tense — grammar explanation and practice","Reading comprehension: text about At the Doctor","Listening comprehension: dialogue about At the Doctor","Speaking practice: roleplay/discussion about At the Doctor","Writing task: text about At the Doctor"]', '[{"title":"Beim Arzt Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Kopf (head)','das Auge (eye)','die Hand (hand)','das Bein (leg)','das Herz (heart)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about At the Doctor for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'translation', 'Translate to German: "I use the word "head" in a sentence about At the Doctor."', '[]', 'Der Kopf tut mir weh.', 'Use der  "der Kopf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'translation', 'Translate to German: "I use the word "eye" in a sentence about At the Doctor."', '[]', 'Er hat blaue Augen.', 'Use das  "das Auge" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'translation', 'Translate to German: "I use the word "hand" in a sentence about At the Doctor."', '[]', 'Die Hände sind kalt.', 'Use die  "die Hand" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Culture: 🇩🇪 Deutsche Kultur: At the Doctor', 'In Germany, At the Doctor is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing At the Doctor, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع At the Doctor بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021f0', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Gesundheit und Fitness (L-A2-04-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021ef', '00000000-0000-4000-a000-000039b547c0', 'Gesundheit und Fitness', 'Learn vocabulary about health, exercise, and well-being.', 'Health & Fitness', 'vocabulary', '["Understand and use 78 key vocabulary words about Health & Fitness","Apply present_tense correctly in sentences","Read and comprehend a text about Health & Fitness","Listen and understand a natural dialogue about Health & Fitness","Speak about Health & Fitness with confidence","Write a short text about Health & Fitness using new vocabulary"]', 45, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'der Kopf', 'الرأس', 'head', NULL, 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021ef', 'das Auge', 'العين', 'eye', NULL, 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021ef', 'die Hand', 'اليد', 'hand', NULL, 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021ef', 'das Bein', 'الساق', 'leg', NULL, 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021ef', 'das Herz', 'القلب', 'heart', NULL, 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021ef', 'der Schmerz', 'الألم', 'pain', NULL, 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021ef', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021ef', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021ef', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021ef', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021ef', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021ef', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021ef', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021ef', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021ef', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021ef', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021ef', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021ef', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021ef', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021ef', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021ef', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021ef', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021ef', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021ef', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021ef', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021ef', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021ef', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021ef', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021ef', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021ef', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'Welches deutsche Wort bedeutet "head"?', '["das Bein","der Kopf","das Auge","die Hand"]', 'der Kopf', '"head" = "der Kopf" in German. Article: der Plural: die Köpfe', 1, 1),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'Welches deutsche Wort bedeutet "eye"?', '["das Bein","das Auge","das Herz","der Kopf"]', 'das Auge', '"eye" = "das Auge" in German. Article: das Plural: die Augen', 1, 2),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'Welches deutsche Wort bedeutet "hand"?', '["das Auge","das Herz","der Kopf","die Hand"]', 'die Hand', '"hand" = "die Hand" in German. Article: die Plural: die Hände', 1, 3),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'Welches deutsche Wort bedeutet "leg"?', '["das Bein","der Kopf","das Herz","das Auge"]', 'das Bein', '"leg" = "das Bein" in German. Article: das Plural: die Beine', 1, 4),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'Welches deutsche Wort bedeutet "heart"?', '["der Kopf","das Herz","das Auge","das Bein"]', 'das Herz', '"heart" = "das Herz" in German. Article: das Plural: die Herzen', 1, 5),
  ('00000000-0000-4000-a000-0000658021ef', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Health & Fitness. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000658021ef', 'translation', 'Übersetze ins Deutsche: "I am learning about Health & Fitness."', '["Ich lerne über Health & Fitness.","Ich lerne Health & Fitness.","Lerne ich Health & Fitness."]', 'Ich lerne über Health & Fitness.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000658021ef', 'matching', 'Match: Which word pairs are correct?', '["der Kopf - head, das Auge - eye"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'Was bedeutet "der Kopf" auf Deutsch?', '["head","to run","beautiful","yesterday"]', 'head', 1, 1),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'Welcher Artikel gehört zu "das Auge"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000658021ef', 'true_false', 'Das Wort "die Hand" gehört zum Thema Health & Fitness.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-0000658021ef', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000658021ef', 'fill_blank', 'Complete: Ich ___ (leg) Deutsch.', '["das Bein","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'Wie lautet das deutsche Wort für "heart"?', '["das Herz","der Schmerz","einkaufen","der Preis"]', 'das Herz', 1, 7),
  ('00000000-0000-4000-a000-0000658021ef', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021ef', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000658021ef', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021ef', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000658021ef', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesundheit und Körper', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000658021ef', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'der der Kopf (die Köpfe)', 'head — الرأس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000658021ef', 'das das Auge (die Augen)', 'eye — العين', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000658021ef', 'die die Hand (die Hände)', 'hand — اليد', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000658021ef', 'das das Bein (die Beine)', 'leg — الساق', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000658021ef', 'das das Herz (die Herzen)', 'heart — القلب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000658021ef', 'der der Schmerz (die Schmerzen)', 'pain — الألم', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000658021ef', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000658021ef', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000658021ef', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000658021ef', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000658021ef', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000658021ef', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000658021ef', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000658021ef', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000658021ef', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000658021ef', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000658021ef', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000658021ef', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021ef', 'Gesundheit und Fitness — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', '🔊 Sprechen: Gesundheit und Fitness', 'Roleplay: You are in a German café. Introduce yourself and talk about Health & Fitness. Your partner (AI) will respond naturally.', 'Health & Fitness', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', '✏️ Schreiben: Gesundheit und Fitness', 'Write an email to a German friend about "Health & Fitness". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ef', 'Gesundheit und Fitness — Roleplay', 'Health & Fitness', 'Student', 'Teacher', 'Practice conversation about Health & Fitness', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ef', 'Gesundheit und Fitness — Advanced Roleplay', 'Health & Fitness', 'Customer', 'Assistant', 'Extended conversation about Health & Fitness', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021ef', 'Gesundheit und Fitness — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Gesundheit und Fitness".', 'Creative practice for Health & Fitness', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', '📚 Hausaufgabe: Gesundheit und Fitness', 'Complete these tasks to reinforce "Gesundheit und Fitness".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Health & Fitness: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Health & Fitness. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021ef', '🎯 Great work! In this lesson you learned 78 new words about Health & Fitness. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["78 vocabulary items about Health & Fitness","present_tense — grammar explanation and practice","Reading comprehension: text about Health & Fitness","Listening comprehension: dialogue about Health & Fitness","Speaking practice: roleplay/discussion about Health & Fitness","Writing task: text about Health & Fitness"]', '[{"title":"Gesundheit und Fitness Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Kopf (head)','das Auge (eye)','die Hand (hand)','das Bein (leg)','das Herz (heart)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Health & Fitness for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'translation', 'Translate to German: "I use the word "head" in a sentence about Health & Fitness."', '[]', 'Der Kopf tut mir weh.', 'Use der  "der Kopf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'translation', 'Translate to German: "I use the word "eye" in a sentence about Health & Fitness."', '[]', 'Er hat blaue Augen.', 'Use das  "das Auge" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'translation', 'Translate to German: "I use the word "hand" in a sentence about Health & Fitness."', '[]', 'Die Hände sind kalt.', 'Use die  "die Hand" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Culture: 🇩🇪 Deutsche Kultur: Health & Fitness', 'In Germany, Health & Fitness is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Health & Fitness, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Health & Fitness بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ef', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: In der Apotheke (L-A2-04-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021ee', '00000000-0000-4000-a000-000039b547c0', 'In der Apotheke', 'Learn how to buy medicine and ask for advice at the pharmacy.', 'Pharmacy', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'der Kopf', 'الرأس', 'head', NULL, 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021ee', 'das Auge', 'العين', 'eye', NULL, 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021ee', 'die Hand', 'اليد', 'hand', NULL, 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021ee', 'das Bein', 'الساق', 'leg', NULL, 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021ee', 'das Herz', 'القلب', 'heart', NULL, 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021ee', 'der Schmerz', 'الألم', 'pain', NULL, 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021ee', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021ee', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021ee', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021ee', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021ee', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021ee', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021ee', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021ee', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021ee', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021ee', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021ee', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021ee', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021ee', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021ee', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021ee', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021ee', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021ee', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021ee', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021ee', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021ee', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021ee', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021ee', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021ee', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021ee', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'Welches deutsche Wort bedeutet "head"?', '["der Kopf","die Hand","das Herz","das Bein"]', 'der Kopf', '"head" = "der Kopf" in German. Article: der Plural: die Köpfe', 1, 1),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'Welches deutsche Wort bedeutet "eye"?', '["das Auge","der Kopf","die Hand","das Bein"]', 'das Auge', '"eye" = "das Auge" in German. Article: das Plural: die Augen', 1, 2),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'Welches deutsche Wort bedeutet "hand"?', '["die Hand","das Bein","das Herz","der Kopf"]', 'die Hand', '"hand" = "die Hand" in German. Article: die Plural: die Hände', 1, 3),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'Welches deutsche Wort bedeutet "leg"?', '["der Kopf","das Bein","die Hand","das Herz"]', 'das Bein', '"leg" = "das Bein" in German. Article: das Plural: die Beine', 1, 4),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'Welches deutsche Wort bedeutet "heart"?', '["das Bein","das Herz","der Kopf","das Auge"]', 'das Herz', '"heart" = "das Herz" in German. Article: das Plural: die Herzen', 1, 5),
  ('00000000-0000-4000-a000-0000658021ee', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Pharmacy. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000658021ee', 'translation', 'Übersetze ins Deutsche: "I am learning about Pharmacy."', '["Ich lerne über Pharmacy.","Ich lerne Pharmacy.","Lerne ich Pharmacy."]', 'Ich lerne über Pharmacy.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000658021ee', 'matching', 'Match: Which word pairs are correct?', '["der Kopf - head, das Auge - eye"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'Was bedeutet "der Kopf" auf Deutsch?', '["head","to run","beautiful","yesterday"]', 'head', 1, 1),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'Welcher Artikel gehört zu "das Auge"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000658021ee', 'true_false', 'Das Wort "die Hand" gehört zum Thema Pharmacy.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-0000658021ee', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000658021ee', 'fill_blank', 'Complete: Ich ___ (leg) Deutsch.', '["das Bein","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'Wie lautet das deutsche Wort für "heart"?', '["das Herz","der Schmerz","einkaufen","der Preis"]', 'das Herz', 1, 7),
  ('00000000-0000-4000-a000-0000658021ee', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021ee', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000658021ee', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021ee', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000658021ee', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesundheit und Körper', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000658021ee', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'der der Kopf (die Köpfe)', 'head — الرأس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000658021ee', 'das das Auge (die Augen)', 'eye — العين', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000658021ee', 'die die Hand (die Hände)', 'hand — اليد', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000658021ee', 'das das Bein (die Beine)', 'leg — الساق', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000658021ee', 'das das Herz (die Herzen)', 'heart — القلب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000658021ee', 'der der Schmerz (die Schmerzen)', 'pain — الألم', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000658021ee', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000658021ee', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000658021ee', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000658021ee', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000658021ee', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000658021ee', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000658021ee', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000658021ee', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000658021ee', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000658021ee', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000658021ee', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000658021ee', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021ee', 'In der Apotheke — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', '🔊 Sprechen: In der Apotheke', 'Roleplay: You are in a German café. Introduce yourself and talk about Pharmacy. Your partner (AI) will respond naturally.', 'Pharmacy', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', '✏️ Schreiben: In der Apotheke', 'Write an email to a German friend about "Pharmacy". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ee', 'In der Apotheke — Roleplay', 'Pharmacy', 'Student', 'Teacher', 'Practice conversation about Pharmacy', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ee', 'In der Apotheke — Advanced Roleplay', 'Pharmacy', 'Customer', 'Assistant', 'Extended conversation about Pharmacy', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021ee', 'In der Apotheke — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "In der Apotheke".', 'Creative practice for Pharmacy', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', '📚 Hausaufgabe: In der Apotheke', 'Complete these tasks to reinforce "In der Apotheke".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Pharmacy: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Pharmacy. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021ee', '🎯 Great work! In this lesson you learned 78 new words about Pharmacy. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["78 vocabulary items about Pharmacy","present_tense — grammar explanation and practice","Reading comprehension: text about Pharmacy","Listening comprehension: dialogue about Pharmacy","Speaking practice: roleplay/discussion about Pharmacy","Writing task: text about Pharmacy"]', '[{"title":"In der Apotheke Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Kopf (head)','das Auge (eye)','die Hand (hand)','das Bein (leg)','das Herz (heart)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Pharmacy for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'translation', 'Translate to German: "I use the word "head" in a sentence about Pharmacy."', '[]', 'Der Kopf tut mir weh.', 'Use der  "der Kopf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'translation', 'Translate to German: "I use the word "eye" in a sentence about Pharmacy."', '[]', 'Er hat blaue Augen.', 'Use das  "das Auge" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'translation', 'Translate to German: "I use the word "hand" in a sentence about Pharmacy."', '[]', 'Die Hände sind kalt.', 'Use die  "die Hand" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Culture: 🇩🇪 Deutsche Kultur: Pharmacy', 'In Germany, Pharmacy is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Pharmacy, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Pharmacy بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ee', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Der Imperativ (L-A2-04-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021ed', '00000000-0000-4000-a000-000039b547c0', 'Der Imperativ', 'Learn the imperative mood for commands and requests.', 'Imperative', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'der Kopf', 'الرأس', 'head', NULL, 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021ed', 'das Auge', 'العين', 'eye', NULL, 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021ed', 'die Hand', 'اليد', 'hand', NULL, 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021ed', 'das Bein', 'الساق', 'leg', NULL, 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021ed', 'das Herz', 'القلب', 'heart', NULL, 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021ed', 'der Schmerz', 'الألم', 'pain', NULL, 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021ed', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021ed', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021ed', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021ed', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021ed', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021ed', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021ed', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021ed', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021ed', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021ed', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021ed', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021ed', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021ed', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021ed', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021ed', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021ed', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021ed', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021ed', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021ed', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021ed', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021ed', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021ed', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021ed', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021ed', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'Welches deutsche Wort bedeutet "head"?', '["das Bein","die Hand","der Kopf","das Herz"]', 'der Kopf', '"head" = "der Kopf" in German. Article: der Plural: die Köpfe', 1, 1),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'Welches deutsche Wort bedeutet "eye"?', '["der Kopf","das Auge","die Hand","das Bein"]', 'das Auge', '"eye" = "das Auge" in German. Article: das Plural: die Augen', 1, 2),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'Welches deutsche Wort bedeutet "hand"?', '["die Hand","das Herz","das Bein","der Kopf"]', 'die Hand', '"hand" = "die Hand" in German. Article: die Plural: die Hände', 1, 3),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'Welches deutsche Wort bedeutet "leg"?', '["der Kopf","das Auge","das Bein","die Hand"]', 'das Bein', '"leg" = "das Bein" in German. Article: das Plural: die Beine', 1, 4),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'Welches deutsche Wort bedeutet "heart"?', '["das Herz","der Kopf","das Auge","die Hand"]', 'das Herz', '"heart" = "das Herz" in German. Article: das Plural: die Herzen', 1, 5),
  ('00000000-0000-4000-a000-0000658021ed', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Imperative. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000658021ed', 'translation', 'Übersetze ins Deutsche: "I am learning about Imperative."', '["Ich lerne über Imperative.","Ich lerne Imperative.","Lerne ich Imperative."]', 'Ich lerne über Imperative.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000658021ed', 'matching', 'Match: Which word pairs are correct?', '["der Kopf - head, das Auge - eye"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'Was bedeutet "der Kopf" auf Deutsch?', '["head","to run","beautiful","yesterday"]', 'head', 1, 1),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'Welcher Artikel gehört zu "das Auge"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000658021ed', 'true_false', 'Das Wort "die Hand" gehört zum Thema Imperative.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-0000658021ed', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000658021ed', 'fill_blank', 'Complete: Ich ___ (leg) Deutsch.', '["das Bein","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'Wie lautet das deutsche Wort für "heart"?', '["das Herz","der Schmerz","einkaufen","der Preis"]', 'das Herz', 1, 7),
  ('00000000-0000-4000-a000-0000658021ed', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021ed', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000658021ed', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021ed', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000658021ed', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesundheit und Körper', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000658021ed', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'der der Kopf (die Köpfe)', 'head — الرأس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000658021ed', 'das das Auge (die Augen)', 'eye — العين', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000658021ed', 'die die Hand (die Hände)', 'hand — اليد', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000658021ed', 'das das Bein (die Beine)', 'leg — الساق', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000658021ed', 'das das Herz (die Herzen)', 'heart — القلب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000658021ed', 'der der Schmerz (die Schmerzen)', 'pain — الألم', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000658021ed', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000658021ed', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000658021ed', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000658021ed', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000658021ed', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000658021ed', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000658021ed', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000658021ed', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000658021ed', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000658021ed', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000658021ed', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000658021ed', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021ed', 'Der Imperativ — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', '🔊 Sprechen: Der Imperativ', 'Roleplay: You are in a German café. Introduce yourself and talk about Imperative. Your partner (AI) will respond naturally.', 'Imperative', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', '✏️ Schreiben: Der Imperativ', 'Write an email to a German friend about "Imperative". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ed', 'Der Imperativ — Roleplay', 'Imperative', 'Student', 'Teacher', 'Practice conversation about Imperative', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ed', 'Der Imperativ — Advanced Roleplay', 'Imperative', 'Customer', 'Assistant', 'Extended conversation about Imperative', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021ed', 'Der Imperativ — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Der Imperativ".', 'Creative practice for Imperative', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', '📚 Hausaufgabe: Der Imperativ', 'Complete these tasks to reinforce "Der Imperativ".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Imperative: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Imperative. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021ed', '🎯 Great work! In this lesson you learned 78 new words about Imperative. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["78 vocabulary items about Imperative","present_tense — grammar explanation and practice","Reading comprehension: text about Imperative","Listening comprehension: dialogue about Imperative","Speaking practice: roleplay/discussion about Imperative","Writing task: text about Imperative"]', '[{"title":"Der Imperativ Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Kopf (head)','das Auge (eye)','die Hand (hand)','das Bein (leg)','das Herz (heart)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Imperative for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'translation', 'Translate to German: "I use the word "head" in a sentence about Imperative."', '[]', 'Der Kopf tut mir weh.', 'Use der  "der Kopf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'translation', 'Translate to German: "I use the word "eye" in a sentence about Imperative."', '[]', 'Er hat blaue Augen.', 'Use das  "das Auge" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'translation', 'Translate to German: "I use the word "hand" in a sentence about Imperative."', '[]', 'Die Hände sind kalt.', 'Use die  "die Hand" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Culture: 🇩🇪 Deutsche Kultur: Imperative', 'In Germany, Imperative is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Imperative, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Imperative بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ed', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: Test: Gesundheit und Körper (L-A2-04-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000658021ec', '00000000-0000-4000-a000-000039b547c0', 'Test: Gesundheit und Körper', 'Module test on health and body.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'der Kopf', 'الرأس', 'head', NULL, 'der', 'die Köpfe', 'noun', 'Der Kopf tut mir weh.', 'My head hurts.', 'A1', 1),
  ('00000000-0000-4000-a000-0000658021ec', 'das Auge', 'العين', 'eye', NULL, 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 'A1', 2),
  ('00000000-0000-4000-a000-0000658021ec', 'die Hand', 'اليد', 'hand', NULL, 'die', 'die Hände', 'noun', 'Die Hände sind kalt.', 'The hands are cold.', 'A1', 3),
  ('00000000-0000-4000-a000-0000658021ec', 'das Bein', 'الساق', 'leg', NULL, 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 'A1', 4),
  ('00000000-0000-4000-a000-0000658021ec', 'das Herz', 'القلب', 'heart', NULL, 'das', 'die Herzen', 'noun', 'Das Herz schlägt schnell.', 'The heart beats fast.', 'A1', 5),
  ('00000000-0000-4000-a000-0000658021ec', 'der Schmerz', 'الألم', 'pain', NULL, 'der', 'die Schmerzen', 'noun', 'Ich habe Kopfschmerzen.', 'I have a headache.', 'A1', 6),
  ('00000000-0000-4000-a000-0000658021ec', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000658021ec', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000658021ec', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000658021ec', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000658021ec', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000658021ec', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000658021ec', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000658021ec', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000658021ec', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000658021ec', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000658021ec', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000658021ec', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000658021ec', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000658021ec', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000658021ec', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000658021ec', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000658021ec', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000658021ec', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000658021ec', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000658021ec', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000658021ec', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000658021ec', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000658021ec', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000658021ec', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'Welches deutsche Wort bedeutet "head"?', '["der Kopf","das Herz","das Auge","die Hand"]', 'der Kopf', '"head" = "der Kopf" in German. Article: der Plural: die Köpfe', 1, 1),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'Welches deutsche Wort bedeutet "eye"?', '["der Kopf","das Auge","das Herz","die Hand"]', 'das Auge', '"eye" = "das Auge" in German. Article: das Plural: die Augen', 1, 2),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'Welches deutsche Wort bedeutet "hand"?', '["das Bein","das Auge","das Herz","der Kopf"]', 'die Hand', '"hand" = "die Hand" in German. Article: die Plural: die Hände', 1, 3),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'Welches deutsche Wort bedeutet "leg"?', '["das Auge","das Bein","die Hand","das Herz"]', 'das Bein', '"leg" = "das Bein" in German. Article: das Plural: die Beine', 1, 4),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'Welches deutsche Wort bedeutet "heart"?', '["das Bein","das Herz","der Kopf","das Auge"]', 'das Herz', '"heart" = "das Herz" in German. Article: das Plural: die Herzen', 1, 5),
  ('00000000-0000-4000-a000-0000658021ec', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000658021ec', 'translation', 'Übersetze ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000658021ec', 'matching', 'Match: Which word pairs are correct?', '["der Kopf - head, das Auge - eye"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'Was bedeutet "der Kopf" auf Deutsch?', '["head","to run","beautiful","yesterday"]', 'head', 1, 1),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'Welcher Artikel gehört zu "das Auge"?', '["der","die","das","den"]', 'das', 1, 2),
  ('00000000-0000-4000-a000-0000658021ec', 'true_false', 'Das Wort "die Hand" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-0000658021ec', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000658021ec', 'fill_blank', 'Complete: Ich ___ (leg) Deutsch.', '["das Bein","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'Wie lautet das deutsche Wort für "heart"?', '["das Herz","der Schmerz","einkaufen","der Preis"]', 'das Herz', 1, 7),
  ('00000000-0000-4000-a000-0000658021ec', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000658021ec', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000658021ec', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000658021ec', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000658021ec', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Gesundheit und Körper', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000658021ec', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Gesundheit und Körper', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'der der Kopf (die Köpfe)', 'head — الرأس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000658021ec', 'das das Auge (die Augen)', 'eye — العين', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000658021ec', 'die die Hand (die Hände)', 'hand — اليد', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000658021ec', 'das das Bein (die Beine)', 'leg — الساق', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000658021ec', 'das das Herz (die Herzen)', 'heart — القلب', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000658021ec', 'der der Schmerz (die Schmerzen)', 'pain — الألم', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000658021ec', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000658021ec', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000658021ec', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000658021ec', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000658021ec', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000658021ec', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000658021ec', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000658021ec', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000658021ec', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000658021ec', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000658021ec', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000658021ec', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000658021ec', 'Test: Gesundheit und Körper — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Gesundheit und Körper');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', '🔊 Sprechen: Test: Gesundheit und Körper', 'Roleplay: You are in a German café. Introduce yourself and talk about Module Test. Your partner (AI) will respond naturally.', 'Module Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', '✏️ Schreiben: Test: Gesundheit und Körper', 'Write an email to a German friend about "Module Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ec', 'Test: Gesundheit und Körper — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000658021ec', 'Test: Gesundheit und Körper — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Kopf','das Auge','die Hand','das Bein','das Herz','der Schmerz','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000658021ec', 'Test: Gesundheit und Körper — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Gesundheit und Körper".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', '📚 Hausaufgabe: Test: Gesundheit und Körper', 'Complete these tasks to reinforce "Test: Gesundheit und Körper".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000658021ec', '🎯 Great work! In this lesson you learned 78 new words about Module Test. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["78 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Gesundheit und Körper Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Kopf (head)','das Auge (eye)','die Hand (hand)','das Bein (leg)','das Herz (heart)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'translation', 'Translate to German: "I use the word "head" in a sentence about Module Test."', '[]', 'Der Kopf tut mir weh.', 'Use der  "der Kopf" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'translation', 'Translate to German: "I use the word "eye" in a sentence about Module Test."', '[]', 'Er hat blaue Augen.', 'Use das  "das Auge" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'translation', 'Translate to German: "I use the word "hand" in a sentence about Module Test."', '[]', 'Die Hände sind kalt.', 'Use die  "die Hand" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'In Germany, Module Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Module Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Module Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000658021ec', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Module 5: Wetter, Natur und Jahreszeiten
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547c1', 'A2', 'Wetter, Natur und Jahreszeiten', 'Talk about weather, nature, and seasons.', '["Describe weather conditions","Name seasons and months","Use \"es gibt\" and \"es ist\" for weather","Use prepositions of time: im, am, um","Discuss climate and environment"]', 5, 4, true)
  on conflict (id) do nothing;

  -- Lesson 1: Das Wetter (L-A2-05-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657fad92', '00000000-0000-4000-a000-000039b547c1', 'Das Wetter', 'Learn weather vocabulary and expressions.', 'Weather', 'vocabulary', '["Understand and use 80 key vocabulary words about Weather","Apply present_tense correctly in sentences","Read and comprehend a text about Weather","Listen and understand a natural dialogue about Weather","Speak about Weather with confidence","Write a short text about Weather using new vocabulary"]', 40, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'das Wetter', 'الطقس', 'weather', NULL, 'das', NULL, 'noun', 'Das Wetter ist schön.', 'The weather is nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657fad92', 'die Sonne', 'الشمس', 'sun', NULL, 'die', NULL, 'noun', 'Die Sonne scheint.', 'The sun is shining.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657fad92', 'der Regen', 'المطر', 'rain', NULL, 'der', NULL, 'noun', 'Es regnet.', 'It is raining.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657fad92', 'der Schnee', 'الثلج', 'snow', NULL, 'der', NULL, 'noun', 'Es schneit.', 'It is snowing.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657fad92', 'warm', 'دافئ', 'warm', NULL, NULL, NULL, 'adjective', 'Heute ist es warm.', 'Today it is warm.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657fad92', 'kalt', 'بارد', 'cold', NULL, NULL, NULL, 'adjective', 'Im Winter ist es kalt.', 'In winter it is cold.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657fad92', 'der Frühling', 'الربيع', 'spring', NULL, 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657fad92', 'der Winter', 'الشتاء', 'winter', NULL, 'der', NULL, 'noun', 'Im Winter schneit es.', 'In winter it snows.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657fad92', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657fad92', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657fad92', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657fad92', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657fad92', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657fad92', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657fad92', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657fad92', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657fad92', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657fad92', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657fad92', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657fad92', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657fad92', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657fad92', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657fad92', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657fad92', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657fad92', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657fad92', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657fad92', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657fad92', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657fad92', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657fad92', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'Welches deutsche Wort bedeutet "weather"?', '["die Sonne","der Schnee","das Wetter","warm"]', 'das Wetter', '"weather" = "das Wetter" in German. Article: das ', 1, 1),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'Welches deutsche Wort bedeutet "sun"?', '["warm","der Schnee","der Regen","das Wetter"]', 'die Sonne', '"sun" = "die Sonne" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'Welches deutsche Wort bedeutet "rain"?', '["der Regen","das Wetter","warm","die Sonne"]', 'der Regen', '"rain" = "der Regen" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'Welches deutsche Wort bedeutet "snow"?', '["der Regen","die Sonne","das Wetter","der Schnee"]', 'der Schnee', '"snow" = "der Schnee" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'Welches deutsche Wort bedeutet "warm"?', '["die Sonne","der Regen","warm","der Schnee"]', 'warm', '"warm" bedeutet auf Deutsch "warm".  ', 1, 5),
  ('00000000-0000-4000-a000-0000657fad92', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Weather. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657fad92', 'translation', 'Übersetze ins Deutsche: "I am learning about Weather."', '["Ich lerne über Weather.","Ich lerne Weather.","Lerne ich Weather."]', 'Ich lerne über Weather.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657fad92', 'matching', 'Match: Which word pairs are correct?', '["das Wetter - weather, die Sonne - sun"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'Was bedeutet "das Wetter" auf Deutsch?', '["weather","to run","beautiful","yesterday"]', 'weather', 1, 1),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'Welcher Artikel gehört zu "die Sonne"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000657fad92', 'true_false', 'Das Wort "der Regen" gehört zum Thema Weather.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-0000657fad92', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657fad92', 'fill_blank', 'Complete: Ich ___ (snow) Deutsch.', '["der Schnee","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'Wie lautet das deutsche Wort für "warm"?', '["warm","kalt","der Frühling","der Winter"]', 'warm', 1, 7),
  ('00000000-0000-4000-a000-0000657fad92', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657fad92', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657fad92', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657fad92', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657fad92', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657fad92', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'das das Wetter', 'weather — الطقس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657fad92', 'die die Sonne', 'sun — الشمس', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657fad92', 'der der Regen', 'rain — المطر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657fad92', 'der der Schnee', 'snow — الثلج', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657fad92', 'warm', 'warm — دافئ', 'adjective', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657fad92', 'kalt', 'cold — بارد', 'adjective', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657fad92', 'der der Frühling', 'spring — الربيع', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657fad92', 'der der Winter', 'winter — الشتاء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657fad92', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657fad92', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657fad92', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657fad92', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657fad92', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657fad92', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657fad92', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657fad92', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657fad92', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657fad92', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657fad92', 'Das Wetter — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wetter, Natur und Jahreszeiten');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', '🔊 Sprechen: Das Wetter', 'Roleplay: You are in a Leipzig market. Introduce yourself and talk about Weather. Your partner (AI) will respond naturally.', 'Weather', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', '✏️ Schreiben: Das Wetter', 'Write an email to a German friend about "Weather". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad92', 'Das Wetter — Roleplay', 'Weather', 'Student', 'Teacher', 'Practice conversation about Weather', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad92', 'Das Wetter — Advanced Roleplay', 'Weather', 'Customer', 'Assistant', 'Extended conversation about Weather', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657fad92', 'Das Wetter — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Das Wetter".', 'Creative practice for Weather', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', '📚 Hausaufgabe: Das Wetter', 'Complete these tasks to reinforce "Das Wetter".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Weather: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Weather. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657fad92', '🎯 Great work! In this lesson you learned 80 new words about Weather. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["80 vocabulary items about Weather","present_tense — grammar explanation and practice","Reading comprehension: text about Weather","Listening comprehension: dialogue about Weather","Speaking practice: roleplay/discussion about Weather","Writing task: text about Weather"]', '[{"title":"Das Wetter Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Wetter (weather)','die Sonne (sun)','der Regen (rain)','der Schnee (snow)','warm (warm)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Weather for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'translation', 'Translate to German: "I use the word "weather" in a sentence about Weather."', '[]', 'Das Wetter ist schön.', 'Use das  "das Wetter" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'translation', 'Translate to German: "I use the word "sun" in a sentence about Weather."', '[]', 'Die Sonne scheint.', 'Use die  "die Sonne" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'translation', 'Translate to German: "I use the word "rain" in a sentence about Weather."', '[]', 'Es regnet.', 'Use der  "der Regen" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Culture: 🇩🇪 Deutsche Kultur: Weather', 'In Germany, Weather is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Weather, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Weather بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad92', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Die Jahreszeiten (L-A2-05-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657fad91', '00000000-0000-4000-a000-000039b547c1', 'Die Jahreszeiten', 'Learn seasons, months, and seasonal activities.', 'Seasons', 'vocabulary', '["Understand and use 80 key vocabulary words about Seasons","Apply present_tense correctly in sentences","Read and comprehend a text about Seasons","Listen and understand a natural dialogue about Seasons","Speak about Seasons with confidence","Write a short text about Seasons using new vocabulary"]', 40, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'das Wetter', 'الطقس', 'weather', NULL, 'das', NULL, 'noun', 'Das Wetter ist schön.', 'The weather is nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657fad91', 'die Sonne', 'الشمس', 'sun', NULL, 'die', NULL, 'noun', 'Die Sonne scheint.', 'The sun is shining.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657fad91', 'der Regen', 'المطر', 'rain', NULL, 'der', NULL, 'noun', 'Es regnet.', 'It is raining.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657fad91', 'der Schnee', 'الثلج', 'snow', NULL, 'der', NULL, 'noun', 'Es schneit.', 'It is snowing.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657fad91', 'warm', 'دافئ', 'warm', NULL, NULL, NULL, 'adjective', 'Heute ist es warm.', 'Today it is warm.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657fad91', 'kalt', 'بارد', 'cold', NULL, NULL, NULL, 'adjective', 'Im Winter ist es kalt.', 'In winter it is cold.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657fad91', 'der Frühling', 'الربيع', 'spring', NULL, 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657fad91', 'der Winter', 'الشتاء', 'winter', NULL, 'der', NULL, 'noun', 'Im Winter schneit es.', 'In winter it snows.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657fad91', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657fad91', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657fad91', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657fad91', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657fad91', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657fad91', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657fad91', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657fad91', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657fad91', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657fad91', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657fad91', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657fad91', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657fad91', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657fad91', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657fad91', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657fad91', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657fad91', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657fad91', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657fad91', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657fad91', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657fad91', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657fad91', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'Welches deutsche Wort bedeutet "weather"?', '["der Schnee","die Sonne","der Regen","das Wetter"]', 'das Wetter', '"weather" = "das Wetter" in German. Article: das ', 1, 1),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'Welches deutsche Wort bedeutet "sun"?', '["die Sonne","der Schnee","das Wetter","warm"]', 'die Sonne', '"sun" = "die Sonne" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'Welches deutsche Wort bedeutet "rain"?', '["der Schnee","warm","die Sonne","das Wetter"]', 'der Regen', '"rain" = "der Regen" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'Welches deutsche Wort bedeutet "snow"?', '["der Regen","das Wetter","der Schnee","die Sonne"]', 'der Schnee', '"snow" = "der Schnee" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'Welches deutsche Wort bedeutet "warm"?', '["die Sonne","das Wetter","der Schnee","der Regen"]', 'warm', '"warm" bedeutet auf Deutsch "warm".  ', 1, 5),
  ('00000000-0000-4000-a000-0000657fad91', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Seasons. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657fad91', 'translation', 'Übersetze ins Deutsche: "I am learning about Seasons."', '["Ich lerne über Seasons.","Ich lerne Seasons.","Lerne ich Seasons."]', 'Ich lerne über Seasons.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657fad91', 'matching', 'Match: Which word pairs are correct?', '["das Wetter - weather, die Sonne - sun"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'Was bedeutet "das Wetter" auf Deutsch?', '["weather","to run","beautiful","yesterday"]', 'weather', 1, 1),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'Welcher Artikel gehört zu "die Sonne"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000657fad91', 'true_false', 'Das Wort "der Regen" gehört zum Thema Seasons.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-0000657fad91', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657fad91', 'fill_blank', 'Complete: Ich ___ (snow) Deutsch.', '["der Schnee","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'Wie lautet das deutsche Wort für "warm"?', '["warm","kalt","der Frühling","der Winter"]', 'warm', 1, 7),
  ('00000000-0000-4000-a000-0000657fad91', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657fad91', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657fad91', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657fad91', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657fad91', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657fad91', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'das das Wetter', 'weather — الطقس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657fad91', 'die die Sonne', 'sun — الشمس', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657fad91', 'der der Regen', 'rain — المطر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657fad91', 'der der Schnee', 'snow — الثلج', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657fad91', 'warm', 'warm — دافئ', 'adjective', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657fad91', 'kalt', 'cold — بارد', 'adjective', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657fad91', 'der der Frühling', 'spring — الربيع', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657fad91', 'der der Winter', 'winter — الشتاء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657fad91', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657fad91', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657fad91', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657fad91', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657fad91', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657fad91', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657fad91', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657fad91', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657fad91', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657fad91', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657fad91', 'Die Jahreszeiten — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wetter, Natur und Jahreszeiten');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', '🔊 Sprechen: Die Jahreszeiten', 'Roleplay: You are in a Leipzig market. Introduce yourself and talk about Seasons. Your partner (AI) will respond naturally.', 'Seasons', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', '✏️ Schreiben: Die Jahreszeiten', 'Write an email to a German friend about "Seasons". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad91', 'Die Jahreszeiten — Roleplay', 'Seasons', 'Student', 'Teacher', 'Practice conversation about Seasons', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad91', 'Die Jahreszeiten — Advanced Roleplay', 'Seasons', 'Customer', 'Assistant', 'Extended conversation about Seasons', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657fad91', 'Die Jahreszeiten — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Die Jahreszeiten".', 'Creative practice for Seasons', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', '📚 Hausaufgabe: Die Jahreszeiten', 'Complete these tasks to reinforce "Die Jahreszeiten".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Seasons: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Seasons. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657fad91', '🎯 Great work! In this lesson you learned 80 new words about Seasons. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["80 vocabulary items about Seasons","present_tense — grammar explanation and practice","Reading comprehension: text about Seasons","Listening comprehension: dialogue about Seasons","Speaking practice: roleplay/discussion about Seasons","Writing task: text about Seasons"]', '[{"title":"Die Jahreszeiten Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Wetter (weather)','die Sonne (sun)','der Regen (rain)','der Schnee (snow)','warm (warm)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Seasons for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'translation', 'Translate to German: "I use the word "weather" in a sentence about Seasons."', '[]', 'Das Wetter ist schön.', 'Use das  "das Wetter" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'translation', 'Translate to German: "I use the word "sun" in a sentence about Seasons."', '[]', 'Die Sonne scheint.', 'Use die  "die Sonne" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'translation', 'Translate to German: "I use the word "rain" in a sentence about Seasons."', '[]', 'Es regnet.', 'Use der  "der Regen" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Culture: 🇩🇪 Deutsche Kultur: Seasons', 'In Germany, Seasons is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Seasons, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Seasons بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad91', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Tiere und Natur (L-A2-05-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657fad90', '00000000-0000-4000-a000-000039b547c1', 'Tiere und Natur', 'Learn animal and nature vocabulary.', 'Animals & Nature', 'vocabulary', '["Understand and use 72 key vocabulary words about Animals & Nature","Apply present_tense correctly in sentences","Read and comprehend a text about Animals & Nature","Listen and understand a natural dialogue about Animals & Nature","Speak about Animals & Nature with confidence","Write a short text about Animals & Nature using new vocabulary"]', 45, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'der Baum', 'الشجرة', 'tree', NULL, 'der', 'die Bäume', 'noun', 'Der Baum ist hoch.', 'The tree is tall.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657fad90', 'die Blume', 'الزهرة', 'flower', NULL, 'die', 'die Blumen', 'noun', 'Die Blume ist schön.', 'The flower is beautiful.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657fad90', 'der Fluss', 'النهر', 'river', NULL, 'der', 'die Flüsse', 'noun', 'Der Fluss fließt durch die Stadt.', 'The river flows through the city.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657fad90', 'der Berg', 'الجبل', 'mountain', NULL, 'der', 'die Berge', 'noun', 'Die Berge sind schön.', 'The mountains are beautiful.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657fad90', 'der Wald', 'الغابة', 'forest', NULL, 'der', 'die Wälder', 'noun', 'Der Wald ist ruhig.', 'The forest is quiet.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657fad90', 'das Meer', 'البحر', 'sea', NULL, 'das', 'die Meere', 'noun', 'Das Meer ist blau.', 'The sea is blue.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657fad90', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657fad90', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657fad90', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657fad90', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657fad90', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657fad90', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657fad90', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657fad90', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 14),
  ('00000000-0000-4000-a000-0000657fad90', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657fad90', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 16),
  ('00000000-0000-4000-a000-0000657fad90', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657fad90', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657fad90', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657fad90', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657fad90', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657fad90', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657fad90', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657fad90', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657fad90', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657fad90', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657fad90', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657fad90', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 28),
  ('00000000-0000-4000-a000-0000657fad90', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657fad90', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'Welches deutsche Wort bedeutet "tree"?', '["die Blume","der Baum","der Berg","der Wald"]', 'der Baum', '"tree" = "der Baum" in German. Article: der Plural: die Bäume', 1, 1),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'Welches deutsche Wort bedeutet "flower"?', '["der Wald","der Berg","der Fluss","der Baum"]', 'die Blume', '"flower" = "die Blume" in German. Article: die Plural: die Blumen', 1, 2),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'Welches deutsche Wort bedeutet "river"?', '["die Blume","der Baum","der Wald","der Berg"]', 'der Fluss', '"river" = "der Fluss" in German. Article: der Plural: die Flüsse', 1, 3),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'Welches deutsche Wort bedeutet "mountain"?', '["die Blume","der Berg","der Wald","der Baum"]', 'der Berg', '"mountain" = "der Berg" in German. Article: der Plural: die Berge', 1, 4),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'Welches deutsche Wort bedeutet "forest"?', '["der Fluss","der Berg","die Blume","der Baum"]', 'der Wald', '"forest" = "der Wald" in German. Article: der Plural: die Wälder', 1, 5),
  ('00000000-0000-4000-a000-0000657fad90', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Animals & Nature. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657fad90', 'translation', 'Übersetze ins Deutsche: "I am learning about Animals & Nature."', '["Ich lerne über Animals & Nature.","Ich lerne Animals & Nature.","Lerne ich Animals & Nature."]', 'Ich lerne über Animals & Nature.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657fad90', 'matching', 'Match: Which word pairs are correct?', '["der Baum - tree, die Blume - flower"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'Was bedeutet "der Baum" auf Deutsch?', '["tree","to run","beautiful","yesterday"]', 'tree', 1, 1),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'Welcher Artikel gehört zu "die Blume"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000657fad90', 'true_false', 'Das Wort "der Fluss" gehört zum Thema Animals & Nature.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-0000657fad90', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657fad90', 'fill_blank', 'Complete: Ich ___ (mountain) Deutsch.', '["der Berg","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'Wie lautet das deutsche Wort für "forest"?', '["der Wald","das Meer","einkaufen","der Preis"]', 'der Wald', 1, 7),
  ('00000000-0000-4000-a000-0000657fad90', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657fad90', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657fad90', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657fad90', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657fad90', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657fad90', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'der der Baum (die Bäume)', 'tree — الشجرة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657fad90', 'die die Blume (die Blumen)', 'flower — الزهرة', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657fad90', 'der der Fluss (die Flüsse)', 'river — النهر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657fad90', 'der der Berg (die Berge)', 'mountain — الجبل', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657fad90', 'der der Wald (die Wälder)', 'forest — الغابة', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657fad90', 'das das Meer (die Meere)', 'sea — البحر', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657fad90', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657fad90', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657fad90', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657fad90', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657fad90', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657fad90', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657fad90', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657fad90', 'der der Rabatt (die Rabatte)', 'discount — الخصم', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657fad90', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657fad90', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657fad90', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657fad90', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657fad90', 'Tiere und Natur — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wetter, Natur und Jahreszeiten');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', '🔊 Sprechen: Tiere und Natur', 'Roleplay: You are in a German café. Introduce yourself and talk about Animals & Nature. Your partner (AI) will respond naturally.', 'Animals & Nature', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Baum','die Blume','der Fluss','der Berg','der Wald','das Meer','einkaufen','der Preis']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', '✏️ Schreiben: Tiere und Natur', 'Write an email to a German friend about "Animals & Nature". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Baum','die Blume','der Fluss','der Berg','der Wald','das Meer','einkaufen','der Preis']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad90', 'Tiere und Natur — Roleplay', 'Animals & Nature', 'Student', 'Teacher', 'Practice conversation about Animals & Nature', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Baum','die Blume','der Fluss','der Berg','der Wald','das Meer','einkaufen','der Preis']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad90', 'Tiere und Natur — Advanced Roleplay', 'Animals & Nature', 'Customer', 'Assistant', 'Extended conversation about Animals & Nature', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Baum','die Blume','der Fluss','der Berg','der Wald','das Meer','einkaufen','der Preis']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657fad90', 'Tiere und Natur — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Tiere und Natur".', 'Creative practice for Animals & Nature', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', '📚 Hausaufgabe: Tiere und Natur', 'Complete these tasks to reinforce "Tiere und Natur".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Animals & Nature: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Animals & Nature. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657fad90', '🎯 Great work! In this lesson you learned 72 new words about Animals & Nature. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Animals & Nature","present_tense — grammar explanation and practice","Reading comprehension: text about Animals & Nature","Listening comprehension: dialogue about Animals & Nature","Speaking practice: roleplay/discussion about Animals & Nature","Writing task: text about Animals & Nature"]', '[{"title":"Tiere und Natur Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Baum (tree)','die Blume (flower)','der Fluss (river)','der Berg (mountain)','der Wald (forest)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Animals & Nature for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'translation', 'Translate to German: "I use the word "tree" in a sentence about Animals & Nature."', '[]', 'Der Baum ist hoch.', 'Use der  "der Baum" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'translation', 'Translate to German: "I use the word "flower" in a sentence about Animals & Nature."', '[]', 'Die Blume ist schön.', 'Use die  "die Blume" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'translation', 'Translate to German: "I use the word "river" in a sentence about Animals & Nature."', '[]', 'Der Fluss fließt durch die Stadt.', 'Use der  "der Fluss" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Culture: 🇩🇪 Deutsche Kultur: Animals & Nature', 'In Germany, Animals & Nature is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Animals & Nature, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Animals & Nature بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad90', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Präpositionen: im, am, um (L-A2-05-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657fad8f', '00000000-0000-4000-a000-000039b547c1', 'Präpositionen: im, am, um', 'Learn time prepositions for seasons, days, and times.', 'Time Prepositions', 'grammar', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'das Wetter', 'الطقس', 'weather', NULL, 'das', NULL, 'noun', 'Das Wetter ist schön.', 'The weather is nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657fad8f', 'die Sonne', 'الشمس', 'sun', NULL, 'die', NULL, 'noun', 'Die Sonne scheint.', 'The sun is shining.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Regen', 'المطر', 'rain', NULL, 'der', NULL, 'noun', 'Es regnet.', 'It is raining.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Schnee', 'الثلج', 'snow', NULL, 'der', NULL, 'noun', 'Es schneit.', 'It is snowing.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657fad8f', 'warm', 'دافئ', 'warm', NULL, NULL, NULL, 'adjective', 'Heute ist es warm.', 'Today it is warm.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657fad8f', 'kalt', 'بارد', 'cold', NULL, NULL, NULL, 'adjective', 'Im Winter ist es kalt.', 'In winter it is cold.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Frühling', 'الربيع', 'spring', NULL, 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Winter', 'الشتاء', 'winter', NULL, 'der', NULL, 'noun', 'Im Winter schneit es.', 'In winter it snows.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657fad8f', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657fad8f', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657fad8f', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657fad8f', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657fad8f', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657fad8f', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657fad8f', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657fad8f', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657fad8f', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657fad8f', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657fad8f', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657fad8f', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657fad8f', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'Welches deutsche Wort bedeutet "weather"?', '["die Sonne","der Schnee","warm","das Wetter"]', 'das Wetter', '"weather" = "das Wetter" in German. Article: das ', 1, 1),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'Welches deutsche Wort bedeutet "sun"?', '["das Wetter","der Schnee","warm","der Regen"]', 'die Sonne', '"sun" = "die Sonne" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'Welches deutsche Wort bedeutet "rain"?', '["der Schnee","der Regen","warm","das Wetter"]', 'der Regen', '"rain" = "der Regen" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'Welches deutsche Wort bedeutet "snow"?', '["warm","der Schnee","das Wetter","die Sonne"]', 'der Schnee', '"snow" = "der Schnee" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'Welches deutsche Wort bedeutet "warm"?', '["das Wetter","die Sonne","warm","der Regen"]', 'warm', '"warm" bedeutet auf Deutsch "warm".  ', 1, 5),
  ('00000000-0000-4000-a000-0000657fad8f', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Time Prepositions. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657fad8f', 'translation', 'Übersetze ins Deutsche: "I am learning about Time Prepositions."', '["Ich lerne über Time Prepositions.","Ich lerne Time Prepositions.","Lerne ich Time Prepositions."]', 'Ich lerne über Time Prepositions.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657fad8f', 'matching', 'Match: Which word pairs are correct?', '["das Wetter - weather, die Sonne - sun"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'Was bedeutet "das Wetter" auf Deutsch?', '["weather","to run","beautiful","yesterday"]', 'weather', 1, 1),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'Welcher Artikel gehört zu "die Sonne"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000657fad8f', 'true_false', 'Das Wort "der Regen" gehört zum Thema Time Prepositions.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-0000657fad8f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657fad8f', 'fill_blank', 'Complete: Ich ___ (snow) Deutsch.', '["der Schnee","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'Wie lautet das deutsche Wort für "warm"?', '["warm","kalt","der Frühling","der Winter"]', 'warm', 1, 7),
  ('00000000-0000-4000-a000-0000657fad8f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657fad8f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657fad8f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657fad8f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657fad8f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657fad8f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'das das Wetter', 'weather — الطقس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657fad8f', 'die die Sonne', 'sun — الشمس', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657fad8f', 'der der Regen', 'rain — المطر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657fad8f', 'der der Schnee', 'snow — الثلج', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657fad8f', 'warm', 'warm — دافئ', 'adjective', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657fad8f', 'kalt', 'cold — بارد', 'adjective', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657fad8f', 'der der Frühling', 'spring — الربيع', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657fad8f', 'der der Winter', 'winter — الشتاء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657fad8f', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657fad8f', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657fad8f', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657fad8f', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657fad8f', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657fad8f', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657fad8f', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657fad8f', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657fad8f', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657fad8f', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Präpositionen: im, am, um — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wetter, Natur und Jahreszeiten');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', '🔊 Sprechen: Präpositionen: im, am, um', 'Roleplay: You are in a Leipzig market. Introduce yourself and talk about Time Prepositions. Your partner (AI) will respond naturally.', 'Time Prepositions', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', '✏️ Schreiben: Präpositionen: im, am, um', 'Write an email to a German friend about "Time Prepositions". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Präpositionen: im, am, um — Roleplay', 'Time Prepositions', 'Student', 'Teacher', 'Practice conversation about Time Prepositions', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Präpositionen: im, am, um — Advanced Roleplay', 'Time Prepositions', 'Customer', 'Assistant', 'Extended conversation about Time Prepositions', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Präpositionen: im, am, um — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Präpositionen: im, am, um".', 'Creative practice for Time Prepositions', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', '📚 Hausaufgabe: Präpositionen: im, am, um', 'Complete these tasks to reinforce "Präpositionen: im, am, um".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Time Prepositions: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Time Prepositions. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657fad8f', '🎯 Great work! In this lesson you learned 80 new words about Time Prepositions. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["80 vocabulary items about Time Prepositions","present_tense — grammar explanation and practice","Reading comprehension: text about Time Prepositions","Listening comprehension: dialogue about Time Prepositions","Speaking practice: roleplay/discussion about Time Prepositions","Writing task: text about Time Prepositions"]', '[{"title":"Präpositionen: im, am, um Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Wetter (weather)','die Sonne (sun)','der Regen (rain)','der Schnee (snow)','warm (warm)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Time Prepositions for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'translation', 'Translate to German: "I use the word "weather" in a sentence about Time Prepositions."', '[]', 'Das Wetter ist schön.', 'Use das  "das Wetter" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'translation', 'Translate to German: "I use the word "sun" in a sentence about Time Prepositions."', '[]', 'Die Sonne scheint.', 'Use die  "die Sonne" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'translation', 'Translate to German: "I use the word "rain" in a sentence about Time Prepositions."', '[]', 'Es regnet.', 'Use der  "der Regen" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Culture: 🇩🇪 Deutsche Kultur: Time Prepositions', 'In Germany, Time Prepositions is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Time Prepositions, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Time Prepositions بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Test: Wetter und Natur (L-A2-05-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657fad8e', '00000000-0000-4000-a000-000039b547c1', 'Test: Wetter und Natur', 'Module test on weather and nature.', 'Module Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 35, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'das Wetter', 'الطقس', 'weather', NULL, 'das', NULL, 'noun', 'Das Wetter ist schön.', 'The weather is nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657fad8e', 'die Sonne', 'الشمس', 'sun', NULL, 'die', NULL, 'noun', 'Die Sonne scheint.', 'The sun is shining.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Regen', 'المطر', 'rain', NULL, 'der', NULL, 'noun', 'Es regnet.', 'It is raining.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Schnee', 'الثلج', 'snow', NULL, 'der', NULL, 'noun', 'Es schneit.', 'It is snowing.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657fad8e', 'warm', 'دافئ', 'warm', NULL, NULL, NULL, 'adjective', 'Heute ist es warm.', 'Today it is warm.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657fad8e', 'kalt', 'بارد', 'cold', NULL, NULL, NULL, 'adjective', 'Im Winter ist es kalt.', 'In winter it is cold.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Frühling', 'الربيع', 'spring', NULL, 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Winter', 'الشتاء', 'winter', NULL, 'der', NULL, 'noun', 'Im Winter schneit es.', 'In winter it snows.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657fad8e', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657fad8e', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657fad8e', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657fad8e', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657fad8e', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657fad8e', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657fad8e', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657fad8e', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657fad8e', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657fad8e', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657fad8e', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657fad8e', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657fad8e', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'Welches deutsche Wort bedeutet "weather"?', '["das Wetter","warm","der Schnee","die Sonne"]', 'das Wetter', '"weather" = "das Wetter" in German. Article: das ', 1, 1),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'Welches deutsche Wort bedeutet "sun"?', '["die Sonne","das Wetter","der Regen","warm"]', 'die Sonne', '"sun" = "die Sonne" in German. Article: die ', 1, 2),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'Welches deutsche Wort bedeutet "rain"?', '["der Regen","die Sonne","warm","der Schnee"]', 'der Regen', '"rain" = "der Regen" in German. Article: der ', 1, 3),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'Welches deutsche Wort bedeutet "snow"?', '["der Schnee","das Wetter","der Regen","warm"]', 'der Schnee', '"snow" = "der Schnee" in German. Article: der ', 1, 4),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'Welches deutsche Wort bedeutet "warm"?', '["der Regen","der Schnee","die Sonne","das Wetter"]', 'warm', '"warm" bedeutet auf Deutsch "warm".  ', 1, 5),
  ('00000000-0000-4000-a000-0000657fad8e', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Module Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657fad8e', 'translation', 'Übersetze ins Deutsche: "I am learning about Module Test."', '["Ich lerne über Module Test.","Ich lerne Module Test.","Lerne ich Module Test."]', 'Ich lerne über Module Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657fad8e', 'matching', 'Match: Which word pairs are correct?', '["das Wetter - weather, die Sonne - sun"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'Was bedeutet "das Wetter" auf Deutsch?', '["weather","to run","beautiful","yesterday"]', 'weather', 1, 1),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'Welcher Artikel gehört zu "die Sonne"?', '["der","die","das","den"]', 'die', 1, 2),
  ('00000000-0000-4000-a000-0000657fad8e', 'true_false', 'Das Wort "der Regen" gehört zum Thema Module Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-0000657fad8e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657fad8e', 'fill_blank', 'Complete: Ich ___ (snow) Deutsch.', '["der Schnee","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'Wie lautet das deutsche Wort für "warm"?', '["warm","kalt","der Frühling","der Winter"]', 'warm', 1, 7),
  ('00000000-0000-4000-a000-0000657fad8e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657fad8e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657fad8e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657fad8e', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657fad8e', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657fad8e', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Wetter, Natur und Jahreszeiten', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'das das Wetter', 'weather — الطقس', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657fad8e', 'die die Sonne', 'sun — الشمس', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657fad8e', 'der der Regen', 'rain — المطر', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657fad8e', 'der der Schnee', 'snow — الثلج', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657fad8e', 'warm', 'warm — دافئ', 'adjective', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657fad8e', 'kalt', 'cold — بارد', 'adjective', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657fad8e', 'der der Frühling', 'spring — الربيع', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657fad8e', 'der der Winter', 'winter — الشتاء', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657fad8e', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657fad8e', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657fad8e', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657fad8e', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657fad8e', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657fad8e', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657fad8e', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657fad8e', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657fad8e', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657fad8e', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Test: Wetter und Natur — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Wetter, Natur und Jahreszeiten');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', '🔊 Sprechen: Test: Wetter und Natur', 'Roleplay: You are in a Leipzig market. Introduce yourself and talk about Module Test. Your partner (AI) will respond naturally.', 'Module Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', '✏️ Schreiben: Test: Wetter und Natur', 'Write an email to a German friend about "Module Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Test: Wetter und Natur — Roleplay', 'Module Test', 'Student', 'Teacher', 'Practice conversation about Module Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Test: Wetter und Natur — Advanced Roleplay', 'Module Test', 'Customer', 'Assistant', 'Extended conversation about Module Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['das Wetter','die Sonne','der Regen','der Schnee','warm','kalt','der Frühling','der Winter']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Test: Wetter und Natur — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Test: Wetter und Natur".', 'Creative practice for Module Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', '📚 Hausaufgabe: Test: Wetter und Natur', 'Complete these tasks to reinforce "Test: Wetter und Natur".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Module Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Module Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657fad8e', '🎯 Great work! In this lesson you learned 80 new words about Module Test. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["80 vocabulary items about Module Test","present_tense — grammar explanation and practice","Reading comprehension: text about Module Test","Listening comprehension: dialogue about Module Test","Speaking practice: roleplay/discussion about Module Test","Writing task: text about Module Test"]', '[{"title":"Test: Wetter und Natur Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['das Wetter (weather)','die Sonne (sun)','der Regen (rain)','der Schnee (snow)','warm (warm)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Module Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'translation', 'Translate to German: "I use the word "weather" in a sentence about Module Test."', '[]', 'Das Wetter ist schön.', 'Use das  "das Wetter" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'translation', 'Translate to German: "I use the word "sun" in a sentence about Module Test."', '[]', 'Die Sonne scheint.', 'Use die  "die Sonne" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'translation', 'Translate to German: "I use the word "rain" in a sentence about Module Test."', '[]', 'Es regnet.', 'Use der  "der Regen" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Culture: 🇩🇪 Deutsche Kultur: Module Test', 'In Germany, Module Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Module Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Module Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657fad8e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Module 6: Feste, Traditionen und Reisen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('00000000-0000-4000-a000-000039b547c2', 'A2', 'Feste, Traditionen und Reisen', 'Learn about German holidays, traditions, and travel experiences.', '["Name German holidays and traditions","Talk about travel experiences","Use Perfekt tense for past events","Write a simple postcard or email","Discuss cultural differences"]', 6, 5, true)
  on conflict (id) do nothing;

  -- Lesson 1: Feste und Feiertage (L-A2-06-01)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f3933', '00000000-0000-4000-a000-000039b547c2', 'Feste und Feiertage', 'Learn about German holidays and celebrations.', 'Holidays & Celebrations', 'vocabulary', '["Understand and use 72 key vocabulary words about Holidays & Celebrations","Apply present_tense correctly in sentences","Read and comprehend a text about Holidays & Celebrations","Listen and understand a natural dialogue about Holidays & Celebrations","Speak about Holidays & Celebrations with confidence","Write a short text about Holidays & Celebrations using new vocabulary"]', 45, 1, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'der Feiertag', 'العطلة الرسمية', 'public holiday', NULL, 'der', 'die Feiertage', 'noun', 'Der 3. Oktober ist ein Feiertag.', 'October 3rd is a public holiday.', 'A2', 1),
  ('00000000-0000-4000-a000-0000657f3933', 'Weihnachten', 'عيد الميلاد', 'Christmas', NULL, NULL, NULL, 'noun', 'Weihnachten ist am 24. Dezember.', 'Christmas is on December 24th.', 'A2', 2),
  ('00000000-0000-4000-a000-0000657f3933', 'das Geschenk', 'الهدية', 'gift', NULL, 'das', 'die Geschenke', 'noun', 'Ich kaufe ein Geschenk.', 'I buy a gift.', 'A2', 3),
  ('00000000-0000-4000-a000-0000657f3933', 'feiern', 'يحتفل', 'to celebrate', NULL, NULL, NULL, 'verb', 'Wir feiern meinen Geburtstag.', 'We celebrate my birthday.', 'A2', 4),
  ('00000000-0000-4000-a000-0000657f3933', 'der Geburtstag', 'عيد الميلاد', 'birthday', NULL, 'der', 'die Geburtstage', 'noun', 'Alles Gute zum Geburtstag!', 'Happy birthday!', 'A2', 5),
  ('00000000-0000-4000-a000-0000657f3933', 'Ostern', 'عيد الفصح', 'Easter', NULL, NULL, NULL, 'noun', 'Ostern ist im Frühling.', 'Easter is in spring.', 'A2', 6),
  ('00000000-0000-4000-a000-0000657f3933', 'das Fest', 'المهرجان', 'festival', NULL, 'das', 'die Feste', 'noun', 'Das Oktoberfest ist in München.', 'The Oktoberfest is in Munich.', 'A2', 7),
  ('00000000-0000-4000-a000-0000657f3933', 'der Brauch', 'العادة التقليدية', 'tradition', NULL, 'der', 'die Bräuche', 'noun', 'Das ist ein deutscher Brauch.', 'That is a German tradition.', 'B1', 8),
  ('00000000-0000-4000-a000-0000657f3933', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f3933', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f3933', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f3933', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f3933', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f3933', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f3933', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f3933', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f3933', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f3933', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f3933', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f3933', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f3933', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f3933', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f3933', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f3933', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f3933', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f3933', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657f3933', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f3933', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f3933', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657f3933', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'Welches deutsche Wort bedeutet "public holiday"?', '["feiern","der Feiertag","Weihnachten","das Geschenk"]', 'der Feiertag', '"public holiday" = "der Feiertag" in German. Article: der Plural: die Feiertage', 1, 1),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'Welches deutsche Wort bedeutet "Christmas"?', '["Weihnachten","der Feiertag","das Geschenk","feiern"]', 'Weihnachten', '"Christmas" bedeutet auf Deutsch "Christmas".  ', 1, 2),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'Welches deutsche Wort bedeutet "gift"?', '["das Geschenk","der Feiertag","der Geburtstag","Weihnachten"]', 'das Geschenk', '"gift" = "das Geschenk" in German. Article: das Plural: die Geschenke', 1, 3),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'Welches deutsche Wort bedeutet "to celebrate"?', '["der Feiertag","das Geschenk","feiern","der Geburtstag"]', 'feiern', '"to celebrate" bedeutet auf Deutsch "to celebrate".  ', 1, 4),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'Welches deutsche Wort bedeutet "birthday"?', '["der Feiertag","Weihnachten","feiern","der Geburtstag"]', 'der Geburtstag', '"birthday" = "der Geburtstag" in German. Article: der Plural: die Geburtstage', 1, 5),
  ('00000000-0000-4000-a000-0000657f3933', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Holidays & Celebrations. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657f3933', 'translation', 'Übersetze ins Deutsche: "I am learning about Holidays & Celebrations."', '["Ich lerne über Holidays & Celebrations.","Ich lerne Holidays & Celebrations.","Lerne ich Holidays & Celebrations."]', 'Ich lerne über Holidays & Celebrations.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657f3933', 'matching', 'Match: Which word pairs are correct?', '["der Feiertag - public holiday, Weihnachten - Christmas"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'Was bedeutet "der Feiertag" auf Deutsch?', '["public holiday","to run","beautiful","yesterday"]', 'public holiday', 1, 1),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'Welcher Artikel gehört zu "Weihnachten"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000657f3933', 'true_false', 'Das Wort "das Geschenk" gehört zum Thema Holidays & Celebrations.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-0000657f3933', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657f3933', 'fill_blank', 'Complete: Ich ___ (to celebrate) Deutsch.', '["feiern","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'Wie lautet das deutsche Wort für "birthday"?', '["der Geburtstag","Ostern","das Fest","der Brauch"]', 'der Geburtstag', 1, 7),
  ('00000000-0000-4000-a000-0000657f3933', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f3933', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657f3933', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f3933', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657f3933', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657f3933', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'der der Feiertag (die Feiertage)', 'public holiday — العطلة الرسمية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657f3933', 'Weihnachten', 'Christmas — عيد الميلاد', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657f3933', 'das das Geschenk (die Geschenke)', 'gift — الهدية', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657f3933', 'feiern', 'to celebrate — يحتفل', 'verb', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657f3933', 'der der Geburtstag (die Geburtstage)', 'birthday — عيد الميلاد', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657f3933', 'Ostern', 'Easter — عيد الفصح', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657f3933', 'das das Fest (die Feste)', 'festival — المهرجان', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657f3933', 'der der Brauch (die Bräuche)', 'tradition — العادة التقليدية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657f3933', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657f3933', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657f3933', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657f3933', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657f3933', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657f3933', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657f3933', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657f3933', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657f3933', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657f3933', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f3933', 'Feste und Feiertage — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', '🔊 Sprechen: Feste und Feiertage', 'Roleplay: You are in a German café. Introduce yourself and talk about Holidays & Celebrations. Your partner (AI) will respond naturally.', 'Holidays & Celebrations', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', '✏️ Schreiben: Feste und Feiertage', 'Write an email to a German friend about "Holidays & Celebrations". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3933', 'Feste und Feiertage — Roleplay', 'Holidays & Celebrations', 'Student', 'Teacher', 'Practice conversation about Holidays & Celebrations', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3933', 'Feste und Feiertage — Advanced Roleplay', 'Holidays & Celebrations', 'Customer', 'Assistant', 'Extended conversation about Holidays & Celebrations', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f3933', 'Feste und Feiertage — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Feste und Feiertage".', 'Creative practice for Holidays & Celebrations', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', '📚 Hausaufgabe: Feste und Feiertage', 'Complete these tasks to reinforce "Feste und Feiertage".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Holidays & Celebrations: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Holidays & Celebrations. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f3933', '🎯 Great work! In this lesson you learned 72 new words about Holidays & Celebrations. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Holidays & Celebrations","present_tense — grammar explanation and practice","Reading comprehension: text about Holidays & Celebrations","Listening comprehension: dialogue about Holidays & Celebrations","Speaking practice: roleplay/discussion about Holidays & Celebrations","Writing task: text about Holidays & Celebrations"]', '[{"title":"Feste und Feiertage Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Feiertag (public holiday)','Weihnachten (Christmas)','das Geschenk (gift)','feiern (to celebrate)','der Geburtstag (birthday)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Holidays & Celebrations for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'translation', 'Translate to German: "I use the word "public holiday" in a sentence about Holidays & Celebrations."', '[]', 'Der 3. Oktober ist ein Feiertag.', 'Use der  "der Feiertag" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'translation', 'Translate to German: "I use the word "Christmas" in a sentence about Holidays & Celebrations."', '[]', 'Weihnachten ist am 24. Dezember.', 'Use  "Weihnachten" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'translation', 'Translate to German: "I use the word "gift" in a sentence about Holidays & Celebrations."', '[]', 'Ich kaufe ein Geschenk.', 'Use das  "das Geschenk" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Culture: 🇩🇪 Deutsche Kultur: Holidays & Celebrations', 'In Germany, Holidays & Celebrations is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Holidays & Celebrations, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Holidays & Celebrations بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3933', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 2: Geburtstag feiern (L-A2-06-02)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f3932', '00000000-0000-4000-a000-000039b547c2', 'Geburtstag feiern', 'Learn birthday vocabulary and party planning.', 'Birthday', 'speaking', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 2, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'der Feiertag', 'العطلة الرسمية', 'public holiday', NULL, 'der', 'die Feiertage', 'noun', 'Der 3. Oktober ist ein Feiertag.', 'October 3rd is a public holiday.', 'A2', 1),
  ('00000000-0000-4000-a000-0000657f3932', 'Weihnachten', 'عيد الميلاد', 'Christmas', NULL, NULL, NULL, 'noun', 'Weihnachten ist am 24. Dezember.', 'Christmas is on December 24th.', 'A2', 2),
  ('00000000-0000-4000-a000-0000657f3932', 'das Geschenk', 'الهدية', 'gift', NULL, 'das', 'die Geschenke', 'noun', 'Ich kaufe ein Geschenk.', 'I buy a gift.', 'A2', 3),
  ('00000000-0000-4000-a000-0000657f3932', 'feiern', 'يحتفل', 'to celebrate', NULL, NULL, NULL, 'verb', 'Wir feiern meinen Geburtstag.', 'We celebrate my birthday.', 'A2', 4),
  ('00000000-0000-4000-a000-0000657f3932', 'der Geburtstag', 'عيد الميلاد', 'birthday', NULL, 'der', 'die Geburtstage', 'noun', 'Alles Gute zum Geburtstag!', 'Happy birthday!', 'A2', 5),
  ('00000000-0000-4000-a000-0000657f3932', 'Ostern', 'عيد الفصح', 'Easter', NULL, NULL, NULL, 'noun', 'Ostern ist im Frühling.', 'Easter is in spring.', 'A2', 6),
  ('00000000-0000-4000-a000-0000657f3932', 'das Fest', 'المهرجان', 'festival', NULL, 'das', 'die Feste', 'noun', 'Das Oktoberfest ist in München.', 'The Oktoberfest is in Munich.', 'A2', 7),
  ('00000000-0000-4000-a000-0000657f3932', 'der Brauch', 'العادة التقليدية', 'tradition', NULL, 'der', 'die Bräuche', 'noun', 'Das ist ein deutscher Brauch.', 'That is a German tradition.', 'B1', 8),
  ('00000000-0000-4000-a000-0000657f3932', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f3932', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f3932', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f3932', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f3932', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f3932', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f3932', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f3932', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f3932', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f3932', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f3932', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f3932', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f3932', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f3932', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f3932', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f3932', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f3932', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f3932', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657f3932', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f3932', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f3932', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657f3932', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'Welches deutsche Wort bedeutet "public holiday"?', '["feiern","der Feiertag","das Geschenk","Weihnachten"]', 'der Feiertag', '"public holiday" = "der Feiertag" in German. Article: der Plural: die Feiertage', 1, 1),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'Welches deutsche Wort bedeutet "Christmas"?', '["feiern","das Geschenk","der Geburtstag","der Feiertag"]', 'Weihnachten', '"Christmas" bedeutet auf Deutsch "Christmas".  ', 1, 2),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'Welches deutsche Wort bedeutet "gift"?', '["das Geschenk","der Feiertag","feiern","der Geburtstag"]', 'das Geschenk', '"gift" = "das Geschenk" in German. Article: das Plural: die Geschenke', 1, 3),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'Welches deutsche Wort bedeutet "to celebrate"?', '["das Geschenk","Weihnachten","der Feiertag","feiern"]', 'feiern', '"to celebrate" bedeutet auf Deutsch "to celebrate".  ', 1, 4),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'Welches deutsche Wort bedeutet "birthday"?', '["das Geschenk","der Geburtstag","Weihnachten","der Feiertag"]', 'der Geburtstag', '"birthday" = "der Geburtstag" in German. Article: der Plural: die Geburtstage', 1, 5),
  ('00000000-0000-4000-a000-0000657f3932', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Birthday. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657f3932', 'translation', 'Übersetze ins Deutsche: "I am learning about Birthday."', '["Ich lerne über Birthday.","Ich lerne Birthday.","Lerne ich Birthday."]', 'Ich lerne über Birthday.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657f3932', 'matching', 'Match: Which word pairs are correct?', '["der Feiertag - public holiday, Weihnachten - Christmas"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'Was bedeutet "der Feiertag" auf Deutsch?', '["public holiday","to run","beautiful","yesterday"]', 'public holiday', 1, 1),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'Welcher Artikel gehört zu "Weihnachten"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000657f3932', 'true_false', 'Das Wort "das Geschenk" gehört zum Thema Birthday.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-0000657f3932', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657f3932', 'fill_blank', 'Complete: Ich ___ (to celebrate) Deutsch.', '["feiern","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'Wie lautet das deutsche Wort für "birthday"?', '["der Geburtstag","Ostern","das Fest","der Brauch"]', 'der Geburtstag', 1, 7),
  ('00000000-0000-4000-a000-0000657f3932', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f3932', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657f3932', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f3932', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657f3932', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657f3932', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'der der Feiertag (die Feiertage)', 'public holiday — العطلة الرسمية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657f3932', 'Weihnachten', 'Christmas — عيد الميلاد', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657f3932', 'das das Geschenk (die Geschenke)', 'gift — الهدية', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657f3932', 'feiern', 'to celebrate — يحتفل', 'verb', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657f3932', 'der der Geburtstag (die Geburtstage)', 'birthday — عيد الميلاد', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657f3932', 'Ostern', 'Easter — عيد الفصح', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657f3932', 'das das Fest (die Feste)', 'festival — المهرجان', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657f3932', 'der der Brauch (die Bräuche)', 'tradition — العادة التقليدية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657f3932', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657f3932', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657f3932', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657f3932', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657f3932', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657f3932', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657f3932', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657f3932', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657f3932', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657f3932', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f3932', 'Geburtstag feiern — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', '🔊 Sprechen: Geburtstag feiern', 'Roleplay: You are in a German café. Introduce yourself and talk about Birthday. Your partner (AI) will respond naturally.', 'Birthday', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', '✏️ Schreiben: Geburtstag feiern', 'Write an email to a German friend about "Birthday". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3932', 'Geburtstag feiern — Roleplay', 'Birthday', 'Student', 'Teacher', 'Practice conversation about Birthday', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3932', 'Geburtstag feiern — Advanced Roleplay', 'Birthday', 'Customer', 'Assistant', 'Extended conversation about Birthday', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f3932', 'Geburtstag feiern — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Geburtstag feiern".', 'Creative practice for Birthday', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', '📚 Hausaufgabe: Geburtstag feiern', 'Complete these tasks to reinforce "Geburtstag feiern".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Birthday: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Birthday. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f3932', '🎯 Great work! In this lesson you learned 72 new words about Birthday. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Birthday","present_tense — grammar explanation and practice","Reading comprehension: text about Birthday","Listening comprehension: dialogue about Birthday","Speaking practice: roleplay/discussion about Birthday","Writing task: text about Birthday"]', '[{"title":"Geburtstag feiern Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Feiertag (public holiday)','Weihnachten (Christmas)','das Geschenk (gift)','feiern (to celebrate)','der Geburtstag (birthday)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Birthday for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'translation', 'Translate to German: "I use the word "public holiday" in a sentence about Birthday."', '[]', 'Der 3. Oktober ist ein Feiertag.', 'Use der  "der Feiertag" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'translation', 'Translate to German: "I use the word "Christmas" in a sentence about Birthday."', '[]', 'Weihnachten ist am 24. Dezember.', 'Use  "Weihnachten" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'translation', 'Translate to German: "I use the word "gift" in a sentence about Birthday."', '[]', 'Ich kaufe ein Geschenk.', 'Use das  "das Geschenk" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Culture: 🇩🇪 Deutsche Kultur: Birthday', 'In Germany, Birthday is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Birthday, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Birthday بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3932', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 3: Reiseerfahrungen (L-A2-06-03)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f3931', '00000000-0000-4000-a000-000039b547c2', 'Reiseerfahrungen', 'Talk about travel experiences using Perfekt tense.', 'Travel Experiences', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 3, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657f3931', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657f3931', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657f3931', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657f3931', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657f3931', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657f3931', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657f3931', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657f3931', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f3931', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f3931', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f3931', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f3931', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f3931', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f3931', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f3931', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f3931', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f3931', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f3931', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f3931', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f3931', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f3931', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f3931', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f3931', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f3931', 'das Krankenhaus', 'المستشفى', 'hospital', NULL, 'das', 'die Krankenhäuser', 'noun', 'Das Krankenhaus ist neu.', 'The hospital is new.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f3931', 'die Medizin', 'الدواء', 'medicine', NULL, 'die', NULL, 'noun', 'Die Medizin hilft gegen Schmerzen.', 'The medicine helps against pain.', 'A2', 26),
  ('00000000-0000-4000-a000-0000657f3931', 'gesund', 'صحي', 'healthy', NULL, NULL, NULL, 'adjective', 'Sport ist gesund.', 'Sports are healthy.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f3931', 'krank', 'مريض', 'sick', NULL, NULL, NULL, 'adjective', 'Ich bin krank.', 'I am sick.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f3931', 'die Apotheke', 'الصيدلية', 'pharmacy', NULL, 'die', 'die Apotheken', 'noun', 'Die Apotheke hat geöffnet.', 'The pharmacy is open.', 'A2', 29),
  ('00000000-0000-4000-a000-0000657f3931', 'die Versicherung', 'التأمين', 'insurance', NULL, 'die', 'die Versicherungen', 'noun', 'Ich habe eine Krankenversicherung.', 'I have health insurance.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'Welches deutsche Wort bedeutet "trip"?', '["das Ticket","der Zug","der Flughafen","der Bahnhof"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'Welches deutsche Wort bedeutet "train"?', '["der Flughafen","das Ticket","die Reise","der Zug"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'Welches deutsche Wort bedeutet "ticket"?', '["der Flughafen","der Bahnhof","der Zug","die Reise"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'Welches deutsche Wort bedeutet "train station"?', '["das Ticket","der Zug","die Reise","der Flughafen"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'Welches deutsche Wort bedeutet "airport"?', '["das Ticket","der Zug","die Reise","der Flughafen"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-0000657f3931', 'fill_gap', 'Ergänze den Satz: Ich ___ gern Travel Experiences. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657f3931', 'translation', 'Übersetze ins Deutsche: "I am learning about Travel Experiences."', '["Ich lerne über Travel Experiences.","Ich lerne Travel Experiences.","Lerne ich Travel Experiences."]', 'Ich lerne über Travel Experiences.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657f3931', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'Was bedeutet "die Reise" auf Deutsch?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'Welcher Artikel gehört zu "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000657f3931', 'true_false', 'Das Wort "das Ticket" gehört zum Thema Travel Experiences.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-0000657f3931', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657f3931', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'Wie lautet das deutsche Wort für "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-0000657f3931', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f3931', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657f3931', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f3931', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657f3931', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657f3931', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Feste, Traditionen und Reisen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657f3931', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657f3931', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657f3931', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657f3931', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657f3931', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657f3931', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657f3931', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657f3931', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657f3931', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657f3931', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657f3931', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657f3931', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657f3931', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657f3931', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657f3931', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657f3931', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657f3931', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f3931', 'Reiseerfahrungen — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', '🔊 Sprechen: Reiseerfahrungen', 'Roleplay: You are in a German café. Introduce yourself and talk about Travel Experiences. Your partner (AI) will respond naturally.', 'Travel Experiences', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', '✏️ Schreiben: Reiseerfahrungen', 'Write an email to a German friend about "Travel Experiences". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3931', 'Reiseerfahrungen — Roleplay', 'Travel Experiences', 'Student', 'Teacher', 'Practice conversation about Travel Experiences', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3931', 'Reiseerfahrungen — Advanced Roleplay', 'Travel Experiences', 'Customer', 'Assistant', 'Extended conversation about Travel Experiences', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f3931', 'Reiseerfahrungen — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Reiseerfahrungen".', 'Creative practice for Travel Experiences', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', '📚 Hausaufgabe: Reiseerfahrungen', 'Complete these tasks to reinforce "Reiseerfahrungen".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Travel Experiences: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Travel Experiences. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f3931', '🎯 Great work! In this lesson you learned 72 new words about Travel Experiences. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Travel Experiences","present_tense — grammar explanation and practice","Reading comprehension: text about Travel Experiences","Listening comprehension: dialogue about Travel Experiences","Speaking practice: roleplay/discussion about Travel Experiences","Writing task: text about Travel Experiences"]', '[{"title":"Reiseerfahrungen Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Travel Experiences for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Travel Experiences."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'translation', 'Translate to German: "I use the word "train" in a sentence about Travel Experiences."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Travel Experiences."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Culture: 🇩🇪 Deutsche Kultur: Travel Experiences', 'In Germany, Travel Experiences is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Travel Experiences, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Travel Experiences بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3931', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 4: Postkarte und E-Mail schreiben (L-A2-06-04)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f3930', '00000000-0000-4000-a000-000039b547c2', 'Postkarte und E-Mail schreiben', 'Write simple postcards and emails from vacation.', 'Writing: Postcards & Emails', 'writing', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 45, 4, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657f3930', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657f3930', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657f3930', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657f3930', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657f3930', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657f3930', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657f3930', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657f3930', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f3930', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f3930', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f3930', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f3930', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f3930', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f3930', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f3930', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f3930', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f3930', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f3930', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f3930', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f3930', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f3930', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f3930', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f3930', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f3930', 'das Krankenhaus', 'المستشفى', 'hospital', NULL, 'das', 'die Krankenhäuser', 'noun', 'Das Krankenhaus ist neu.', 'The hospital is new.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f3930', 'die Medizin', 'الدواء', 'medicine', NULL, 'die', NULL, 'noun', 'Die Medizin hilft gegen Schmerzen.', 'The medicine helps against pain.', 'A2', 26),
  ('00000000-0000-4000-a000-0000657f3930', 'gesund', 'صحي', 'healthy', NULL, NULL, NULL, 'adjective', 'Sport ist gesund.', 'Sports are healthy.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f3930', 'krank', 'مريض', 'sick', NULL, NULL, NULL, 'adjective', 'Ich bin krank.', 'I am sick.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f3930', 'die Apotheke', 'الصيدلية', 'pharmacy', NULL, 'die', 'die Apotheken', 'noun', 'Die Apotheke hat geöffnet.', 'The pharmacy is open.', 'A2', 29),
  ('00000000-0000-4000-a000-0000657f3930', 'die Versicherung', 'التأمين', 'insurance', NULL, 'die', 'die Versicherungen', 'noun', 'Ich habe eine Krankenversicherung.', 'I have health insurance.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Modalverben (Modal Verbs) / الأفعال الناقصة', 'Modal verbs modify the main verb: können (can), müssen (must), dürfen (may), sollen (should), wollen (want), mögen (like). They are conjugated irregularly in singular. The main verb goes to the END of the sentence as an infinitive.', '[{"rule":"Modal verb in position 2, main verb at the END","note":"Ich kann morgen kommen (I can come tomorrow)."},{"rule":"können: ich kann, du kannst, er kann, wir können","note":"Stem change: ö → a in singular (except wir/sie)"},{"rule":"müssen: ich muss, du musst, er muss, wir müssen","note":"Umlaut disappears in singular (ich muss, not ich müsse)"}]', '[{"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},{"german":"Du musst heute lernen.","arabic":"يجب أن تتعلم اليوم.","english":"You must study today."},{"german":"Wir wollen nach Deutschland reisen.","arabic":"نريد السفر إلى ألمانيا.","english":"We want to travel to Germany."}]', '[{"mistake":"Ich kann sprechen Deutsch","correction":"Ich kann Deutsch sprechen","explanation":"The main verb (sprechen) goes to the END of the sentence, not after the modal."},{"mistake":"Ich musse lernen","correction":"Ich muss lernen","explanation":"In ich form, müssen loses the Umlaut: ich muss (not ich musse)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'Welches deutsche Wort bedeutet "trip"?', '["das Ticket","die Reise","der Zug","der Bahnhof"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'Welches deutsche Wort bedeutet "train"?', '["der Bahnhof","das Ticket","die Reise","der Zug"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'Welches deutsche Wort bedeutet "ticket"?', '["der Flughafen","der Bahnhof","die Reise","das Ticket"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'Welches deutsche Wort bedeutet "train station"?', '["das Ticket","der Bahnhof","die Reise","der Zug"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'Welches deutsche Wort bedeutet "airport"?', '["der Bahnhof","das Ticket","der Zug","die Reise"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-0000657f3930', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Writing: Postcards & Emails. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657f3930', 'translation', 'Übersetze ins Deutsche: "I am learning about Writing: Postcards & Emails."', '["Ich lerne über Writing: Postcards & Emails.","Ich lerne Writing: Postcards & Emails.","Lerne ich Writing: Postcards & Emails."]', 'Ich lerne über Writing: Postcards & Emails.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657f3930', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'Was bedeutet "die Reise" auf Deutsch?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'Welcher Artikel gehört zu "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000657f3930', 'true_false', 'Das Wort "das Ticket" gehört zum Thema Writing: Postcards & Emails.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich kann Deutsch sprechen.","Du musst heute lernen.","Wir wollen nach Deutschland reisen."]', 'Ich kann Deutsch sprechen.', 2, 4),
  ('00000000-0000-4000-a000-0000657f3930', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657f3930', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'Wie lautet das deutsche Wort für "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-0000657f3930', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f3930', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657f3930', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f3930', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657f3930', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657f3930', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Feste, Traditionen und Reisen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657f3930', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657f3930', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657f3930', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657f3930', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657f3930', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657f3930', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657f3930', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657f3930', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657f3930', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657f3930', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657f3930', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657f3930', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657f3930', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657f3930', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657f3930', 'Ich kann Deutsch sprechen.', 'I can speak German.', 'Modalverben (Modal Verbs)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657f3930', 'Du musst heute lernen.', 'You must study today.', 'Modalverben (Modal Verbs)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657f3930', 'Wir wollen nach Deutschland reisen.', 'We want to travel to Germany.', 'Modalverben (Modal Verbs)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f3930', 'Postkarte und E-Mail schreiben — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', '🔊 Sprechen: Postkarte und E-Mail schreiben', 'Roleplay: You are in a German café. Introduce yourself and talk about Writing: Postcards & Emails. Your partner (AI) will respond naturally.', 'Writing: Postcards & Emails', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', '✏️ Schreiben: Postkarte und E-Mail schreiben', 'Write an email to a German friend about "Writing: Postcards & Emails". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3930', 'Postkarte und E-Mail schreiben — Roleplay', 'Writing: Postcards & Emails', 'Student', 'Teacher', 'Practice conversation about Writing: Postcards & Emails', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f3930', 'Postkarte und E-Mail schreiben — Advanced Roleplay', 'Writing: Postcards & Emails', 'Customer', 'Assistant', 'Extended conversation about Writing: Postcards & Emails', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f3930', 'Postkarte und E-Mail schreiben — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Postkarte und E-Mail schreiben".', 'Creative practice for Writing: Postcards & Emails', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', '📚 Hausaufgabe: Postkarte und E-Mail schreiben', 'Complete these tasks to reinforce "Postkarte und E-Mail schreiben".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Writing: Postcards & Emails: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Writing: Postcards & Emails. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f3930', '🎯 Great work! In this lesson you learned 72 new words about Writing: Postcards & Emails. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Writing: Postcards & Emails","present_tense — grammar explanation and practice","Reading comprehension: text about Writing: Postcards & Emails","Listening comprehension: dialogue about Writing: Postcards & Emails","Speaking practice: roleplay/discussion about Writing: Postcards & Emails","Writing task: text about Writing: Postcards & Emails"]', '[{"title":"Postkarte und E-Mail schreiben Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Writing: Postcards & Emails for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Writing: Postcards & Emails."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'translation', 'Translate to German: "I use the word "train" in a sentence about Writing: Postcards & Emails."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Writing: Postcards & Emails."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Culture: 🇩🇪 Deutsche Kultur: Writing: Postcards & Emails', 'In Germany, Writing: Postcards & Emails is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Writing: Postcards & Emails, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Writing: Postcards & Emails بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f3930', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 5: Kulturelle Unterschiede (L-A2-06-05)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f392f', '00000000-0000-4000-a000-000039b547c2', 'Kulturelle Unterschiede', 'Discuss cultural differences between your country and Germany.', 'Cultural Differences', 'reading', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 40, 5, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'der Feiertag', 'العطلة الرسمية', 'public holiday', NULL, 'der', 'die Feiertage', 'noun', 'Der 3. Oktober ist ein Feiertag.', 'October 3rd is a public holiday.', 'A2', 1),
  ('00000000-0000-4000-a000-0000657f392f', 'Weihnachten', 'عيد الميلاد', 'Christmas', NULL, NULL, NULL, 'noun', 'Weihnachten ist am 24. Dezember.', 'Christmas is on December 24th.', 'A2', 2),
  ('00000000-0000-4000-a000-0000657f392f', 'das Geschenk', 'الهدية', 'gift', NULL, 'das', 'die Geschenke', 'noun', 'Ich kaufe ein Geschenk.', 'I buy a gift.', 'A2', 3),
  ('00000000-0000-4000-a000-0000657f392f', 'feiern', 'يحتفل', 'to celebrate', NULL, NULL, NULL, 'verb', 'Wir feiern meinen Geburtstag.', 'We celebrate my birthday.', 'A2', 4),
  ('00000000-0000-4000-a000-0000657f392f', 'der Geburtstag', 'عيد الميلاد', 'birthday', NULL, 'der', 'die Geburtstage', 'noun', 'Alles Gute zum Geburtstag!', 'Happy birthday!', 'A2', 5),
  ('00000000-0000-4000-a000-0000657f392f', 'Ostern', 'عيد الفصح', 'Easter', NULL, NULL, NULL, 'noun', 'Ostern ist im Frühling.', 'Easter is in spring.', 'A2', 6),
  ('00000000-0000-4000-a000-0000657f392f', 'das Fest', 'المهرجان', 'festival', NULL, 'das', 'die Feste', 'noun', 'Das Oktoberfest ist in München.', 'The Oktoberfest is in Munich.', 'A2', 7),
  ('00000000-0000-4000-a000-0000657f392f', 'der Brauch', 'العادة التقليدية', 'tradition', NULL, 'der', 'die Bräuche', 'noun', 'Das ist ein deutscher Brauch.', 'That is a German tradition.', 'B1', 8),
  ('00000000-0000-4000-a000-0000657f392f', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f392f', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f392f', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f392f', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f392f', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f392f', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f392f', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f392f', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f392f', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f392f', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f392f', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f392f', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f392f', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f392f', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f392f', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f392f', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f392f', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f392f', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 26),
  ('00000000-0000-4000-a000-0000657f392f', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f392f', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f392f', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 29),
  ('00000000-0000-4000-a000-0000657f392f', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Präpositionen mit Dativ und Akkusativ (Prepositions) / حروف الجر مع الداتيف والأكوزاتيف', 'German prepositions force specific cases. Some always take dative (aus, bei, mit, nach, seit, von, zu). Some always take accusative (durch, für, gegen, ohne, um). Some take either (Wechselpräpositionen: in, auf, unter, über, neben, zwischen, vor, hinter) — accusative for direction, dative for location.', '[{"rule":"Dative prepositions: aus, bei, mit, nach, seit, von, zu","note":"mit dem Bus, bei der Arbeit, nach der Schule"},{"rule":"Accusative prepositions: durch, für, gegen, ohne, um","note":"für den Freund, ohne den Schlüssel"},{"rule":"Wechselpräpositionen: Wo? (Dativ) vs Wohin? (Akkusativ)","note":"Ich bin in der Schule (Wo? Dativ). Ich gehe in die Schule (Wohin? Akkusativ)."}]', '[{"german":"Ich fahre mit dem Bus.","arabic":"أسافر بالحافلة.","english":"I travel by bus."},{"german":"Das Geschenk ist für den Freund.","arabic":"الهدية للصديق.","english":"The gift is for the friend."},{"german":"Das Buch liegt auf dem Tisch. (Wo? Dativ)","arabic":"الكتاب على الطاولة. (أين؟ داتيف)","english":"The book is on the table."},{"german":"Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)","arabic":"أضع الكتاب على الطاولة. (إلى أين؟ أكوزاتيف)","english":"I put the book on the table."}]', '[{"mistake":"Ich fahre mit der Bus (accusative article)","correction":"Ich fahre mit dem Bus (dative)","explanation":"\"Mit\" always takes dative: der → dem."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'Welches deutsche Wort bedeutet "public holiday"?', '["Weihnachten","der Feiertag","feiern","der Geburtstag"]', 'der Feiertag', '"public holiday" = "der Feiertag" in German. Article: der Plural: die Feiertage', 1, 1),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'Welches deutsche Wort bedeutet "Christmas"?', '["das Geschenk","der Feiertag","feiern","Weihnachten"]', 'Weihnachten', '"Christmas" bedeutet auf Deutsch "Christmas".  ', 1, 2),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'Welches deutsche Wort bedeutet "gift"?', '["Weihnachten","feiern","der Feiertag","das Geschenk"]', 'das Geschenk', '"gift" = "das Geschenk" in German. Article: das Plural: die Geschenke', 1, 3),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'Welches deutsche Wort bedeutet "to celebrate"?', '["Weihnachten","der Feiertag","feiern","der Geburtstag"]', 'feiern', '"to celebrate" bedeutet auf Deutsch "to celebrate".  ', 1, 4),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'Welches deutsche Wort bedeutet "birthday"?', '["feiern","der Feiertag","das Geschenk","Weihnachten"]', 'der Geburtstag', '"birthday" = "der Geburtstag" in German. Article: der Plural: die Geburtstage', 1, 5),
  ('00000000-0000-4000-a000-0000657f392f', 'fill_gap', 'Ergänze den Satz: Ich ___ gern Cultural Differences. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657f392f', 'translation', 'Übersetze ins Deutsche: "I am learning about Cultural Differences."', '["Ich lerne über Cultural Differences.","Ich lerne Cultural Differences.","Lerne ich Cultural Differences."]', 'Ich lerne über Cultural Differences.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657f392f', 'matching', 'Match: Which word pairs are correct?', '["der Feiertag - public holiday, Weihnachten - Christmas"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'Was bedeutet "der Feiertag" auf Deutsch?', '["public holiday","to run","beautiful","yesterday"]', 'public holiday', 1, 1),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'Welcher Artikel gehört zu "Weihnachten"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000657f392f', 'true_false', 'Das Wort "das Geschenk" gehört zum Thema Cultural Differences.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich fahre mit dem Bus.","Das Geschenk ist für den Freund.","Das Buch liegt auf dem Tisch. (Wo? Dativ)","Ich lege das Buch auf den Tisch. (Wohin? Akkusativ)"]', 'Ich fahre mit dem Bus.', 2, 4),
  ('00000000-0000-4000-a000-0000657f392f', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657f392f', 'fill_blank', 'Complete: Ich ___ (to celebrate) Deutsch.', '["feiern","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'Wie lautet das deutsche Wort für "birthday"?', '["der Geburtstag","Ostern","das Fest","der Brauch"]', 'der Geburtstag', 1, 7),
  ('00000000-0000-4000-a000-0000657f392f', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f392f', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657f392f', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Guten Morgen!', 'Good morning!', 'صباح الخير!', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f392f', 'Guten Tag!', 'Good day!', 'نهارك سعيد!', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657f392f', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 'مرحباً، كيف حالكم؟', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657f392f', 'Schön, Sie kennenzulernen!', 'Nice to meet you!', 'سعيد بلقائكم!', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'der der Feiertag (die Feiertage)', 'public holiday — العطلة الرسمية', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657f392f', 'Weihnachten', 'Christmas — عيد الميلاد', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657f392f', 'das das Geschenk (die Geschenke)', 'gift — الهدية', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657f392f', 'feiern', 'to celebrate — يحتفل', 'verb', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657f392f', 'der der Geburtstag (die Geburtstage)', 'birthday — عيد الميلاد', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657f392f', 'Ostern', 'Easter — عيد الفصح', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657f392f', 'das das Fest (die Feste)', 'festival — المهرجان', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657f392f', 'der der Brauch (die Bräuche)', 'tradition — العادة التقليدية', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657f392f', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657f392f', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657f392f', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657f392f', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657f392f', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657f392f', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657f392f', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657f392f', 'Ich fahre mit dem Bus.', 'I travel by bus.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657f392f', 'Das Geschenk ist für den Freund.', 'The gift is for the friend.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657f392f', 'Das Buch liegt auf dem Tisch. (Wo? Dativ)', 'The book is on the table.', 'Präpositionen mit Dativ und Akkusativ (Prepositions)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f392f', 'Kulturelle Unterschiede — Leseübung', 'Hallo! Mein Name ist Lisa und ich bin 25 Jahre alt. Ich wohne in Berlin. Jeden Morgen sage ich "Guten Morgen" zu meinen Kollegen. Mein Chef heißt Herr Schmidt. Er ist sehr freundlich. Wenn ich das Büro verlasse, sage ich "Auf Wiedersehen". Am Abend treffe ich meine Freunde. Wir sagen "Hallo" und "Tschüss". Das sind wichtige Wörter auf Deutsch.', 'Hello! My name is Lisa and I am 25 years old. I live in Berlin. Every morning I say "Good morning" to my colleagues. My boss is called Mr. Schmidt. He is very friendly. When I leave the office, I say "Goodbye". In the evening I meet my friends. We say "Hello" and "Bye". These are important words in German.', 'مرحباً! اسمي ليزا وعمري 25 سنة. أسكن في برلين. كل صباح أقول "صباح الخير" لزملائي. مديري اسمه السيد شميت. إنه ودود جداً. عندما أغادر المكتب أقول "إلى اللقاء". في المساء ألتقي بأصدقائي. نقول "مرحباً" و "مع السلامة". هذه كلمات مهمة في الألمانية.', NULL, 59, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Lehrerin]: ممتاز! إلى الغد!', '[Lehrerin]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: 

[Student]: 

[Lehrerin]: ', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', '🔊 Sprechen: Kulturelle Unterschiede', 'Roleplay: You are in a German café. Introduce yourself and talk about Cultural Differences. Your partner (AI) will respond naturally.', 'Cultural Differences', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', '✏️ Schreiben: Kulturelle Unterschiede', 'Write an email to a German friend about "Cultural Differences". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f392f', 'Kulturelle Unterschiede — Roleplay', 'Cultural Differences', 'Student', 'Teacher', 'Practice conversation about Cultural Differences', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f392f', 'Kulturelle Unterschiede — Advanced Roleplay', 'Cultural Differences', 'Customer', 'Assistant', 'Extended conversation about Cultural Differences', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['der Feiertag','Weihnachten','das Geschenk','feiern','der Geburtstag','Ostern','das Fest','der Brauch']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f392f', 'Kulturelle Unterschiede — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "Kulturelle Unterschiede".', 'Creative practice for Cultural Differences', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', '📚 Hausaufgabe: Kulturelle Unterschiede', 'Complete these tasks to reinforce "Kulturelle Unterschiede".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Cultural Differences: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Cultural Differences. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f392f', '🎯 Great work! In this lesson you learned 72 new words about Cultural Differences. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Cultural Differences","present_tense — grammar explanation and practice","Reading comprehension: text about Cultural Differences","Listening comprehension: dialogue about Cultural Differences","Speaking practice: roleplay/discussion about Cultural Differences","Writing task: text about Cultural Differences"]', '[{"title":"Kulturelle Unterschiede Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['der Feiertag (public holiday)','Weihnachten (Christmas)','das Geschenk (gift)','feiern (to celebrate)','der Geburtstag (birthday)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Cultural Differences for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'translation', 'Translate to German: "I use the word "public holiday" in a sentence about Cultural Differences."', '[]', 'Der 3. Oktober ist ein Feiertag.', 'Use der  "der Feiertag" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'translation', 'Translate to German: "I use the word "Christmas" in a sentence about Cultural Differences."', '[]', 'Weihnachten ist am 24. Dezember.', 'Use  "Weihnachten" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'translation', 'Translate to German: "I use the word "gift" in a sentence about Cultural Differences."', '[]', 'Ich kaufe ein Geschenk.', 'Use das  "das Geschenk" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Culture: 🇩🇪 Deutsche Kultur: Cultural Differences', 'In Germany, Cultural Differences is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Cultural Differences, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Cultural Differences بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392f', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using Arabic word order in German sentences","correction":"Verb must be in position 2: Subject + Verb + Object","explanation":"Arabic and German have different sentence structures. Arabic is VSO, German is SVO with verb in position 2."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

  -- Lesson 6: A2 Abschlusstest (L-A2-06-06)
  insert into public.course_lessons (id, module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published, has_expressions, has_flashcards, has_grammar, has_reading, has_listening, has_speaking, has_writing, has_conversation, has_ai_challenges, has_homework, has_review)
  values ('00000000-0000-4000-a000-0000657f392e', '00000000-0000-4000-a000-000039b547c2', 'A2 Abschlusstest', 'Comprehensive A2 level test.', 'Level Test', 'test', '["Understand and apply present_tense rules correctly","Use present_tense in real conversations","Avoid common mistakes Arabic speakers make with present_tense","Read and understand present_tense in context","Listen and identify present_tense in speech","Write sentences using present_tense correctly"]', 50, 6, true, true, true, true, true, true, true, true, true, true, true, true)
  on conflict (id) do nothing;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, french_translation, article, plural, part_of_speech, example_sentence, example_translation, cefr_level, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'die Reise', 'الرحلة', 'trip', NULL, 'die', 'die Reisen', 'noun', 'Die Reise nach München war schön.', 'The trip to Munich was nice.', 'A1', 1),
  ('00000000-0000-4000-a000-0000657f392e', 'der Zug', 'القطار', 'train', NULL, 'der', 'die Züge', 'noun', 'Der Zug kommt um 10 Uhr an.', 'The train arrives at 10 o''clock.', 'A1', 2),
  ('00000000-0000-4000-a000-0000657f392e', 'das Ticket', 'التذكرة', 'ticket', NULL, 'das', 'die Tickets', 'noun', 'Ein Ticket nach Berlin, bitte.', 'A ticket to Berlin, please.', 'A1', 3),
  ('00000000-0000-4000-a000-0000657f392e', 'der Bahnhof', 'محطة القطار', 'train station', NULL, 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 'A1', 4),
  ('00000000-0000-4000-a000-0000657f392e', 'der Flughafen', 'المطار', 'airport', NULL, 'der', 'die Flughäfen', 'noun', 'Ich fahre zum Flughafen.', 'I drive to the airport.', 'A1', 5),
  ('00000000-0000-4000-a000-0000657f392e', 'das Hotel', 'الفندق', 'hotel', NULL, 'das', 'die Hotels', 'noun', 'Das Hotel ist günstig.', 'The hotel is affordable.', 'A1', 6),
  ('00000000-0000-4000-a000-0000657f392e', 'der Pass', 'جواز السفر', 'passport', NULL, 'der', 'die Pässe', 'noun', 'Ich brauche meinen Pass.', 'I need my passport.', 'A1', 7),
  ('00000000-0000-4000-a000-0000657f392e', 'der Koffer', 'الحقيبة', 'suitcase', NULL, 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 'A1', 8),
  ('00000000-0000-4000-a000-0000657f392e', 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, NULL, 'verb', 'Ich kaufe im Supermarkt ein.', 'I shop at the supermarket.', 'A1', 9),
  ('00000000-0000-4000-a000-0000657f392e', 'der Preis', 'السعر', 'price', NULL, 'der', 'die Preise', 'noun', 'Der Preis ist günstig.', 'The price is reasonable.', 'A1', 10),
  ('00000000-0000-4000-a000-0000657f392e', 'bezahlen', 'يدفع', 'to pay', NULL, NULL, NULL, 'verb', 'Ich bezahle an der Kasse.', 'I pay at the checkout.', 'A1', 11),
  ('00000000-0000-4000-a000-0000657f392e', 'der Euro', 'اليورو', 'euro', NULL, 'der', 'die Euro', 'noun', 'Das kostet 10 Euro.', 'That costs 10 euros.', 'A1', 12),
  ('00000000-0000-4000-a000-0000657f392e', 'das Geschäft', 'المتجر', 'store', NULL, 'das', 'die Geschäfte', 'noun', 'Das Geschäft ist um 20 Uhr zu.', 'The store closes at 8 PM.', 'A1', 13),
  ('00000000-0000-4000-a000-0000657f392e', 'der Markt', 'السوق', 'market', NULL, 'der', 'die Märkte', 'noun', 'Der Markt ist am Samstag.', 'The market is on Saturday.', 'A1', 14),
  ('00000000-0000-4000-a000-0000657f392e', 'die Tasche', 'الحقيبة', 'bag', NULL, 'die', 'die Taschen', 'noun', 'Ich brauche eine Tasche.', 'I need a bag.', 'A1', 15),
  ('00000000-0000-4000-a000-0000657f392e', 'der Rabatt', 'الخصم', 'discount', NULL, 'der', 'die Rabatte', 'noun', 'Gibt es Rabatt?', 'Is there a discount?', 'A2', 16),
  ('00000000-0000-4000-a000-0000657f392e', 'das Restaurant', 'المطعم', 'restaurant', NULL, 'das', 'die Restaurants', 'noun', 'Das Restaurant ist gut.', 'The restaurant is good.', 'A1', 17),
  ('00000000-0000-4000-a000-0000657f392e', 'die Speisekarte', 'قائمة الطعام', 'menu', NULL, 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 'A1', 18),
  ('00000000-0000-4000-a000-0000657f392e', 'bestellen', 'يطلب', 'to order', NULL, NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 'A1', 19),
  ('00000000-0000-4000-a000-0000657f392e', 'der Kellner', 'النادل', 'waiter', NULL, 'der', NULL, 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 'A1', 20),
  ('00000000-0000-4000-a000-0000657f392e', 'trinken', 'يشرب', 'to drink', NULL, NULL, NULL, 'verb', 'Ich trinke Wasser.', 'I drink water.', 'A1', 21),
  ('00000000-0000-4000-a000-0000657f392e', 'die Rechnung', 'الفاتورة', 'bill', NULL, 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 'A1', 22),
  ('00000000-0000-4000-a000-0000657f392e', 'lecker', 'لذيذ', 'delicious', NULL, NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 'A1', 23),
  ('00000000-0000-4000-a000-0000657f392e', 'der Arzt', 'الطبيب', 'doctor', NULL, 'der', 'die Ärzte', 'noun', 'Ich gehe zum Arzt.', 'I go to the doctor.', 'A1', 24),
  ('00000000-0000-4000-a000-0000657f392e', 'das Krankenhaus', 'المستشفى', 'hospital', NULL, 'das', 'die Krankenhäuser', 'noun', 'Das Krankenhaus ist neu.', 'The hospital is new.', 'A1', 25),
  ('00000000-0000-4000-a000-0000657f392e', 'die Medizin', 'الدواء', 'medicine', NULL, 'die', NULL, 'noun', 'Die Medizin hilft gegen Schmerzen.', 'The medicine helps against pain.', 'A2', 26),
  ('00000000-0000-4000-a000-0000657f392e', 'gesund', 'صحي', 'healthy', NULL, NULL, NULL, 'adjective', 'Sport ist gesund.', 'Sports are healthy.', 'A1', 27),
  ('00000000-0000-4000-a000-0000657f392e', 'krank', 'مريض', 'sick', NULL, NULL, NULL, 'adjective', 'Ich bin krank.', 'I am sick.', 'A1', 28),
  ('00000000-0000-4000-a000-0000657f392e', 'die Apotheke', 'الصيدلية', 'pharmacy', NULL, 'die', 'die Apotheken', 'noun', 'Die Apotheke hat geöffnet.', 'The pharmacy is open.', 'A2', 29),
  ('00000000-0000-4000-a000-0000657f392e', 'die Versicherung', 'التأمين', 'insurance', NULL, 'die', 'die Versicherungen', 'noun', 'Ich habe eine Krankenversicherung.', 'I have health insurance.', 'B1', 30);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Perfekt mit "haben" und "sein" (Perfect Tense) / الماضي التام مع haben و sein', 'The Perfekt is the most common past tense in spoken German. Form it with: present tense of "haben" or "sein" + past participle (Partizip II) at the end of the sentence. Use "sein" for verbs of movement (gehen, fahren, kommen) and state change (aufwachen, sterben). All others use "haben".', '[{"rule":"haben + Partizip II (most verbs)","note":"Ich habe gelernt. Ich habe gegessen."},{"rule":"sein + Partizip II (movement/change)","note":"Ich bin gegangen. Ich bin aufgewacht."},{"rule":"Partizip II: ge- + stem + -t (regular)","note":"lernen → gelernt, machen → gemacht"},{"rule":"Past participle is LAST in the sentence","note":"Ich habe gestern Deutsch gelernt."}]', '[{"german":"Ich habe gestern Deutsch gelernt.","arabic":"تعلمت الألمانية أمس.","english":"I learned German yesterday."},{"german":"Er ist nach Berlin gefahren.","arabic":"ذهب إلى برلين.","english":"He went to Berlin."},{"german":"Wir haben schon gegessen.","arabic":"لقد أكلنا بالفعل.","english":"We have already eaten."}]', '[{"mistake":"Ich habe nach Berlin gefahren","correction":"Ich bin nach Berlin gefahren","explanation":"\"Fahren\" is a movement verb → use \"sein\"."},{"mistake":"Ich habe gelernt Deutsch","correction":"Ich habe Deutsch gelernt","explanation":"The past participle goes to the END of the sentence."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'Welches deutsche Wort bedeutet "trip"?', '["die Reise","der Zug","das Ticket","der Bahnhof"]', 'die Reise', '"trip" = "die Reise" in German. Article: die Plural: die Reisen', 1, 1),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'Welches deutsche Wort bedeutet "train"?', '["die Reise","der Zug","der Bahnhof","der Flughafen"]', 'der Zug', '"train" = "der Zug" in German. Article: der Plural: die Züge', 1, 2),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'Welches deutsche Wort bedeutet "ticket"?', '["der Bahnhof","der Flughafen","der Zug","das Ticket"]', 'das Ticket', '"ticket" = "das Ticket" in German. Article: das Plural: die Tickets', 1, 3),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'Welches deutsche Wort bedeutet "train station"?', '["der Bahnhof","die Reise","der Zug","das Ticket"]', 'der Bahnhof', '"train station" = "der Bahnhof" in German. Article: der Plural: die Bahnhöfe', 1, 4),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'Welches deutsche Wort bedeutet "airport"?', '["der Flughafen","die Reise","der Zug","das Ticket"]', 'der Flughafen', '"airport" = "der Flughafen" in German. Article: der Plural: die Flughäfen', 1, 5),
  ('00000000-0000-4000-a000-0000657f392e', 'fill_gap', 'Ergänze den Satz: Ich ___ gern über Level Test. (sprechen)', '["spreche","sprichst","spricht","sprechen"]', 'spreche', 'ich spreche gern = I like to speak. Stem: sprech- + e.', 2, 6),
  ('00000000-0000-4000-a000-0000657f392e', 'translation', 'Übersetze ins Deutsche: "I am learning about Level Test."', '["Ich lerne über Level Test.","Ich lerne Level Test.","Lerne ich Level Test."]', 'Ich lerne über Level Test.', '"Ich lerne über..." = "I am learning about..."', 2, 7),
  ('00000000-0000-4000-a000-0000657f392e', 'matching', 'Match: Which word pairs are correct?', '["die Reise - trip, der Zug - train"]', 'Matched correctly', 'Each German word has a unique English equivalent.', 2, 8);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'Was bedeutet "die Reise" auf Deutsch?', '["trip","to run","beautiful","yesterday"]', 'trip', 1, 1),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'Welcher Artikel gehört zu "der Zug"?', '["der","die","das","den"]', 'der', 1, 2),
  ('00000000-0000-4000-a000-0000657f392e', 'true_false', 'Das Wort "das Ticket" gehört zum Thema Level Test.', '["True","False"]', 'True', 1, 3),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'Welcher Satz verwendet present_tense?', '["Ich habe gestern Deutsch gelernt.","Er ist nach Berlin gefahren.","Wir haben schon gegessen."]', 'Ich habe gestern Deutsch gelernt.', 2, 4),
  ('00000000-0000-4000-a000-0000657f392e', 'true_false', ''Im Deutschen steht das Verb an zweiter Position im Hauptsatz.', '["True","False"]', 'True', 1, 5),
  ('00000000-0000-4000-a000-0000657f392e', 'fill_blank', 'Complete: Ich ___ (train station) Deutsch.', '["der Bahnhof","lernt","lernst","lernen"]', 'lerne', 2, 6),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'Wie lautet das deutsche Wort für "airport"?', '["der Flughafen","das Hotel","der Pass","der Koffer"]', 'der Flughafen', 1, 7),
  ('00000000-0000-4000-a000-0000657f392e', 'true_false', 'Im Deutschen werden alle Nomen großgeschrieben.', '["True","False"]', 'True', 1, 8),
  ('00000000-0000-4000-a000-0000657f392e', 'multiple_choice', 'How do you say "please" in a restaurant in Germany?', '["Bitte","Danke","Tschüss","Hallo"]', 'Bitte', 1, 9),
  ('00000000-0000-4000-a000-0000657f392e', 'fill_blank', 'Wo ___ (to live) du?', '["wohnst","wohne","wohnt","wohnen"]', 'wohnst', 2, 10);

  insert into public.lesson_expressions (lesson_id, german, english_translation, arabic_translation, french_translation, usage_context, formality, is_idiom, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Ich möchte ein Ticket nach Berlin.', 'I''d like a ticket to Berlin.', 'أريد تذكرة إلى برلين.', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 1),
  ('00000000-0000-4000-a000-0000657f392e', 'Wann fährt der Zug ab?', 'When does the train depart?', 'متى يغادر القطار؟', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 2),
  ('00000000-0000-4000-a000-0000657f392e', 'Wo ist der Bahnsteig?', 'Where is the platform?', 'أين الرصيف؟', NULL, 'Used in Feste, Traditionen und Reisen', 'formal', false, 3),
  ('00000000-0000-4000-a000-0000657f392e', 'Ist dieser Platz frei?', 'Is this seat free?', 'هل هذا المقعد شاغر؟', NULL, 'Used in Feste, Traditionen und Reisen', 'neutral', false, 4);

  insert into public.lesson_flashcards (lesson_id, front, back, hint, category, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'die die Reise (die Reisen)', 'trip — الرحلة', 'noun', 'vocabulary', 1),
  ('00000000-0000-4000-a000-0000657f392e', 'der der Zug (die Züge)', 'train — القطار', 'noun', 'vocabulary', 2),
  ('00000000-0000-4000-a000-0000657f392e', 'das das Ticket (die Tickets)', 'ticket — التذكرة', 'noun', 'vocabulary', 3),
  ('00000000-0000-4000-a000-0000657f392e', 'der der Bahnhof (die Bahnhöfe)', 'train station — محطة القطار', 'noun', 'vocabulary', 4),
  ('00000000-0000-4000-a000-0000657f392e', 'der der Flughafen (die Flughäfen)', 'airport — المطار', 'noun', 'vocabulary', 5),
  ('00000000-0000-4000-a000-0000657f392e', 'das das Hotel (die Hotels)', 'hotel — الفندق', 'noun', 'vocabulary', 6),
  ('00000000-0000-4000-a000-0000657f392e', 'der der Pass (die Pässe)', 'passport — جواز السفر', 'noun', 'vocabulary', 7),
  ('00000000-0000-4000-a000-0000657f392e', 'der der Koffer (die Koffer)', 'suitcase — الحقيبة', 'noun', 'vocabulary', 8),
  ('00000000-0000-4000-a000-0000657f392e', 'einkaufen', 'to shop — يتسوق', 'verb', 'vocabulary', 9),
  ('00000000-0000-4000-a000-0000657f392e', 'der der Preis (die Preise)', 'price — السعر', 'noun', 'vocabulary', 10),
  ('00000000-0000-4000-a000-0000657f392e', 'bezahlen', 'to pay — يدفع', 'verb', 'vocabulary', 11),
  ('00000000-0000-4000-a000-0000657f392e', 'der der Euro (die Euro)', 'euro — اليورو', 'noun', 'vocabulary', 12),
  ('00000000-0000-4000-a000-0000657f392e', 'das das Geschäft (die Geschäfte)', 'store — المتجر', 'noun', 'vocabulary', 13),
  ('00000000-0000-4000-a000-0000657f392e', 'der der Markt (die Märkte)', 'market — السوق', 'noun', 'vocabulary', 14),
  ('00000000-0000-4000-a000-0000657f392e', 'die die Tasche (die Taschen)', 'bag — الحقيبة', 'noun', 'vocabulary', 15),
  ('00000000-0000-4000-a000-0000657f392e', 'Ich habe gestern Deutsch gelernt.', 'I learned German yesterday.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 16),
  ('00000000-0000-4000-a000-0000657f392e', 'Er ist nach Berlin gefahren.', 'He went to Berlin.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 17),
  ('00000000-0000-4000-a000-0000657f392e', 'Wir haben schon gegessen.', 'We have already eaten.', 'Perfekt mit "haben" und "sein" (Perfect Tense)', 'grammar', 18);

  insert into public.lesson_reading (lesson_id, title, content, english_translation, arabic_translation, french_translation, word_count, difficulty_rating, source) values
  ('00000000-0000-4000-a000-0000657f392e', 'A2 Abschlusstest — Leseübung', 'Nächste Woche mache ich eine Reise nach München. Ich fahre mit dem Zug. Ich kaufe ein Ticket am Bahnhof. Der Zug fährt um 8 Uhr ab. Die Fahrt dauert 4 Stunden. In München besuche ich meine Tante. Sie wohnt in der Nähe des Hauptbahnhofs. Wir gehen zusammen in ein Restaurant. Dann besuchen wir das Deutsche Museum. Die Reise wird schön.', 'Next week I am taking a trip to Munich. I am going by train. I buy a ticket at the train station. The train departs at 8 o''clock. The journey takes 4 hours. In Munich I visit my aunt. She lives near the main train station. We go to a restaurant together. Then we visit the German Museum. The trip will be nice.', 'الأسبوع القادم سأسافر إلى ميونخ. سأذهب بالقطار. أشتري تذكرة من محطة القطار. القطار يغادر في الساعة 8. الرحلة تستغرق 4 ساعات. في ميونخ أزور عمتي. تسكن بالقرب من المحطة الرئيسية. نذهب معاً إلى مطعم. ثم نزور المتحف الألماني. الرحلة ستكون جميلة.', NULL, 60, 1, 'DeutschMentor Complete Curriculum');

  insert into public.lesson_listening (lesson_id, title, transcript, english_translation, arabic_translation, french_translation, duration_seconds, speaker_count, scenario) values
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

[Mitarbeiter]: إذاً التكلفة 73.50 يورو. القطار يغادر في الساعة 10.', '[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: 

[Kunde]: 

[Mitarbeiter]: ', 72, 2, 'Feste, Traditionen und Reisen');

  insert into public.lesson_speaking (lesson_id, title, prompt, scenario, tips, vocabulary_hints, min_duration_seconds, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', '🔊 Sprechen: A2 Abschlusstest', 'Roleplay: You are in a German café. Introduce yourself and talk about Level Test. Your partner (AI) will respond naturally.', 'Level Test', ARRAY['Use complete sentences — not single words','Pause between phrases, not between words','Don''t translate from Arabic word-for-word']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], 30, 1);

  insert into public.lesson_writing (lesson_id, title, task, tips, vocabulary_hints, grammar_focus, word_limit_min, word_limit_max, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', '✏️ Schreiben: A2 Abschlusstest', 'Write an email to a German friend about "Level Test". Tell them what you learned, what you found interesting, and ask two questions about their experience with this topic. Use at least 8 vocabulary words from this lesson. Sign off naturally ("Viele Grüße", "Liebe Grüße").', ARRAY['Start with "Hallo" or "Liebe/r"','Keep sentences short (Subject-Verb-Object)','End with a friendly farewell']::text[], ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[], ARRAY['Sentence structure','Vocabulary usage']::text[], 50, 100, 1);

  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f392e', 'A2 Abschlusstest — Roleplay', 'Level Test', 'Student', 'Teacher', 'Practice conversation about Level Test', 'Hallo! Lass uns über dieses Thema sprechen.', 'beginner', 1, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);
  insert into public.lesson_conversations (lesson_id, title, scenario, role_user, role_ai, context, opening_line, difficulty, order_index, vocabulary_hints) values
  ('00000000-0000-4000-a000-0000657f392e', 'A2 Abschlusstest — Advanced Roleplay', 'Level Test', 'Customer', 'Assistant', 'Extended conversation about Level Test', 'Guten Tag! Wie kann ich Ihnen helfen?', 'beginner', 2, ARRAY['die Reise','der Zug','das Ticket','der Bahnhof','der Flughafen','das Hotel','der Pass','der Koffer']::text[]);

  insert into public.lesson_ai_challenges (lesson_id, title, question, scenario, difficulty, order_index, expected_elements, tips) values
  ('00000000-0000-4000-a000-0000657f392e', 'A2 Abschlusstest — Creative Practice', 'Create a short dialogue or story using at least 10 vocabulary words and grammar structures from "A2 Abschlusstest".', 'Creative practice for Level Test', 'easy', 1, ARRAY['Use vocabulary from this lesson','Apply grammar structures','Write in complete sentences','Include at least 5 key words']::text[], ARRAY['Review the vocabulary list before starting','Try to use new grammar structures','Check your word order (verb position)','Practice pronunciation aloud']::text[]);

  insert into public.lesson_homework (lesson_id, title, description, homework_type, tasks, estimated_minutes, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', '📚 Hausaufgabe: A2 Abschlusstest', 'Complete these tasks to reinforce "A2 Abschlusstest".', 'mixed', '[{"description":"Create 10 flashcards from this lesson''s vocabulary — write German on one side, Arabic on the other. Test yourself 3 times."},{"description":"Write 6 sentences about Level Test: 2 statements, 2 questions, 2 negations — all using present_tense."},{"description":"Record yourself reading the dialogue aloud. Listen to the recording and note 3 things to improve."},{"description":"Find 3 real German websites, videos, or articles about Level Test. Note 5 new words you discovered."}]', 50, 1);

  insert into public.lesson_reviews (lesson_id, summary, key_points, grammar_summary, vocabulary_focus, common_mistakes_summary, tips) values
  ('00000000-0000-4000-a000-0000657f392e', '🎯 Great work! In this lesson you learned 72 new words about Level Test. You practiced present_tense — an important grammar topic for A2 level. You read a text, listened to a dialogue, and practiced speaking and writing. Keep going!', '["72 vocabulary items about Level Test","present_tense — grammar explanation and practice","Reading comprehension: text about Level Test","Listening comprehension: dialogue about Level Test","Speaking practice: roleplay/discussion about Level Test","Writing task: text about Level Test"]', '[{"title":"A2 Abschlusstest Review","summary":"present_tense — the main grammar focus. Focus on understanding when to use this structure and forming basic sentences."}]', ARRAY['die Reise (trip)','der Zug (train)','das Ticket (ticket)','der Bahnhof (train station)','der Flughafen (airport)']::text[], ARRAY['Don''t translate from Arabic word-for-word — German has different sentence structure','Learn every noun with its article: NEVER learn "Tisch" alone, always "der Tisch"','Verb always in position 2 in main clauses']::text[], ARRAY['Practice 15-20 minutes daily — consistency beats intensity','Speak out loud: German pronunciation needs muscle memory','Use the new vocabulary within 24 hours or you''ll forget it','Watch German YouTube videos about Level Test for authentic input']::text[]);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'translation', 'Translate to German: "I use the word "trip" in a sentence about Level Test."', '[]', 'Die Reise nach München war schön.', 'Use die  "die Reise" with the correct present_tense form.', 1, 40);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'translation', 'Translate to German: "I use the word "train" in a sentence about Level Test."', '[]', 'Der Zug kommt um 10 Uhr an.', 'Use der  "der Zug" with the correct present_tense form.', 1, 41);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'translation', 'Translate to German: "I use the word "ticket" in a sentence about Level Test."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use das  "das Ticket" with the correct present_tense form.', 1, 42);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Culture: 🇩🇪 Deutsche Kultur: Level Test', 'In Germany, Level Test is approached with typical German directness and efficiency. Germans value clarity over small talk. When discussing Level Test, expect honest feedback and straightforward questions. This is not rudeness — it''s cultural. Arabic speakers often find this too direct at first, but you''ll appreciate it once you get used to it.

في ألمانيا، يتم التعامل مع Level Test بوضوح وكفاءة. الألمان يقدرون الوضوح أكثر من المجاملات. لا تعتبر هذه وقاحة - إنها ثقافة مختلفة.', '["Tip: Always use \"Sie\" (formal) with strangers and colleagues","Tip: Germans appreciate punctuality — arrive 5 minutes early","Tip: Direct feedback is a sign of respect, not criticism","Tip: Prepare factual arguments, not emotional appeals"]', '[]', '[]', 20);
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  ('00000000-0000-4000-a000-0000657f392e', 'Common Mistakes for Arabic Speakers', 'Common mistakes Arabic speakers make with this topic and how to fix them.', '[]', '[]', '[{"mistake":"Using \"reisen\" instead of \"fahren\" for specific trips","correction":"reisen = general travel, fahren = specific journey by vehicle","explanation":"Arabic \"saafara\" covers both. German distinguishes between abstract and concrete travel."},{"mistake":"Using the wrong article (der/die/das) for nouns","correction":"Learn each noun with its article as one piece","explanation":"Arabic has no articles for nouns without gender connection"}]', 30);

end $$;
