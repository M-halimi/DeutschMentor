-- ============================================================================
-- SEED: A2 (Elementary) - 6 modules
-- Generated curriculum following CEFR standards
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Module 1: Essen und Trinken
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('A2', 'Essen und Trinken', 'Lerne, über Essen, Trinken und Mahlzeiten zu sprechen. Bestelle im Restaurant und koche mit deutschen Rezepten.', '["Essen und Getränke auf Deutsch benennen können","Im Restaurant bestellen und bezahlen können","Das Perfekt mit haben und sein verwenden","Dativobjekte bei indirekten Objekten nutzen","Mengenangaben wie viel, wenig, etwas, kein korrekt anwenden"]', 1, 5.0, true)
  returning id into m_id;

  -- Lesson 1.1: Lebensmittel und Nahrungsmittel
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Lebensmittel und Nahrungsmittel', 'Die wichtigsten Lebensmittel und ihre Artikel lernen', 'Essen und Trinken', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Brot', 'خبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein frisches Brot vom Bäcker.', 'I buy fresh bread from the baker.', 1),
  (l_id, 'der Käse', 'جبن', 'cheese', 'der', 'die Käse', 'noun', 'Der Käse aus Deutschland ist sehr lecker.', 'Cheese from Germany is very tasty.', 2),
  (l_id, 'die Wurst', 'سجق/نقانق', 'sausage', 'die', 'die Würste', 'noun', 'In Deutschland gibt es viele verschiedene Wurstsorten.', 'In Germany there are many different types of sausage.', 3),
  (l_id, 'das Obst', 'فاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund und schmeckt gut.', 'Fruit is healthy and tastes good.', 4),
  (l_id, 'das Gemüse', 'خضروات', 'vegetables', 'das', NULL, 'noun', 'Wir sollten jeden Tag Gemüse essen.', 'We should eat vegetables every day.', 5),
  (l_id, 'das Fleisch', 'لحم', 'meat', 'das', NULL, 'noun', 'Mein Bruder isst kein Fleisch, er ist Vegetarier.', 'My brother does not eat meat, he is a vegetarian.', 6),
  (l_id, 'der Fisch', 'سمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch im Restaurant ist sehr frisch.', 'The fish in the restaurant is very fresh.', 7),
  (l_id, 'der Reis', 'أرز', 'rice', 'der', NULL, 'noun', 'Der Reis ist eine wichtige Beilage in vielen Gerichten.', 'Rice is an important side dish in many dishes.', 8),
  (l_id, 'die Nudeln', 'معكرونة', 'pasta/noodles', 'die', 'die Nudeln', 'noun', 'Die Nudeln mit Tomatensoße schmecken hervorragend.', 'The pasta with tomato sauce tastes excellent.', 9),
  (l_id, 'die Butter', 'زبدة', 'butter', 'die', NULL, 'noun', 'Ich streiche Butter auf mein Brot.', 'I spread butter on my bread.', 10),
  (l_id, 'das Ei', 'بيضة', 'egg', 'das', 'die Eier', 'noun', 'Zum Frühstück esse ich ein weiches Ei.', 'For breakfast I eat a soft-boiled egg.', 11),
  (l_id, 'die Milch', 'حليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist im Kühlschrank.', 'The milk is in the refrigerator.', 12),
  (l_id, 'der Zucker', 'سكر', 'sugar', 'der', NULL, 'noun', 'Ich trinke meinen Kaffee ohne Zucker.', 'I drink my coffee without sugar.', 13),
  (l_id, 'das Salz', 'ملح', 'salt', 'das', NULL, 'noun', 'Bitte geben Sie mir etwas Salz und Pfeffer.', 'Please give me some salt and pepper.', 14);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Bestimmte und unbestimmte Artikel', 'Im Deutschen gibt es bestimmte Artikel (der, die, das) und unbestimmte Artikel (ein, eine, ein). Für arabische Lernende: Ähnlich wie im Arabischen wird der Artikel vor das Nomen gesetzt, aber es gibt drei Genera (Maskulinum, Femininum, Neutrum).', '[{"rule":"Der bestimmte Artikel zeigt an, dass etwas bekannt oder spezifisch ist.","note":"Nominativ: der (m), die (f), das (n)"},{"rule":"Der unbestimmte Artikel zeigt an, dass etwas neu oder unbekannt ist.","note":"ein (m/n), eine (f) – im Plural gibt es keinen unbestimmten Artikel"},{"rule":"Im Deutschen gibt es drei Artikel: der (maskulin), die (feminin), das (neutrum).","note":"Lerne jedes Nomen mit seinem Artikel!"},{"rule":"Der Plural wird oft durch Endungen wie -e, -er, -en oder Umlaut gebildet.","note":"z.B. der Tisch – die Tische, das Kind – die Kinder"}]', '[{"german":"Der Käse ist frisch.","arabic":"الجبن طازج.","english":"The cheese is fresh."},{"german":"Ich kaufe einen Käse.","arabic":"أشتري جبنة.","english":"I buy a cheese."},{"german":"Das Brot vom Bäcker ist lecker.","arabic":"خبز الخباز لذيذ.","english":"The bread from the baker is tasty."},{"german":"Hast du ein Ei für mich?","arabic":"هل لديك بيضة لي؟","english":"Do you have an egg for me?"},{"german":"Die Milch ist im Kühlschrank.","arabic":"الحليب في الثلاجة.","english":"The milk is in the refrigerator."}]', '[{"mistake":"Ich habe Brot gekauft. (ohne Artikel)","correction":"Ich habe ein Brot gekauft. oder Ich habe das Brot gekauft.","explanation":"Im Deutschen braucht man oft einen Artikel, anders als im Arabischen."},{"mistake":"Der Milch ist kalt.","correction":"Die Milch ist kalt.","explanation":"Milch ist feminin (die), nicht maskulin (der)."},{"mistake":"Ich möchte eine Käse.","correction":"Ich möchte einen Käse.","explanation":"Käse ist maskulin, also heißt es \"einen Käse\" im Akkusativ."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist "der Käse" auf Arabisch?', '["جبن","خبز","حليب","زبدة"]', 'جبن', 'Der Käse bedeutet auf Arabisch الجبن.', 1, 1),
  (l_id, 'fill_gap', '_____ Brot ist sehr frisch. (bestimmter Artikel, Nominativ)', '["Der","Die","Das","Den"]', 'Das', 'Brot ist Neutrum, also "Das Brot".', 1, 2),
  (l_id, 'multiple_choice', 'Was ist der richtige Artikel für "Milch"?', '["der","die","das","den"]', 'die', 'Milch ist feminin: die Milch.', 1, 3),
  (l_id, 'translation', 'Übersetze ins Deutsche: "I eat bread."', '["Ich esse Brot.","Ich trinke Brot.","Ich koche Brot.","Ich kaufe Brot."]', 'Ich esse Brot.', '"Ich esse" bedeutet "I eat", "Brot" bedeutet "bread".', 1, 4),
  (l_id, 'fill_gap', 'Er kauft _____ Käse. (unbestimmter Artikel, Akkusativ)', '["ein","eine","einen","einer"]', 'einen', 'Käse ist maskulin, und im Akkusativ wird "ein" zu "einen".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Gemüse"?', '["اللحم","الخضروات","الفاكهة","الخبز"]', 'الخضروات', 1, 1),
  (l_id, 'multiple_choice', 'Welcher Artikel ist korrekt für "Wurst"?', '["der","die","das","den"]', 'die', 1, 2),
  (l_id, 'true_false', '"Der Zucker" bedeutet auf Arabisch "ملح".', '["Richtig","Falsch"]', 'Falsch', 1, 3),
  (l_id, 'fill_blank', 'Das Gegenteil von "süß" ist _____.', '["salzig","sauer","bitter","scharf"]', 'salzig', 1, 4),
  (l_id, 'multiple_choice', 'Was ist der Plural von "das Ei"?', '["die Eis","die Eier","die Eien","die Eie"]', 'die Eier', 1, 5),
  (l_id, 'true_false', '"Fisch" ist maskulin.', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 1.2: Getränke und Mahlzeiten
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Getränke und Mahlzeiten', 'Getränke und die Mahlzeiten des Tages auf Deutsch kennenlernen', 'Essen und Trinken', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Wasser', 'ماء', 'water', 'das', NULL, 'noun', 'Ich möchte ein Glas Wasser, bitte.', 'I would like a glass of water, please.', 1),
  (l_id, 'der Kaffee', 'قهوة', 'coffee', 'der', 'die Kaffees', 'noun', 'Am Morgen trinke ich immer einen Kaffee.', 'In the morning I always drink a coffee.', 2),
  (l_id, 'der Tee', 'شاي', 'tea', 'der', 'die Tees', 'noun', 'Möchtest du einen Tee mit Zitrone?', 'Would you like a tea with lemon?', 3),
  (l_id, 'der Saft', 'عصير', 'juice', 'der', 'die Säfte', 'noun', 'Der Apfelsaft ist frisch gepresst.', 'The apple juice is freshly squeezed.', 4),
  (l_id, 'das Bier', 'بيرة', 'beer', 'das', 'die Biere', 'noun', 'In Deutschland trinkt man viel Bier.', 'In Germany people drink a lot of beer.', 5),
  (l_id, 'der Wein', 'نبيذ', 'wine', 'der', 'die Weine', 'noun', 'Der Rotwein passt gut zum Steak.', 'The red wine goes well with the steak.', 6),
  (l_id, 'das Frühstück', 'فطور', 'breakfast', 'das', 'die Frühstücke', 'noun', 'Das Frühstück gibt es von 7 bis 10 Uhr.', 'Breakfast is available from 7 to 10 o''clock.', 7),
  (l_id, 'das Mittagessen', 'غداء', 'lunch', 'das', 'die Mittagessen', 'noun', 'Wann ist das Mittagessen fertig?', 'When is lunch ready?', 8),
  (l_id, 'das Abendessen', 'عشاء', 'dinner', 'das', 'die Abendessen', 'noun', 'Zum Abendessen gibt es heute Suppe.', 'For dinner there is soup today.', 9),
  (l_id, 'der Hunger', 'جوع', 'hunger', 'der', NULL, 'noun', 'Ich habe großen Hunger, ich habe den ganzen Tag nichts gegessen.', 'I am very hungry, I have not eaten all day.', 10),
  (l_id, 'der Durst', 'عطش', 'thirst', 'der', NULL, 'noun', 'Nach dem Sport habe ich großen Durst.', 'After sports I am very thirsty.', 11),
  (l_id, 'die Suppe', 'شوربة/حساء', 'soup', 'die', 'die Suppen', 'noun', 'Die Tomatensuppe ist sehr lecker.', 'The tomato soup is very tasty.', 12),
  (l_id, 'der Nachtisch', 'حلوى/تحلية', 'dessert', 'der', 'die Nachtische', 'noun', 'Als Nachtisch möchte ich einen Kuchen.', 'For dessert I would like a cake.', 13),
  (l_id, 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Kann ich bitte die Speisekarte sehen?', 'Can I see the menu, please?', 14);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Mengenangaben: viel, wenig, etwas, kein', 'Mengenangaben helfen uns, über Quantitäten zu sprechen. "Viel" bedeutet eine große Menge, "wenig" eine kleine Menge, "etwas" eine unbestimmte Menge, und "kein" verneint ein Nomen.', '[{"rule":"\"viel\" wird bei nicht zählbaren Nomen im Singular verwendet.","note":"viel Wasser, viel Zeit, viel Geld"},{"rule":"\"viele\" wird bei zählbaren Nomen im Plural verwendet.","note":"viele Äpfel, viele Menschen, viele Häuser"},{"rule":"\"wenig\" (Singular) und \"wenige\" (Plural) funktionieren wie viel/viele.","note":"wenig Salz, wenige Fehler"},{"rule":"\"etwas\" bedeutet \"a little / some\" und ist unveränderlich.","note":"etwas Brot, etwas Geld, etwas Zeit"},{"rule":"\"kein\" verneint Nomen, ähnlich wie \"nicht\" bei Verben.","note":"kein Brot, keine Milch, keine Eier"}]', '[{"german":"Ich habe viel Hunger.","arabic":"لدي جوع كبير.","english":"I am very hungry."},{"german":"Ich möchte etwas Wasser, bitte.","arabic":"أريد قليلاً من الماء، من فضلك.","english":"I would like some water, please."},{"german":"Wir haben wenig Zeit.","arabic":"لدينا وقت قليل.","english":"We have little time."},{"german":"Er hat keine Milch gekauft.","arabic":"لم يشتر حليباً.","english":"He did not buy any milk."},{"german":"Ich esse viele Äpfel.","arabic":"أكل الكثير من التفاح.","english":"I eat many apples."}]', '[{"mistake":"Ich möchte viel Wasser. (meaning \"some water\")","correction":"Ich möchte etwas Wasser.","explanation":"\"Viel Wasser\" bedeutet \"a lot of water\", für \"some water\" verwendet man \"etwas Wasser\"."},{"mistake":"Ich habe nicht Hunger.","correction":"Ich habe keinen Hunger.","explanation":"Bei Nomen verwendet man \"kein\" zur Verneinung, nicht \"nicht\"."},{"mistake":"Wir haben viele Zeit.","correction":"Wir haben viel Zeit.","explanation":"Zeit ist nicht zählbar, daher \"viel Zeit\" (Singular)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Abendessen"?', '["الفطور","الغداء","العشاء","الوجبة الخفيفة"]', 'العشاء', '"Das Abendessen" ist die Mahlzeit am Abend.', 1, 1),
  (l_id, 'fill_gap', 'Ich möchte _____ Wasser, bitte. (some)', '["viel","wenig","etwas","kein"]', 'etwas', '"Etwas Wasser" bedeutet "some water".', 1, 2),
  (l_id, 'translation', 'Übersetze: "I am thirsty."', '["Ich habe Durst.","Ich habe Hunger.","Ich möchte essen.","Ich mag Wasser."]', 'Ich habe Durst.', 'Im Deutschen sagt man "Ich habe Durst" (I have thirst).', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich habe keine Hunger.","Ich habe kein Hunger.","Ich habe keinen Hunger.","Ich habe nicht Hunger."]', 'Ich habe keinen Hunger.', 'Hunger ist maskulin, also "keinen Hunger" im Akkusativ.', 1, 4),
  (l_id, 'fill_gap', 'Wir haben _____ Zeit. (a little)', '["viele","wenig","viel","keine"]', 'wenig', '"Wenig Zeit" bedeutet "little time".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Speisekarte"?', '["فاتورة المطعم","قائمة الطعام","بطاقة الائتمان","وصفة طبخ"]', 'قائمة الطعام', 1, 1),
  (l_id, 'true_false', '"Der Saft" ist ein Getränk.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'multiple_choice', 'Welches Wort bedeutet "من فضلك" im Restaurant?', '["Danke","Tschüss","Bitte","Hallo"]', 'Bitte', 1, 3),
  (l_id, 'fill_blank', '"Ich habe _____." bedeutet "I am hungry."', '["Durst","Hunger","Appetit","Lust"]', 'Hunger', 1, 4),
  (l_id, 'multiple_choice', 'Was ist "der Wein"?', '["جعة","نبيذ","عصير","ماء"]', 'نبيذ', 1, 5),
  (l_id, 'true_false', '"Das Frühstück" ist die erste Mahlzeit am Tag.', '["Richtig","Falsch"]', 'Richtig', 1, 6);

  -- Lesson 1.3: Perfekt mit haben und sein
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Perfekt mit haben und sein', 'Das Perfekt lernen: Vergangenes mit "haben" oder "sein" ausdrücken', 'Essen und Trinken', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Ich koche heute Abend Spaghetti.', 'I am cooking spaghetti tonight.', 1),
  (l_id, 'essen', 'يأكل', 'to eat', NULL, NULL, 'verb', 'Wir essen zusammen zu Abend.', 'We are having dinner together.', 2),
  (l_id, 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Er trinkt gerne Kaffee.', 'He likes to drink coffee.', 3),
  (l_id, 'kaufen', 'يشتري', 'to buy', NULL, NULL, 'verb', 'Sie kauft auf dem Markt ein.', 'She buys groceries at the market.', 4),
  (l_id, 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich bezahle mit Karte.', 'I pay by card.', 5),
  (l_id, 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Wir bestellen zwei Pizza.', 'We order two pizzas.', 6),
  (l_id, 'das Rezept', 'وصفة طبخ', 'recipe', 'das', 'die Rezepte', 'noun', 'Das Rezept ist einfach und schnell.', 'The recipe is simple and quick.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Perfekt mit haben und sein', 'Das Perfekt ist eine Vergangenheitsform im Deutschen. Es wird mit den Hilfsverben "haben" oder "sein" und dem Partizip Perfekt gebildet. Die meisten Verben bilden das Perfekt mit "haben". Verben der Bewegung oder Zustandsänderung bilden das Perfekt mit "sein".', '[{"rule":"Die meisten Verben bilden das Perfekt mit \"haben\".","note":"haben + Partizip Perfekt: Ich habe gegessen."},{"rule":"Verben der Bewegung (gehen, fahren, kommen) bilden das Perfekt mit \"sein\".","note":"sein + Partizip Perfekt: Ich bin gegangen."},{"rule":"Verben der Zustandsänderung (aufwachen, sterben) bilden das Perfekt mit \"sein\".","note":"Er ist aufgewacht."},{"rule":"Das Partizip Perfekt wird bei schwachen Verben mit ge- + Stamm + -t gebildet.","note":"kochen – gekocht, kaufen – gekauft"},{"rule":"Bei starken Verben ändert sich der Stamm: ge- + Stamm (verändert) + -en.","note":"essen – gegessen, trinken – getrunken"},{"rule":"Verben auf -ieren bilden das Partizip ohne ge-.","note":"studieren – studiert, probieren – probiert"},{"rule":"Trennbare Verben: ge- steht zwischen Präfix und Stamm.","note":"einkaufen – eingekauft, aufräumen – aufgeräumt"}]', '[{"german":"Ich habe gestern Pizza gegessen.","arabic":"أكلت بيتزا أمس.","english":"I ate pizza yesterday."},{"german":"Sie hat Wasser getrunken.","arabic":"شربت ماءً.","english":"She drank water."},{"german":"Wir sind nach Hause gegangen.","arabic":"ذهبنا إلى المنزل.","english":"We went home."},{"german":"Er ist mit dem Bus gefahren.","arabic":"ركب الحافلة.","english":"He went by bus."},{"german":"Hast du das Rezept probiert?","arabic":"هل جربت الوصفة؟","english":"Did you try the recipe?"}]', '[{"mistake":"Ich habe nach Hause gegangen.","correction":"Ich bin nach Hause gegangen.","explanation":"\"Gehen\" ist ein Verb der Bewegung und braucht \"sein\" im Perfekt."},{"mistake":"Er hat gefahren.","correction":"Er ist gefahren.","explanation":"\"Fahren\" drückt Bewegung aus und wird mit \"sein\" konjugiert."},{"mistake":"Ich habe gemusst zum Arzt gehen.","correction":"Ich habe zum Arzt gehen müssen.","explanation":"Modalverben im Perfekt bilden einen doppelten Infinitiv."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich _____ gestern Fisch _____. (essen – Perfekt)', '["habe ... gegessen","bin ... gegessen","habe ... geessen","bin ... geessen"]', 'habe ... gegessen', '"Essen" verwendet "haben" und das Partizip ist "gegessen".', 1, 1),
  (l_id, 'multiple_choice', 'Welches Hilfsverb braucht "gehen"?', '["haben","sein","werden","können"]', 'sein', '"Gehen" ist ein Verb der Bewegung und braucht "sein".', 1, 2),
  (l_id, 'fill_gap', 'Wir _____ im Restaurant _____. (bezahlen)', '["haben ... bezahlt","sind ... bezahlt","haben ... bezahltet","sind ... bezahltet"]', 'haben ... bezahlt', '"Bezahlen" verwendet "haben", das Partizip ist "bezahlt".', 1, 3),
  (l_id, 'translation', 'Übersetze: "She bought bread."', '["Sie hat Brot gekauft.","Sie ist Brot gekauft.","Sie hatte Brot gekauft.","Sie kaufte Brot."]', 'Sie hat Brot gekauft.', '"Kaufen" ist regelmäßig mit "haben": hat gekauft.', 1, 4),
  (l_id, 'multiple_choice', 'Was ist das Partizip von "trinken"?', '["getrinkt","trunken","getrunken","getrinken"]', 'getrunken', '"Trinken" ist ein starkes Verb: trinken – getrunken.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist das Partizip von "kochen"?', '["gekocht","kochet","gekochen","kochen"]', 'gekocht', 1, 1),
  (l_id, 'true_false', '"Fahren" bildet das Perfekt mit "haben".', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Ich _____ einen Kaffee getrunken. (haben oder sein)', '["habe","bin","hat","ist"]', 'habe', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich bin gegessen.","Ich habe gegessen.","Ich sein gegessen.","Ich hat gegessen."]', 'Ich habe gegessen.', 1, 4),
  (l_id, 'true_false', '"Studieren" bildet das Partizip mit "gestudiert".', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'multiple_choice', 'Was ist das Partizip von "einkaufen"?', '["gekauftein","eingekauft","einkauft","einkaufen"]', 'eingekauft', 1, 6),
  (l_id, 'fill_blank', 'Wir _____ gestern im Restaurant gewesen.', '["haben","sind","hat","seid"]', 'sind', 1, 7);

  -- Lesson 1.4: Im Restaurant
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Im Restaurant', 'Ein Gespräch im Restaurant lesen und verstehen – Bestellung und Bezahlung', 'Essen und Trinken', 'reading', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Kellner', 'النادل', 'waiter', 'der', 'die Kellner', 'noun', 'Der Kellner bringt die Speisekarte.', 'The waiter brings the menu.', 1),
  (l_id, 'die Kellnerin', 'النادلة', 'waitress', 'die', 'die Kellnerinnen', 'noun', 'Die Kellnerin fragt nach unseren Wünschen.', 'The waitress asks for our wishes.', 2),
  (l_id, 'die Vorspeise', 'مقبلات', 'starter/appetizer', 'die', 'die Vorspeisen', 'noun', 'Als Vorspeise nehme ich einen Salat.', 'As a starter I will have a salad.', 3),
  (l_id, 'das Hauptgericht', 'الطبق الرئيسي', 'main course', 'das', 'die Hauptgerichte', 'noun', 'Das Hauptgericht ist Schnitzel mit Pommes.', 'The main course is schnitzel with fries.', 4),
  (l_id, 'die Rechnung', 'الفاتورة', 'bill/check', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte!', 'The bill, please!', 5),
  (l_id, 'das Trinkgeld', 'البقشيش', 'tip', 'das', 'die Trinkgelder', 'noun', 'In Deutschland gibt man etwa 10% Trinkgeld.', 'In Germany you give about 10% tip.', 6),
  (l_id, 'die Bestellung', 'الطلب', 'order', 'die', 'die Bestellungen', 'noun', 'Ich möchte eine Bestellung aufgeben.', 'I would like to place an order.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Dativ bei indirekten Objekten', 'Der Dativ wird im Deutschen für das indirekte Objekt verwendet. "Wem bekommt etwas? Wem hilfst du?" Der Dativ antwortet auf die Frage "Wem?". Im Restaurant: "Der Kellner bringt DEM Gast die Speisekarte." Für arabische Lernende: Der Dativ ähnelt der Präposition "لـ" (li-) im Arabischen.', '[{"rule":"Der Dativ antwortet auf die Frage \"Wem?\" (لمن؟).","note":"Wem gibst du das Brot? – Ich gebe dem Kind das Brot."},{"rule":"Bestimmter Artikel im Dativ: dem (m/n), der (f), den (Plural + -n am Nomen).","note":"dem Mann, der Frau, den Kindern"},{"rule":"Unbestimmter Artikel im Dativ: einem (m/n), einer (f).","note":"einem Freund, einer Freundin"},{"rule":"Viele Verben verlangen den Dativ: geben, bringen, zeigen, helfen, danken.","note":"Ich helfe dem Freund. (nicht: den Freund)"},{"rule":"Die Präpositionen \"mit\", \"nach\", \"aus\", \"zu\", \"von\", \"bei\" regieren den Dativ.","note":"mit dem Bus, nach dem Essen, aus der Schule"}]', '[{"german":"Der Kellner bringt dem Gast das Essen.","arabic":"النادل يحضر الطعام للضيف.","english":"The waiter brings the food to the guest."},{"german":"Ich helfe der Kellnerin.","arabic":"أساعد النادلة.","english":"I help the waitress."},{"german":"Kannst du mir das Wasser geben?","arabic":"هل يمكنك إعطائي الماء؟","english":"Can you give me the water?"},{"german":"Wir danken dem Koch für das Essen.","arabic":"نشكر الطباخ على الطعام.","english":"We thank the chef for the food."},{"german":"Er zeigt dem Freund die Speisekarte.","arabic":"يظهر قائمة الطعام لصديقه.","english":"He shows the menu to his friend."}]', '[{"mistake":"Ich helfe den Mann.","correction":"Ich helfe dem Mann.","explanation":"\"Helfen\" verlangt den Dativ: dem Mann, nicht den Mann (Akkusativ)."},{"mistake":"Er gibt das Buch der Kind.","correction":"Er gibt das Buch dem Kind.","explanation":"Kind ist Neutrum, also Dativ = dem Kind."},{"mistake":"Ich danke die Frau.","correction":"Ich danke der Frau.","explanation":"\"Danken\" verlangt den Dativ: der Frau, nicht die Frau."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Rechnung"?', '["الفاتورة","قائمة الطعام","البقشيش","الطلب"]', 'الفاتورة', '"Die Rechnung" ist die Rechnung, die man bezahlt.', 1, 1),
  (l_id, 'fill_gap', 'Der Kellner bringt _____ Gast das Essen. (dem/den/der)', '["dem","den","der","das"]', 'dem', 'Gast ist maskulin, Dativ = dem Gast.', 1, 2),
  (l_id, 'translation', 'Übersetze: "I thank the waiter."', '["Ich danke der Kellner.","Ich danke den Kellner.","Ich danke dem Kellner.","Ich danke die Kellner."]', 'Ich danke dem Kellner.', '"Danken" verlangt den Dativ: dem Kellner.', 1, 3),
  (l_id, 'multiple_choice', 'Was sagt man im Restaurant, wenn man bestellen möchte?', '["Ich möchte bestellen, bitte.","Ich bin satt.","Die Rechnung, bitte.","Guten Appetit!"]', 'Ich möchte bestellen, bitte.', 'Höfliche Bestellung: "Ich möchte bestellen, bitte."', 1, 4),
  (l_id, 'fill_gap', 'Kannst du _____ das Salz geben? (mir/mich)', '["mir","mich","ich","mein"]', 'mir', '"Mir" ist der Dativ von "ich". "Jemandem etwas geben".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Vorspeise"?', '["الطبق الرئيسي","المقبلات","الحلوى","المشروب"]', 'المقبلات', 1, 1),
  (l_id, 'true_false', '"Der Kellner" ist weiblich.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', '_____ gibt man in Deutschland etwa 10%.', '["Das Trinkgeld","Die Rechnung","Die Bestellung","Der Service"]', 'Das Trinkgeld', 1, 3),
  (l_id, 'multiple_choice', 'Wie fragt man nach der Rechnung?', '["Die Speisekarte, bitte!","Die Rechnung, bitte!","Das Essen, bitte!","Das Wasser, bitte!"]', 'Die Rechnung, bitte!', 1, 4),
  (l_id, 'true_false', '"Helfen" verlangt den Akkusativ.', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'multiple_choice', 'Was ist der Dativ von "der Mann"?', '["den Mann","dem Mann","der Mann","des Mannes"]', 'dem Mann', 1, 6),
  (l_id, 'fill_blank', 'Ich bringe _____ Kind das Spielzeug. (Dativ)', '["dem","den","der","das"]', 'dem', 1, 7);

  -- Lesson 1.5: Wiederholung: Essen und Trinken
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Essen und Trinken', 'Alle Themen aus Modul 1 wiederholen und festigen', 'Essen und Trinken', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Geschmack', 'الطعم/المذاق', 'taste/flavor', 'der', 'die Geschmäcker', 'noun', 'Das Essen hat einen guten Geschmack.', 'The food has a good taste.', 1),
  (l_id, 'die Zutat', 'المكون/المقادير', 'ingredient', 'die', 'die Zutaten', 'noun', 'Welche Zutaten braucht man für den Kuchen?', 'Which ingredients do you need for the cake?', 2),
  (l_id, 'schmecken', 'يكون طعمه', 'to taste', NULL, NULL, 'verb', 'Die Suppe schmeckt ausgezeichnet.', 'The soup tastes excellent.', 3),
  (l_id, 'probieren', 'يتذوق/يجرب', 'to try (food)', NULL, NULL, 'verb', 'Darf ich mal probieren?', 'May I try some?', 4),
  (l_id, 'decken', 'يجهز/يرتب', 'to set (the table)', NULL, NULL, 'verb', 'Kannst du den Tisch decken?', 'Can you set the table?', 5),
  (l_id, 'die Tasse', 'فنجان', 'cup', 'die', 'die Tassen', 'noun', 'Eine Tasse Kaffee, bitte.', 'A cup of coffee, please.', 6),
  (l_id, 'der Teller', 'طبق', 'plate', 'der', 'die Teller', 'noun', 'Der Teller ist heiß.', 'The plate is hot.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Perfekt, Dativ und Mengenangaben', 'In dieser Lektion wiederholen wir die wichtigsten Grammatikthemen aus Modul 1: das Perfekt mit haben/sein, den Dativ bei indirekten Objekten und die Mengenangaben.', '[{"rule":"Perfekt: haben/sein + Partizip Perfekt. Bewegung → sein, andere → haben.","note":"Ich habe gegessen. Ich bin gegangen."},{"rule":"Dativ: Wem? – dem/einem (m/n), der/einer (f), den/-- (Pl).","note":"Ich gebe dem Kind einen Apfel."},{"rule":"Mengen: viel/wenig + Singular, viele/wenige + Plural.","note":"viel Wasser, viele Äpfel"},{"rule":"\"etwas\" ist unveränderlich. \"kein\" verneint Nomen.","note":"etwas Brot, keine Milch"}]', '[{"german":"Ich habe dem Koch geholfen.","arabic":"ساعدت الطباخ.","english":"I helped the chef."},{"german":"Sie ist nach Hause gegangen.","arabic":"ذهبت إلى المنزل.","english":"She went home."},{"german":"Wir haben viel Gemüse gekauft.","arabic":"اشترينا الكثير من الخضروات.","english":"We bought a lot of vegetables."},{"german":"Wir haben wenig Zeit für das Frühstück.","arabic":"لدينا وقت قليل للفطور.","english":"We have little time for breakfast."}]', '[{"mistake":"Ich habe das Kind geholfen.","correction":"Ich habe dem Kind geholfen.","explanation":"\"Helfen\" verlangt den Dativ: dem Kind."},{"mistake":"Wir haben nach Hause gefahren.","correction":"Wir sind nach Hause gefahren.","explanation":"\"Fahren\" ist Bewegung → sein."},{"mistake":"Ich habe kein Hunger.","correction":"Ich habe keinen Hunger.","explanation":"Hunger ist maskulin → keinen Hunger (Akkusativ)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist das Partizip von "probieren"?', '["probiert","geprobiert","probierten","probieret"]', 'probiert', 'Verben auf -ieren bilden das Partizip ohne "ge-": probiert.', 1, 1),
  (l_id, 'fill_gap', 'Er _____ dem Kellner ein Trinkgeld _____. (geben – Perfekt)', '["hat ... gegeben","ist ... gegeben","hat ... gegebt","ist ... gegebt"]', 'hat ... gegeben', '"Geben" ist starkes Verb: hat gegeben.', 1, 2),
  (l_id, 'translation', 'Übersetze: "We have little milk."', '["Wir haben wenig Milch.","Wir haben viel Milch.","Wir haben keine Milch.","Wir haben etwas Milch."]', 'Wir haben wenig Milch.', '"Wenig" = little/few.', 1, 3),
  (l_id, 'fill_gap', 'Ich danke _____ Freundin für das Geschenk. (Dativ)', '["der","die","den","dem"]', 'der', 'Freundin ist feminin, Dativ = der Freundin.', 1, 4),
  (l_id, 'multiple_choice', 'Was bedeutet "Guten Appetit!"?', '["شهية طيبة!","إلى اللقاء!","صباح الخير!","تصبح على خير!"]', 'شهية طيبة!', '"Guten Appetit!" wünscht man vor dem Essen.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich habe gefahren.","Ich bin gefahren.","Ich habe gefahrt.","Ich sein gefahren."]', 'Ich bin gefahren.', 1, 1),
  (l_id, 'true_false', '"Etwas" ist eine Mengenangabe.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Im Dativ heißt es "_____ Mann" (the man).', '["dem","den","der","die"]', 'dem', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Plural von "das Ei"?', '["die Eien","die Eier","die Eire","die Eie"]', 'die Eier', 1, 4),
  (l_id, 'true_false', '"Schmecken" bedeutet "يشتري".', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'multiple_choice', 'Wie sagt man "tip" auf Deutsch?', '["das Geld","das Trinkgeld","die Rechnung","die Bestellung"]', 'das Trinkgeld', 1, 6);

  -- Lesson 1.6: Test: Essen und Trinken
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Essen und Trinken', 'Abschlusstest für Modul 1', 'Essen und Trinken', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Zutat"?', '["الطبق","المكون","المذاق","المطعم"]', 'المكون', '"Die Zutat" ist eine Zutat beim Kochen.', 1, 1),
  (l_id, 'fill_gap', 'Gestern _____ ich Fisch _____. (essen – Perfekt)', '["habe ... gegessen","bin ... gegessen","habe ... geessen","bin ... geessen"]', 'habe ... gegessen', '"Essen" verwendet "haben", Partizip ist "gegessen".', 1, 2),
  (l_id, 'translation', 'Übersetze: "I would like some water."', '["Ich möchte etwas Wasser.","Ich möchte viel Wasser.","Ich möchte kein Wasser.","Ich möchte wenig Wasser."]', 'Ich möchte etwas Wasser.', '"Etwas Wasser" bedeutet "some water".', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Artikel ist korrekt im Dativ: "Ich helfe _____ Mann."', '["der","den","dem","die"]', 'dem', 'Mann ist maskulin, Dativ: dem Mann.', 1, 4),
  (l_id, 'fill_gap', 'Er _____ mit dem Bus _____. (fahren – Perfekt)', '["ist ... gefahren","hat ... gefahren","ist ... gefahrt","hat ... gefahrt"]', 'ist ... gefahren', '"Fahren" ist ein Verb der Bewegung → sein + gefahren.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist "das Mittagessen"?', '["الفطور","الغداء","العشاء","الوجبة"]', 'الغداء', 1, 1),
  (l_id, 'true_false', 'Im Perfekt: "Ich bin gegessen" ist korrekt.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Der Kellner bringt _____ die Rechnung. (uns – Dativ)', '["unser","uns","wir","unsere"]', 'uns', 1, 3),
  (l_id, 'multiple_choice', 'Welches Wort bedeutet "kein" auf Englisch?', '["some","a lot","no/not any","little"]', 'no/not any', 1, 4),
  (l_id, 'true_false', '"Der Nachtisch" kommt nach dem Hauptgericht.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist der Dativ von "die Frau"?', '["der Frau","den Frau","die Frau","dem Frau"]', 'der Frau', 1, 6),
  (l_id, 'fill_blank', 'Das Gegenteil von "viel" ist _____.', '["etwas","wenig","kein","alles"]', 'wenig', 1, 7),
  (l_id, 'multiple_choice', 'Was bedeutet "probieren"?', '["يطبخ","يشتري","يتذوق","يدفع"]', 'يتذوق', 1, 8);

  -- Module 2: Kleidung und Mode
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('A2', 'Kleidung und Mode', 'Kleidungsstücke benennen, Farben beschreiben und über Mode sprechen. Einkaufsgespräche führen und Vergleiche anstellen.', '["Kleidungsstücke und Accessoires auf Deutsch benennen können","Über Farben, Größen und Materialien sprechen können","Akkusativ und Dativ bei Artikeln korrekt verwenden","Komparativ und Superlativ bilden und anwenden","dieser, jeder und alle korrekt deklinieren"]', 2, 5.0, true)
  returning id into m_id;

  -- Lesson 2.1: Kleidungsstücke
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Kleidungsstücke', 'Die wichtigsten Kleidungsstücke und ihre Artikel lernen', 'Kleidung und Mode', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Hemd', 'قميص', 'shirt', 'das', 'die Hemden', 'noun', 'Er trägt ein weißes Hemd zur Arbeit.', 'He wears a white shirt to work.', 1),
  (l_id, 'die Hose', 'بنطال/سروال', 'pants/trousers', 'die', 'die Hosen', 'noun', 'Diese Hose ist zu lang, ich brauche eine kürzere.', 'These pants are too long, I need a shorter pair.', 2),
  (l_id, 'der Rock', 'تنورة', 'skirt', 'der', 'die Röcke', 'noun', 'Der Rock ist sehr modisch.', 'The skirt is very fashionable.', 3),
  (l_id, 'das Kleid', 'فستان', 'dress', 'das', 'die Kleider', 'noun', 'Sie trägt ein rotes Kleid zur Party.', 'She wears a red dress to the party.', 4),
  (l_id, 'der Anzug', 'بدلة', 'suit', 'der', 'die Anzüge', 'noun', 'Der Anzug kostet 500 Euro.', 'The suit costs 500 euros.', 5),
  (l_id, 'die Jacke', 'جاكيت/سترة', 'jacket', 'die', 'die Jacken', 'noun', 'Zieh bitte eine Jacke an, es ist kalt.', 'Please put on a jacket, it is cold.', 6),
  (l_id, 'der Mantel', 'معطف', 'coat', 'der', 'die Mäntel', 'noun', 'Im Winter braucht man einen warmen Mantel.', 'In winter you need a warm coat.', 7),
  (l_id, 'der Pullover', 'كنزة صوف', 'sweater', 'der', 'die Pullover', 'noun', 'Der blaue Pullover gefällt mir sehr gut.', 'I really like the blue sweater.', 8),
  (l_id, 'die Jeans', 'جينز/بنطال جينز', 'jeans', 'die', 'die Jeans', 'noun', 'Ich trage am liebsten Jeans.', 'I prefer to wear jeans.', 9),
  (l_id, 'die Shorts', 'شورت', 'shorts', 'die', 'die Shorts', 'noun', 'Im Sommer trage ich Shorts und ein T-Shirt.', 'In summer I wear shorts and a T-shirt.', 10),
  (l_id, 'die Socke', 'جورب', 'sock', 'die', 'die Socken', 'noun', 'Ich brauche neue Socken.', 'I need new socks.', 11),
  (l_id, 'der Schuh', 'حذاء', 'shoe', 'der', 'die Schuhe', 'noun', 'Diese Schuhe sind sehr bequem.', 'These shoes are very comfortable.', 12),
  (l_id, 'das T-Shirt', 'تي شيرت', 'T-shirt', 'das', 'die T-Shirts', 'noun', 'Das T-Shirt hat eine schöne Farbe.', 'The T-shirt has a nice color.', 13),
  (l_id, 'die Mütze', 'قبعة صوف', 'beanie/cap', 'die', 'die Mützen', 'noun', 'Im Winter trägt man eine warme Mütze.', 'In winter you wear a warm hat.', 14);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Akkusativ vs. Dativ: Artikel und Deklination', 'Im Deutschen ändern sich die Artikel je nach Fall (Kasus). Der Akkusativ (Wen/Was?) und der Dativ (Wem?) sind die beiden wichtigsten Objekt-Fälle. Besonders bei Kleidung verwenden wir oft den Akkusativ ("Ich kaufe einen Rock") und den Dativ ("Die Jacke gefällt der Frau").', '[{"rule":"Akkusativ (Wen/Was?): wird für das direkte Objekt verwendet.","note":"m: den/einen, f: die/eine, n: das/ein, Pl: die/--"},{"rule":"Dativ (Wem?): wird für das indirekte Objekt verwendet.","note":"m: dem/einem, f: der/einer, n: dem/einem, Pl: den/-- + -n am Nomen"},{"rule":"Nach bestimmten Präpositionen kommt immer Akkusativ oder Dativ.","note":"Akk: durch, für, ohne, um, gegen. Dat: aus, bei, mit, nach, von, zu"},{"rule":"Der unbestimmte Artikel hat im Akkusativ Maskulinum die Form \"einen\".","note":"Ich kaufe einen Rock. (der Rock → einen Rock)"},{"rule":"Der bestimmte Artikel im Dativ Plural: \"den\" + Nomen mit Endung -n.","note":"den Kindern, den Frauen, den Männern"}]', '[{"german":"Ich kaufe einen Rock.","arabic":"أشتري تنورة.","english":"I buy a skirt."},{"german":"Die Jacke gefällt der Frau.","arabic":"السترة تعجب المرأة.","english":"The jacket pleases the woman."},{"german":"Er trägt ein Hemd und eine Hose.","arabic":"يرتدي قميصاً وبنطالاً.","english":"He wears a shirt and pants."},{"german":"Ich helfe dem Mann bei der Auswahl.","arabic":"أساعد الرجل في الاختيار.","english":"I help the man with the selection."},{"german":"Sie kauft den Kindern neue Schuhe.","arabic":"تشتري أحذية جديدة للأطفال.","english":"She buys new shoes for the children."}]', '[{"mistake":"Ich kaufe ein Rock.","correction":"Ich kaufe einen Rock.","explanation":"Rock ist maskulin, im Akkusativ wird \"ein\" zu \"einen\"."},{"mistake":"Das Kleid gefällt den Frau.","correction":"Das Kleid gefällt der Frau.","explanation":"Frau ist feminin Singular, Dativ = der Frau (nicht den)."},{"mistake":"Er hilft den Mann.","correction":"Er hilft dem Mann.","explanation":"\"Helfen\" verlangt Dativ: dem Mann, nicht den Mann."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Rock"?', '["بنطال","تنورة","جاكيت","قميص"]', 'تنورة', '"Der Rock" ist ein Kleidungsstück für Frauen, eine تنورة.', 1, 1),
  (l_id, 'fill_gap', 'Ich kaufe _____ Pullover. (einen/ein/eine)', '["einen","ein","eine","einer"]', 'einen', 'Pullover ist maskulin, Akkusativ: einen Pullover.', 1, 2),
  (l_id, 'translation', 'Übersetze: "She wears a dress."', '["Sie trägt ein Kleid.","Sie trägt einen Kleid.","Sie trägt eine Kleid.","Sie trägt das Kleid."]', 'Sie trägt ein Kleid.', 'Kleid ist Neutrum: "ein Kleid" im Akkusativ.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Plural von "der Mantel"?', '["die Mantels","die Mäntel","die Mantele","die Mänteler"]', 'die Mäntel', 'Mantel → Mäntel (Umlaut + -el bleibt).', 1, 4),
  (l_id, 'fill_gap', 'Die Hose gefällt _____ Mann nicht. (Dativ)', '["der","den","dem","die"]', 'dem', 'Mann ist maskulin, Dativ: dem Mann.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Jacke"?', '["جاكيت","قميص","بنطال","حذاء"]', 'جاكيت', 1, 1),
  (l_id, 'true_false', '"Das Hemd" ist ein Kleidungsstück.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Ich kaufe _____ Schuh. (einen/ein/eine)', '["ein","einen","eine","einer"]', 'einen', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Dativ von "die Hose"?', '["der Hose","den Hose","die Hose","dem Hose"]', 'der Hose', 1, 4),
  (l_id, 'true_false', '"Der Pullover" ist feminin.', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'multiple_choice', 'Welches Wort bedeutet "shoes"?', '["die Socken","die Schuhe","die Shorts","die Strümpfe"]', 'die Schuhe', 1, 6);

  -- Lesson 2.2: Farben, Größen und Materialien
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Farben, Größen und Materialien', 'Farben, Größenangaben und Materialien für Kleidung lernen', 'Kleidung und Mode', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'rot', 'أحمر', 'red', NULL, NULL, 'adjective', 'Das rote Kleid ist sehr elegant.', 'The red dress is very elegant.', 1),
  (l_id, 'blau', 'أزرق', 'blue', NULL, NULL, 'adjective', 'Der blaue Pullover gefällt mir.', 'I like the blue sweater.', 2),
  (l_id, 'grün', 'أخضر', 'green', NULL, NULL, 'adjective', 'Die grüne Hose ist zu groß.', 'The green pants are too big.', 3),
  (l_id, 'gelb', 'أصفر', 'yellow', NULL, NULL, 'adjective', 'Das gelbe T-Shirt ist aus Baumwolle.', 'The yellow T-shirt is made of cotton.', 4),
  (l_id, 'schwarz', 'أسود', 'black', NULL, NULL, 'adjective', 'Schwarze Schuhe passen zu allem.', 'Black shoes go with everything.', 5),
  (l_id, 'weiß', 'أبيض', 'white', NULL, NULL, 'adjective', 'Ein weißes Hemd ist klassisch.', 'A white shirt is classic.', 6),
  (l_id, 'die Größe', 'المقاس/الحجم', 'size', 'die', 'die Größen', 'noun', 'Welche Größe haben Sie?', 'What size do you wear?', 7),
  (l_id, 'die Baumwolle', 'قطن', 'cotton', 'die', NULL, 'noun', 'Baumwolle ist atmungsaktiv und angenehm zu tragen.', 'Cotton is breathable and comfortable to wear.', 8),
  (l_id, 'die Wolle', 'صوف', 'wool', 'die', NULL, 'noun', 'Der Pullover aus Wolle ist sehr warm.', 'The wool sweater is very warm.', 9),
  (l_id, 'die Seide', 'حرير', 'silk', 'die', NULL, 'noun', 'Die Seidenbluse ist sehr elegant.', 'The silk blouse is very elegant.', 10),
  (l_id, 'das Leder', 'جلد', 'leather', 'das', NULL, 'noun', 'Diese Jacke ist aus Leder.', 'This jacket is made of leather.', 11),
  (l_id, 'die Kleidung', 'ملابس', 'clothing', 'die', NULL, 'noun', 'Die Kleidung in diesem Geschäft ist modern.', 'The clothing in this store is modern.', 12),
  (l_id, 'die Mode', 'موضة/أزياء', 'fashion', 'die', 'die Moden', 'noun', 'Die Mode ändert sich jedes Jahr.', 'Fashion changes every year.', 13),
  (l_id, 'passen', 'يناسب/يكون مقاسه مناسباً', 'to fit', NULL, NULL, 'verb', 'Die Hose passt mir perfekt.', 'The pants fit me perfectly.', 14);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Komparativ und Superlativ', 'Der Komparativ vergleicht zwei Dinge (größer, kleiner), der Superlativ drückt die höchste Stufe aus (am größten, der größte). Im Deutschen wird der Komparativ mit "-er" und der Superlativ mit "am ... -sten" oder "der/die/das ... -ste" gebildet.', '[{"rule":"Komparativ: Adjektiv + -er. Einige Vokale bekommen einen Umlaut.","note":"groß → größer, klein → kleiner, jung → jünger"},{"rule":"Superlativ mit \"am\": am + Adjektiv + -sten.","note":"am größten, am kleinsten, am jüngsten"},{"rule":"Superlativ mit Artikel: der/die/das + Adjektiv + -ste.","note":"der größte, die kleinste, das beste"},{"rule":"Unregelmäßige Formen: gut → besser → am besten, viel → mehr → am meisten.","note":"Diese Formen muss man auswendig lernen."},{"rule":"Adjektive auf -t, -d, -s, -ß, -z, -sch: Superlativ mit -esten.","note":"kalt → am kältesten, heiß → am heißesten"}]', '[{"german":"Dieser Rock ist billiger als der andere.","arabic":"هذه التنورة أرخص من الأخرى.","english":"This skirt is cheaper than the other one."},{"german":"Der blaue Pullover ist schöner als der grüne.","arabic":"الكنزة الزرقاء أجمل من الخضراء.","english":"The blue sweater is nicer than the green one."},{"german":"Dieses Kleid ist am schönsten.","arabic":"هذا الفستان هو الأجمل.","english":"This dress is the prettiest."},{"german":"Das ist der beste Anzug im Geschäft.","arabic":"هذه أفضل بدلة في المحل.","english":"That is the best suit in the store."},{"german":"Der Mantel ist wärmer als die Jacke.","arabic":"المعطف أدفأ من الجاكيت.","english":"The coat is warmer than the jacket."}]', '[{"mistake":"Dieser Rock ist guter als der andere.","correction":"Dieser Rock ist besser als der andere.","explanation":"\"Gut\" ist unregelmäßig: gut – besser – am besten."},{"mistake":"Der Pullover ist am billigste.","correction":"Der Pullover ist am billigsten.","explanation":"Superlativ mit \"am\" braucht die Endung -en: am billigsten."},{"mistake":"Diese Schuhe sind groß als jene.","correction":"Diese Schuhe sind größer als jene.","explanation":"Komparativ braucht die Endung -er: größer + \"als\" (than)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Größe"?', '["اللون","المقاس","المادة","السعر"]', 'المقاس', '"Die Größe" ist die Größe oder Konfektionsgröße.', 1, 1),
  (l_id, 'fill_gap', 'Dieser Mantel ist _____ als die Jacke. (teuer – Komparativ)', '["teurer","teuerer","teuere","am teuersten"]', 'teurer', 'teuer → teurer (das -e- entfällt).', 1, 2),
  (l_id, 'translation', 'Übersetze: "The red dress is the most beautiful."', '["Das rote Kleid ist am schönsten.","Das rote Kleid ist schöner.","Das rote Kleid ist schön.","Das rote Kleid ist die Schönste."]', 'Das rote Kleid ist am schönsten.', 'Superlativ: am schönsten.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Superlativ von "gut"?', '["am gutsten","am besten","am besseren","am gutesten"]', 'am besten', 'gut – besser – am besten (unregelmäßig).', 1, 4),
  (l_id, 'fill_gap', 'Baumwolle ist _____ als Polyester. (bequem)', '["bequemer","bequemster","am bequemsten","bequemere"]', 'bequemer', 'Komparativ: bequem + -er = bequemer.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "gelb"?', '["أزرق","أخضر","أصفر","أحمر"]', 'أصفر', 1, 1),
  (l_id, 'true_false', '"Wolle" kommt von Schafen.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Der Komparativ von "klein" ist _____.', '["kleiner","kleinste","kleinen","kleines"]', 'kleiner', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Superlativ von "groß"?', '["am größten","am großen","am größesten","am großten"]', 'am größten', 1, 4),
  (l_id, 'true_false', '"Seide" ist ein Material aus Pflanzen.', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'multiple_choice', 'Welche Farbe ist "schwarz"?', '["أبيض","أسود","رمادي","بني"]', 'أسود', 1, 6);

  -- Lesson 2.3: Akkusativ, Dativ und dieser/jeder/alle
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Akkusativ, Dativ und dieser/jeder/alle', 'Die Deklination von dieser, jeder und alle in Akkusativ und Dativ', 'Kleidung und Mode', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'dieser', 'هذا', 'this', NULL, NULL, 'pronoun', 'Dieser Rock gefällt mir sehr.', 'This skirt pleases me very much.', 1),
  (l_id, 'jeder', 'كل', 'every/each', NULL, NULL, 'pronoun', 'Jeder Mensch braucht Kleidung.', 'Every person needs clothing.', 2),
  (l_id, 'alle', 'جميع/كل', 'all', NULL, NULL, 'pronoun', 'Alle Kleider sind im Sale.', 'All dresses are on sale.', 3),
  (l_id, 'anprobieren', 'يجرب (الملابس)', 'to try on', NULL, NULL, 'verb', 'Kann ich die Hose anprobieren?', 'Can I try on the pants?', 4),
  (l_id, 'der Preis', 'السعر', 'price', 'der', 'die Preise', 'noun', 'Der Preis ist sehr günstig.', 'The price is very reasonable.', 5),
  (l_id, 'der Rabatt', 'الخصم', 'discount', 'der', 'die Rabatte', 'noun', 'Auf diese Schuhe gibt es 30% Rabatt.', 'There is 30% discount on these shoes.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Dieser, jeder, alle – Deklination im Akkusativ und Dativ', 'Die Pronomen "dieser" (this), "jeder" (every/each) und "alle" (all) werden wie der bestimmte Artikel dekliniert. Für arabische Lernende: Dies entspricht den Demonstrativpronomen (هذا, diese) und dem Allquantor (كل, جميع) im Arabischen.', '[{"rule":"\"Dieser\" wird wie der bestimmte Artikel dekliniert.","note":"Nom: dieser (m), diese (f), dieses (n), diese (Pl)"},{"rule":"Akkusativ: diesen (m), diese (f), dieses (n), diese (Pl).","note":"Ich kaufe diesen Rock. (m)"},{"rule":"Dativ: diesem (m/n), dieser (f), diesen (Pl + -n am Nomen).","note":"mit diesem Mantel, mit dieser Jacke, mit diesen Schuhen"},{"rule":"\"Jeder\" wird nur im Singular verwendet: jeder (m), jede (f), jedes (n).","note":"jeder Mann, jede Frau, jedes Kind"},{"rule":"\"Alle\" wird nur im Plural verwendet: alle (Nom/Akk), allen (Dat).","note":"alle Kleider, allen Kindern"}]', '[{"german":"Ich kaufe diesen Rock.","arabic":"أشتري هذه التنورة.","english":"I buy this skirt."},{"german":"Mit diesem Mantel bin ich zufrieden.","arabic":"أنا راضٍ عن هذا المعطف.","english":"I am satisfied with this coat."},{"german":"Jede Frau möchte schöne Kleidung.","arabic":"كل امرأة تريد ملابس جميلة.","english":"Every woman wants beautiful clothes."},{"german":"Alle Kleider sind im Angebot.","arabic":"جميع الفساتين في العرض.","english":"All dresses are on sale."},{"german":"Er hilft allen Kunden.","arabic":"يساعد جميع الزبائن.","english":"He helps all customers."}]', '[{"mistake":"Ich kaufe dieser Rock.","correction":"Ich kaufe diesen Rock.","explanation":"Nach \"kaufen\" (Akkusativ) braucht \"dieser\" die Endung -en: diesen."},{"mistake":"Mit diesen Mantel.","correction":"Mit diesem Mantel.","explanation":"Nach \"mit\" (Dativ) braucht \"dieser\" die Endung -em: diesem."},{"mistake":"Jeder Kleider sind schön.","correction":"Alle Kleider sind schön.","explanation":"\"Jeder\" ist Singular. Für Plural verwendet man \"alle\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist der Akkusativ von "dieser" (maskulin)?', '["dieser","diesen","diesem","dieses"]', 'diesen', 'Maskulin Akkusativ: diesen (wie den).', 1, 1),
  (l_id, 'fill_gap', 'Ich helfe _____ Kunden. (dieser – Dativ, Plural)', '["dieser","diesen","diesem","diese"]', 'diesen', 'Dativ Plural: diesen Kunden.', 1, 2),
  (l_id, 'translation', 'Übersetze: "Every child likes this jacket."', '["Jedes Kind mag diese Jacke.","Jeder Kind mag diese Jacke.","Alle Kind mag diese Jacke.","Jede Kind mag diese Jacke."]', 'Jedes Kind mag diese Jacke.', 'Kind ist Neutrum → jedes Kind.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Dativ von "jede" (feminin)?', '["jeder","jede","jeden","jedes"]', 'jeder', 'Feminin Dativ: jeder (wie der).', 1, 4),
  (l_id, 'fill_gap', '_____ Schuhe gefallen mir. (dieser – Nominativ Plural)', '["Diese","Dieser","Diesen","Diesem"]', 'Diese', 'Nominativ Plural: Diese Schuhe gefallen mir.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist "dieser" im Akkusativ Neutrum?', '["dieser","diese","dieses","diesen"]', 'dieses', 1, 1),
  (l_id, 'true_false', '"Jeder" wird nur im Singular verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', '_____ Jacke ist sehr schön. (diese/dieser/diesen)', '["Diese","Dieser","Diesen","Dieses"]', 'Diese', 1, 3),
  (l_id, 'multiple_choice', 'Was ist "alle" im Dativ?', '["alle","allen","allem","aller"]', 'allen', 1, 4),
  (l_id, 'true_false', '"Dieser" wird wie der unbestimmte Artikel dekliniert.', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'fill_blank', 'Ich kaufe _____ Pullover. (dieser – Akkusativ)', '["diesen","dieser","diesem","diese"]', 'diesen', 1, 6);

  -- Lesson 2.4: Einkaufsgespräch
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Einkaufsgespräch', 'Ein Einkaufsgespräch auf Deutsch führen – Kleidung kaufen und vergleichen', 'Kleidung und Mode', 'speaking', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Umkleidekabine', 'غرفة القياس', 'fitting room', 'die', 'die Umkleidekabinen', 'noun', 'Die Umkleidekabinen sind hinten links.', 'The fitting rooms are at the back left.', 1),
  (l_id, 'die Kasse', 'الخزينة/مكان الدفع', 'checkout/cash register', 'die', 'die Kassen', 'noun', 'Bitte zahlen Sie an der Kasse.', 'Please pay at the checkout.', 2),
  (l_id, 'das Sonderangebot', 'عرض خاص', 'special offer', 'das', 'die Sonderangebote', 'noun', 'Heute gibt es ein Sonderangebot für Jacken.', 'Today there is a special offer on jackets.', 3),
  (l_id, 'die Quittung', 'الإيصال', 'receipt', 'die', 'die Quittungen', 'noun', 'Kann ich bitte die Quittung haben?', 'Can I have the receipt, please?', 4),
  (l_id, 'das Geschäft', 'المتجر/المحل', 'store/shop', 'das', 'die Geschäfte', 'noun', 'Das Geschäft hat bis 20 Uhr geöffnet.', 'The store is open until 8 PM.', 5),
  (l_id, 'der Verkäufer', 'البائع', 'salesperson (male)', 'der', 'die Verkäufer', 'noun', 'Der Verkäufer hilft mir bei der Auswahl.', 'The salesperson helps me with the selection.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Höfliche Fragen und Bitten im Geschäft', 'Im Geschäft verwendet man bestimmte höfliche Fragen und Bitten. "Könnte ich...?", "Darf ich...?", "Hätten Sie...?" sind typische Formulierungen. Die Höflichkeitsform im Deutschen verwendet den Konjunktiv II (könnte, hätte, würde).', '[{"rule":"\"Könnte ich...?\" ist die höfliche Form von \"Kann ich...?\"","note":"Könnte ich die Hose anprobieren?"},{"rule":"\"Ich hätte gern...\" bedeutet \"I would like...\"","note":"Ich hätte gern diesen Pullover in Grün."},{"rule":"\"Darf ich...?\" fragt um Erlaubnis, besonders beim Anprobieren.","note":"Darf ich in die Umkleidekabine?"},{"rule":"Nach Größen fragt man mit \"Welche Größe haben Sie?\"","note":"Haben Sie diesen Rock in Größe 38?"},{"rule":"Nach dem Preis fragt man: \"Was kostet das?\"","note":"Was kostet diese Jacke?"}]', '[{"german":"Könnte ich diese Jacke anprobieren?","arabic":"هل يمكنني تجربة هذه السترة؟","english":"Could I try on this jacket?"},{"german":"Ich hätte gern diesen Pullover in Blau.","arabic":"أريد هذه الكنزة باللون الأزرق.","english":"I would like this sweater in blue."},{"german":"Haben Sie das auch in Größe 40?","arabic":"هل لديكم هذا بمقاس 40 أيضاً؟","english":"Do you have this in size 40 as well?"},{"german":"Was kostet dieser Rock?","arabic":"كم سعر هذه التنورة؟","english":"How much is this skirt?"},{"german":"Können Sie mir helfen?","arabic":"هل يمكنك مساعدتي؟","english":"Can you help me?"}]', '[{"mistake":"Ich will diese Jacke anprobieren.","correction":"Könnte ich diese Jacke anprobieren?","explanation":"\"Könnte ich\" ist höflicher als \"Ich will\"."},{"mistake":"Haben Sie Größe?","correction":"Welche Größe haben Sie?","explanation":"Die Frage braucht \"welche\" oder einen bestimmten Artikel."},{"mistake":"Wie viel kosten? (unvollständig)","correction":"Wie viel kostet das?","explanation":"Die Frage braucht ein Subjekt (das, dieser Rock etc.)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Umkleidekabine"?', '["غرفة القياس","الخزينة","المتجر","الرف"]', 'غرفة القياس', '"Die Umkleidekabine" ist der Raum zum Anprobieren.', 1, 1),
  (l_id, 'fill_gap', '_____ ich diese Hose anprobieren? (höfliche Frage)', '["Könnte","Will","Muss","Soll"]', 'Könnte', '"Könnte ich" ist die höfliche Form.', 1, 2),
  (l_id, 'translation', 'Übersetze: "How much does this jacket cost?"', '["Was kostet diese Jacke?","Wie kostet diese Jacke?","Was kosten diese Jacke?","Wie viel Jacke?"]', 'Was kostet diese Jacke?', '"Was kostet...?" ist die Standardfrage nach dem Preis.', 1, 3),
  (l_id, 'multiple_choice', 'Was sagt der Verkäufer, wenn er helfen möchte?', '["Kann ich Ihnen helfen?","Was willst du?","Geh weg!","Kann ich bezahlen?"]', 'Kann ich Ihnen helfen?', '"Kann ich Ihnen helfen?" ist die höfliche Frage des Verkäufers.', 1, 4),
  (l_id, 'fill_gap', 'Ich hätte gern _____ Rock in Rot. (dieser – Akkusativ)', '["dieser","diesen","diesem","diese"]', 'diesen', 'Akkusativ maskulin: diesen Rock.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Wie fragt man höflich nach dem Preis?', '["Was kostet das?","Gib mir den Preis!","Ich will zahlen.","Das ist teuer."]', 'Was kostet das?', 1, 1),
  (l_id, 'true_false', '"Die Kasse" ist der Ort, wo man bezahlt.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', '_____ ich Ihnen helfen? (Kann/Könnte/Können)', '["Kann","Könnte","Können","Kannst"]', 'Kann', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "das Sonderangebot"?', '["الخصم","العرض الخاص","السعر","الجودة"]', 'العرض الخاص', 1, 4),
  (l_id, 'true_false', '"Anprobieren" bedeutet "يشتري".', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'multiple_choice', 'Wie sagt man "receipt" auf Deutsch?', '["die Rechnung","die Quittung","die Kasse","das Geld"]', 'die Quittung', 1, 6),
  (l_id, 'fill_blank', 'Haben Sie das _____ Größe 40? (Präposition)', '["in","mit","auf","bei"]', 'in', 1, 7);

  -- Lesson 2.5: Wiederholung: Kleidung und Mode
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Kleidung und Mode', 'Alle Themen aus Modul 2 wiederholen und festigen', 'Kleidung und Mode', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'modern', 'عصري/مودرن', 'modern/fashionable', NULL, NULL, 'adjective', 'Diese Jacke ist sehr modern.', 'This jacket is very fashionable.', 1),
  (l_id, 'tragen', 'يرتدي', 'to wear', NULL, NULL, 'verb', 'Was trägst du heute?', 'What are you wearing today?', 2),
  (l_id, 'gefallen', 'يعجب', 'to like/to please', NULL, NULL, 'verb', 'Die Schuhe gefallen mir sehr.', 'I really like the shoes.', 3),
  (l_id, 'der Schal', 'وشاح', 'scarf', 'der', 'die Schals', 'noun', 'Im Winter trägt man einen warmen Schal.', 'In winter you wear a warm scarf.', 4),
  (l_id, 'der Gürtel', 'حزام', 'belt', 'der', 'die Gürtel', 'noun', 'Der Gürtel passt perfekt zu der Hose.', 'The belt matches the pants perfectly.', 5),
  (l_id, 'billig', 'رخيص', 'cheap', NULL, NULL, 'adjective', 'Dieser Pullover war sehr billig.', 'This sweater was very cheap.', 6),
  (l_id, 'teuer', 'غالي', 'expensive', NULL, NULL, 'adjective', 'Der Mantel ist zu teuer für mich.', 'The coat is too expensive for me.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Akkusativ/Dativ, Komparativ/Superlativ, dieser/jeder/alle', 'Wir wiederholen die wichtigsten Grammatikthemen aus Modul 2: den Unterschied zwischen Akkusativ und Dativ bei Artikeln, den Komparativ und Superlativ von Adjektiven, und die Deklination von dieser, jeder und alle.', '[{"rule":"Akkusativ = direktes Objekt (Wen/Was?). Dativ = indirektes Objekt (Wem?).","note":"Ich kaufe den Rock. Ich helfe dem Mann."},{"rule":"Komparativ: Adjektiv + -er (+ Umlaut bei a, o, u).","note":"billig – billiger, groß – größer"},{"rule":"Superlativ: am + Adjektiv + -sten oder der/die/das + -ste.","note":"am billigsten, der billigste"},{"rule":"dieser/jeder/alle werden wie der bestimmte Artikel dekliniert.","note":"dieser – diesen – diesem, jeder – jeden – jedem, alle – alle – allen"}]', '[{"german":"Dieser Rock ist billiger als die Hose.","arabic":"هذه التنورة أرخص من البنطال.","english":"This skirt is cheaper than the pants."},{"german":"Die Jacke ist am teuersten.","arabic":"السترة هي الأغلى.","english":"The jacket is the most expensive."},{"german":"Ich kaufe diesen Pullover.","arabic":"أشتري هذه الكنزة.","english":"I buy this sweater."},{"german":"Jeder Kunde bekommt einen Rabatt.","arabic":"كل زبون يحصل على خصم.","english":"Every customer gets a discount."}]', '[{"mistake":"Ich kaufe dieser Schal.","correction":"Ich kaufe diesen Schal.","explanation":"Schal ist maskulin, Akkusativ: diesen."},{"mistake":"Der Rock ist guter als die Hose.","correction":"Der Rock ist besser als die Hose.","explanation":"\"Gut\" ist unregelmäßig: besser, nicht \"guter\"."},{"mistake":"Alle Kind bekommt ein Geschenk.","correction":"Jedes Kind bekommt ein Geschenk.","explanation":"\"Alle\" ist Plural. Für Singular verwendet man \"jeder/jedes/jede\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist der Superlativ von "teuer"?', '["am teuersten","am teuresten","am teueren","am teursten"]', 'am teuersten', 'teuer → am teuersten (das -e- bleibt).', 1, 1),
  (l_id, 'fill_gap', 'Ich kaufe _____ Mantel. (dieser – Akkusativ)', '["diesen","dieser","diesem","diese"]', 'diesen', 'Maskulin Akkusativ: diesen Mantel.', 1, 2),
  (l_id, 'translation', 'Übersetze: "This dress is more beautiful than that one."', '["Dieses Kleid ist schöner als jenes.","Dieses Kleid ist am schönsten.","Dieses Kleid ist schön.","Dieses Kleid ist schöner wie jenes."]', 'Dieses Kleid ist schöner als jenes.', 'Komparativ + "als" (than).', 1, 3),
  (l_id, 'fill_gap', 'Helfen Sie _____ Kunden? (alle – Dativ)', '["alle","allen","allem","aller"]', 'allen', 'Dativ Plural: allen Kunden.', 1, 4),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich trage einen Schal.","Ich trage eine Schal.","Ich trage ein Schal.","Ich trage der Schal."]', 'Ich trage einen Schal.', 'Schal ist maskulin, Akkusativ: einen Schal.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "gefallen"?', '["يرتدي","يعجب","يشتري","يجرب"]', 'يعجب', 1, 1),
  (l_id, 'true_false', '"Billig" bedeutet "expensive".', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Dieser Rock ist _____ als jener. (schön – Komparativ)', '["schöner","schönster","am schönsten","schönere"]', 'schöner', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Dativ Plural von "alle"?', '["aller","allen","allem","alle"]', 'allen', 1, 4),
  (l_id, 'true_false', '"Der Gürtel" ist ein Accessoire.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich danke den Verkäufer.","Ich danke der Verkäufer.","Ich danke dem Verkäufer.","Ich danke die Verkäufer."]', 'Ich danke dem Verkäufer.', 1, 6);

  -- Lesson 2.6: Test: Kleidung und Mode
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Kleidung und Mode', 'Abschlusstest für Modul 2', 'Kleidung und Mode', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Seide"?', '["قطن","صوف","حرير","جلد"]', 'حرير', '"Seide" ist ein edles Material aus Seidenraupen.', 1, 1),
  (l_id, 'fill_gap', 'Ich kaufe _____ Rock. (dieser – Akkusativ)', '["diesen","dieser","diesem","diese"]', 'diesen', 'Maskulin Akkusativ: diesen Rock.', 1, 2),
  (l_id, 'translation', 'Übersetze: "This jacket is cheaper than that coat."', '["Diese Jacke ist billiger als jener Mantel.","Diese Jacke ist am billigsten.","Diese Jacke ist billig.","Diese Jacke ist billiger wie jener Mantel."]', 'Diese Jacke ist billiger als jener Mantel.', 'Komparativ billiger + "als".', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Superlativ von "groß"?', '["am größten","am großen","am großten","am größesten"]', 'am größten', 'groß – größer – am größten (Umlaut + -ten).', 1, 4),
  (l_id, 'fill_gap', 'Er hilft _____ Kunden. (alle – Dativ)', '["allen","alle","allem","aller"]', 'allen', 'Dativ Plural: allen Kunden.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Quittung"?', '["الإيصال","الفاتورة","السعر","الخصم"]', 'الإيصال', 1, 1),
  (l_id, 'true_false', '"Jeder" wird im Plural verwendet.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Ich hätte gern _____ Rock in Blau. (dieser – Akkusativ)', '["diesen","dieser","diesem","diese"]', 'diesen', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die Höflichkeitsform von "Kann ich"?', '["Könnte ich","Muss ich","Soll ich","Darf ich"]', 'Könnte ich', 1, 4),
  (l_id, 'true_false', '"Tragen" bedeutet "يرتدي".', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist der Komparativ von "gut"?', '["besser","guter","bestens","besseren"]', 'besser', 1, 6),
  (l_id, 'fill_blank', '_____ Kleider sind im Angebot. (alle – Nominativ)', '["Alle","Allen","Alles","Aller"]', 'Alle', 1, 7),
  (l_id, 'multiple_choice', 'Wie sagt man "to try on" auf Deutsch?', '["anprobieren","einkaufen","verkaufen","tragen"]', 'anprobieren', 1, 8);

  -- Module 3: Körper und Gesundheit
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('A2', 'Körper und Gesundheit', 'Über den Körper, Gesundheit und Krankheit sprechen. Beim Arzt Termine machen und Symptome beschreiben.', '["Körperteile auf Deutsch benennen können","Über Gesundheit und Krankheit sprechen können","Modalverben (müssen, sollen, dürfen, können) korrekt verwenden","Reflexive Verben im Satz anwenden","Den Imperativ bilden und in Anweisungen nutzen"]', 3, 5.0, true)
  returning id into m_id;

  -- Lesson 3.1: Körperteile
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Körperteile', 'Die wichtigsten Körperteile auf Deutsch lernen', 'Körper und Gesundheit', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Kopf', 'رأس', 'head', 'der', 'die Köpfe', 'noun', 'Ich habe Schmerzen im Kopf.', 'I have pain in my head.', 1),
  (l_id, 'das Auge', 'عين', 'eye', 'das', 'die Augen', 'noun', 'Er hat blaue Augen.', 'He has blue eyes.', 2),
  (l_id, 'die Nase', 'أنف', 'nose', 'die', 'die Nasen', 'noun', 'Die Nase läuft, ich bin erkältet.', 'My nose is running, I have a cold.', 3),
  (l_id, 'der Mund', 'فم', 'mouth', 'der', 'die Münder', 'noun', 'Öffnen Sie bitte den Mund.', 'Please open your mouth.', 4),
  (l_id, 'das Ohr', 'أذن', 'ear', 'das', 'die Ohren', 'noun', 'Die Ohren tun mir weh.', 'My ears hurt.', 5),
  (l_id, 'der Arm', 'ذراع', 'arm', 'der', 'die Arme', 'noun', 'Er hat sich den Arm gebrochen.', 'He broke his arm.', 6),
  (l_id, 'das Bein', 'ساق', 'leg', 'das', 'die Beine', 'noun', 'Mein Bein tut weh.', 'My leg hurts.', 7),
  (l_id, 'die Hand', 'يد', 'hand', 'die', 'die Hände', 'noun', 'Wasch dir die Hände vor dem Essen!', 'Wash your hands before eating!', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Reflexive Verben', 'Reflexive Verben sind Verben, bei denen das Subjekt und das Objekt dieselbe Person sind. Das Reflexivpronomen ist "sich" (نفسه). Im Deutschen gibt es echte reflexive Verben (sich waschen) und unechte reflexive Verben. Für arabische Lernende: Diese Konstruktion gibt es auch im Arabischen mit den Reflexivpronomen (نفس-, -ني, etc.).', '[{"rule":"Das Reflexivpronomen \"sich\" ändert sich je nach Person.","note":"ich mich, du dich, er/sie/es sich, wir uns, ihr euch, sie/Sie sich"},{"rule":"Im Akkusativ: mich, dich, sich, uns, euch, sich.","note":"Ich wasche mich. Du wäschst dich."},{"rule":"Im Dativ (bei Verben mit zwei Objekten): mir, dir, sich, uns, euch, sich.","note":"Ich wasche mir die Hände."},{"rule":"Echte reflexive Verben: sich waschen, sich anziehen, sich fühlen, sich setzen.","note":"Diese Verben brauchen immer ein Reflexivpronomen."},{"rule":"Bei Körperpflege verwendet man oft den Dativ + Körperteil im Akkusativ.","note":"Ich putze mir die Zähne. (Dativ: mir, Akkusativ: die Zähne)"}]', '[{"german":"Ich wasche mich jeden Morgen.","arabic":"أغسل نفسي كل صباح.","english":"I wash myself every morning."},{"german":"Er zieht sich warm an.","arabic":"يرتدي ملابس دافئة.","english":"He dresses warmly."},{"german":"Ich putze mir die Zähne.","arabic":"أغسل أسناني.","english":"I brush my teeth."},{"german":"Wie fühlst du dich?","arabic":"كيف تشعر؟","english":"How do you feel?"},{"german":"Setzen Sie sich bitte.","arabic":"اجلس من فضلك.","english":"Please sit down."}]', '[{"mistake":"Ich wasche mein die Hände.","correction":"Ich wasche mir die Hände.","explanation":"Bei Körperteilen verwendet man den Dativ (mir) + Akkusativ (die Hände)."},{"mistake":"Er fühlt ihn krank.","correction":"Er fühlt sich krank.","explanation":"\"Sich fühlen\" ist reflexiv, man braucht \"sich\"."},{"mistake":"Wir waschen unsere die Hände.","correction":"Wir waschen uns die Hände.","explanation":"Das Reflexivpronomen im Dativ ist \"uns\", nicht \"unsere\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Nase"?', '["أنف","فم","أذن","عين"]', 'أنف', '"Die Nase" ist das Geruchsorgan, الأنف.', 1, 1),
  (l_id, 'fill_gap', 'Ich wasche _____ die Hände. (Reflexivpronomen Dativ)', '["mich","mir","sich","mein"]', 'mir', 'Dativ: Ich wasche mir die Hände.', 1, 2),
  (l_id, 'translation', 'Übersetze: "He feels sick."', '["Er fühlt sich krank.","Er fühlt krank.","Er fühlt ihn krank.","Er fühlt es krank."]', 'Er fühlt sich krank.', '"Sich fühlen" ist reflexiv: er fühlt sich.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Plural von "das Auge"?', '["die Augen","die Auges","die Augen","die Auge"]', 'die Augen', 'Der Plural von "das Auge" ist "die Augen".', 1, 4),
  (l_id, 'fill_gap', 'Wie _____ du dich? (fühlen)', '["fühlst","fühlt","fühle","fühlen"]', 'fühlst', 'Du-Form: du fühlst dich.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Kopf"?', '["رأس","يد","قدم","ظهر"]', 'رأس', 1, 1),
  (l_id, 'true_false', '"Die Hand" ist der Plural von "die Hände".', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Ich putze _____ die Zähne. (Reflexivpronomen Dativ)', '["mich","mir","sich","mein"]', 'mir', 1, 3),
  (l_id, 'multiple_choice', 'Was ist das Reflexivpronomen für "er"?', '["mich","dich","sich","uns"]', 'sich', 1, 4),
  (l_id, 'true_false', '"Das Bein" bedeutet "leg" auf Englisch.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich setze mich.","Ich setze mir.","Ich setze dich.","Ich setze sich."]', 'Ich setze mich.', 1, 6);

  -- Lesson 3.2: Krankheiten und Symptome
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Krankheiten und Symptome', 'Über Krankheiten, Symptome und Gesundheitsprobleme sprechen', 'Körper und Gesundheit', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Krankheit', 'المرض', 'illness/disease', 'die', 'die Krankheiten', 'noun', 'Diese Krankheit ist ansteckend.', 'This illness is contagious.', 1),
  (l_id, 'der Schmerz', 'ألم', 'pain', 'der', 'die Schmerzen', 'noun', 'Ich habe starke Schmerzen im Rücken.', 'I have strong pain in my back.', 2),
  (l_id, 'das Fieber', 'حمى/حرارة', 'fever', 'das', NULL, 'noun', 'Das Kind hat 39 Grad Fieber.', 'The child has a fever of 39 degrees.', 3),
  (l_id, 'der Husten', 'سعال', 'cough', 'der', NULL, 'noun', 'Der Husten will einfach nicht aufhören.', 'The cough just will not stop.', 4),
  (l_id, 'der Schnupfen', 'زكام', 'runny nose/cold', 'der', NULL, 'noun', 'Ich habe Schnupfen und kann nichts riechen.', 'I have a runny nose and cannot smell anything.', 5),
  (l_id, 'die Grippe', 'إنفلونزا', 'flu', 'die', 'die Grippen', 'noun', 'Gegen Grippe kann man sich impfen lassen.', 'You can get vaccinated against the flu.', 6),
  (l_id, 'die Erkältung', 'رشح/زكام', 'cold (illness)', 'die', 'die Erkältungen', 'noun', 'Eine Erkältung dauert etwa eine Woche.', 'A cold lasts about a week.', 7),
  (l_id, 'die Tablette', 'قرص/حبة دواء', 'tablet/pill', 'die', 'die Tabletten', 'noun', 'Nehmen Sie dreimal täglich eine Tablette.', 'Take one tablet three times a day.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Modalverben: müssen, sollen, dürfen, können', 'Modalverben verändern die Bedeutung des Hauptverbs. "Müssen" drückt eine Notwendigkeit aus, "sollen" eine Empfehlung, "dürfen" eine Erlaubnis, und "können" eine Fähigkeit oder Möglichkeit. Für arabische Lernende: Modalverben gibt es auch im Arabischen (يجب أن، يستطيع أن، etc.), aber die Satzstellung ist anders – im Deutschen steht das Modalverb an Position 2 und das Hauptverb am Ende.', '[{"rule":"Das Modalverb steht an Position 2, das Hauptverb im Infinitiv am Satzende.","note":"Ich muss zum Arzt gehen. (nicht: Ich muss gehen zum Arzt)"},{"rule":"müssen = must/have to (Notwendigkeit, Zwang).","note":"Ich muss jetzt nach Hause gehen. Du musst diese Medizin nehmen."},{"rule":"sollen = should/be supposed to (Empfehlung, Anweisung).","note":"Du sollst mehr Wasser trinken. Er soll zum Arzt gehen."},{"rule":"dürfen = may/be allowed to (Erlaubnis).","note":"Darf ich hereinkommen? Hier darf man nicht rauchen."},{"rule":"können = can/be able to (Fähigkeit, Möglichkeit).","note":"Ich kann gut schwimmen. Kannst du mir helfen?"},{"rule":"Konjugation: ich kann, du kannst, er kann, wir können, ihr könnt, sie können.","note":"Ähnliche Muster bei müssen (muss, musst) und dürfen (darf, darfst)."}]', '[{"german":"Ich muss zum Arzt gehen.","arabic":"يجب أن أذهب إلى الطبيب.","english":"I must go to the doctor."},{"german":"Du sollst mehr Wasser trinken.","arabic":"يجب أن تشرب المزيد من الماء.","english":"You should drink more water."},{"german":"Darf ich hereinkommen?","arabic":"هل يمكنني الدخول؟","english":"May I come in?"},{"german":"Ich kann heute nicht kommen.","arabic":"لا أستطيع المجيء اليوم.","english":"I cannot come today."},{"german":"Er muss diese Tabletten nehmen.","arabic":"يجب أن يأخذ هذه الأقراص.","english":"He must take these tablets."}]', '[{"mistake":"Ich muss gehen zum Arzt.","correction":"Ich muss zum Arzt gehen.","explanation":"Das Hauptverb (gehen) steht am Ende des Satzes."},{"mistake":"Er könnt schwimmen.","correction":"Er kann schwimmen.","explanation":"Falsche Konjugation: er kann (nicht \"er könnt\")."},{"mistake":"Du darfst nicht rauchen hier. (word order)","correction":"Hier darfst du nicht rauchen. oder Du darfst hier nicht rauchen.","explanation":"Die Negation \"nicht\" steht normalerweise vor dem Hauptverb am Ende."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Husten"?', '["سعال","زكام","حمى","ألم"]', 'سعال', '"Der Husten" ist der Husten, السعال.', 1, 1),
  (l_id, 'fill_gap', 'Ich _____ zum Arzt gehen. (müssen – ich)', '["muss","müsse","müsste","musse"]', 'muss', 'ich muss (Vokalwechsel: müssen → muss).', 1, 2),
  (l_id, 'translation', 'Übersetze: "You should drink more water."', '["Du sollst mehr Wasser trinken.","Du musst mehr Wasser trinken.","Du kannst mehr Wasser trinken.","Du darfst mehr Wasser trinken."]', 'Du sollst mehr Wasser trinken.', '"Sollen" drückt eine Empfehlung aus = should.', 1, 3),
  (l_id, 'multiple_choice', 'Welches Modalverb drückt Erlaubnis aus?', '["müssen","sollen","dürfen","können"]', 'dürfen', '"Dürfen" bedeutet "darf" = Erlaubnis haben.', 1, 4),
  (l_id, 'fill_gap', '_____ du mir helfen? (können – du)', '["Kannst","Könnst","Kann","Können"]', 'Kannst', 'du kannst (können → du kannst).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Fieber"?', '["سعال","حمى","ألم","دوخة"]', 'حمى', 1, 1),
  (l_id, 'true_false', '"Müssen" drückt eine Fähigkeit aus.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Er _____ nicht rauchen. (dürfen – er)', '["darf","dürft","darfst","dürfen"]', 'darf', 1, 3),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich kann schwimmen.","Ich können schwimmen.","Ich kan schwimmen.","Ich kannst schwimmen."]', 'Ich kann schwimmen.', 1, 4),
  (l_id, 'true_false', '"Sollen" drückt eine Empfehlung aus.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist die korrekte Form von "müssen" für "du"?', '["du musst","du müsst","du musstest","du must"]', 'du musst', 1, 6);

  -- Lesson 3.3: Modalverben und Imperativ
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Modalverben und Imperativ', 'Modalverben vertiefen und den Imperativ für Anweisungen lernen', 'Körper und Gesundheit', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Arzt', 'طبيب', 'doctor (male)', 'der', 'die Ärzte', 'noun', 'Der Arzt verschreibt mir Medikamente.', 'The doctor prescribes me medication.', 1),
  (l_id, 'die Ärztin', 'طبيبة', 'doctor (female)', 'die', 'die Ärztinnen', 'noun', 'Die Ärztin untersucht den Patienten.', 'The doctor examines the patient.', 2),
  (l_id, 'das Krankenhaus', 'مستشفى', 'hospital', 'das', 'die Krankenhäuser', 'noun', 'Er musste ins Krankenhaus.', 'He had to go to the hospital.', 3),
  (l_id, 'die Medizin', 'دواء', 'medicine', 'die', 'die Medikamente', 'noun', 'Die Medizin hat mir gut geholfen.', 'The medicine helped me well.', 4),
  (l_id, 'die Untersuchung', 'الفحص', 'examination', 'die', 'die Untersuchungen', 'noun', 'Die Untersuchung dauert etwa 20 Minuten.', 'The examination takes about 20 minutes.', 5),
  (l_id, 'der Termin', 'موعد', 'appointment', 'der', 'die Termine', 'noun', 'Ich habe einen Termin beim Arzt.', 'I have an appointment with the doctor.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Der Imperativ (Befehlsform)', 'Der Imperativ wird für Aufforderungen, Bitten, Anweisungen und Ratschläge verwendet. Es gibt verschiedene Formen je nachdem, wen man anspricht: du, ihr, Sie (Höflichkeitsform). Für arabische Lernende: Der Imperativ im Deutschen ist einfacher als im Arabischen, da es weniger Formen gibt und keine Geschlechterunterscheidung.', '[{"rule":"Imperativ für \"du\": Verb + -e (oft ohne -e), Verbstamm oft mit Umlaut/Änderung.","note":"Geh(e)! Komm(e)! Iss! (von essen). Fahr! (von fahren)."},{"rule":"Imperativ für \"ihr\": Verb + -t (gleiche Form wie ihr im Präsens).","note":"Geht! Kommt! Esst! Fahrt!"},{"rule":"Imperativ für \"Sie\": Verb + -en Sie (Höflichkeitsform).","note":"Gehen Sie! Kommen Sie! Essen Sie! Fahren Sie!"},{"rule":"Trennbare Verben: Das Präfix steht am Ende.","note":"Zieh dich warm an! (sich anziehen). Mach das Licht aus!"},{"rule":"Reflexive Verben im Imperativ: Reflexivpronomen direkt nach dem Verb.","note":"Setz dich! (du). Setzen Sie sich! (Sie). Setzt euch! (ihr)."}]', '[{"german":"Geh zum Arzt!","arabic":"اذهب إلى الطبيب!","english":"Go to the doctor!"},{"german":"Nehmen Sie diese Tabletten!","arabic":"خذ هذه الأقراص!","english":"Take these tablets!"},{"german":"Trink mehr Wasser!","arabic":"اشرب المزيد من الماء!","english":"Drink more water!"},{"german":"Setzen Sie sich bitte.","arabic":"اجلس من فضلك.","english":"Please sit down."},{"german":"Zieht euch warm an!","arabic":"ارتدي ملابس دافئة!","english":"Dress warmly!"}]', '[{"mistake":"Du gehst zum Arzt! (using Präsens for imperative)","correction":"Geh zum Arzt!","explanation":"Der Imperativ verwendet die reine Verbform, nicht die Du-Form."},{"mistake":"Fahrt du!","correction":"Fahr(e) du! (or just: Fahr!)","explanation":"Die Du-Form des Imperativs endet nicht auf -t (das ist die Ihr-Form)."},{"mistake":"Sie gehen nach Hause! (for imperative)","correction":"Gehen Sie nach Hause!","explanation":"Im Höflichkeitsimperativ steht das Verb vor \"Sie\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist der Imperativ (du) von "kommen"?', '["Komm!","Kommt!","Kommen Sie!","Kommst!"]', 'Komm!', 'Du-Imperativ: Komm!', 1, 1),
  (l_id, 'fill_gap', '_____ Sie bitte Platz! (nehmen)', '["Nehmen","Nimm","Nehmt","Nimmt"]', 'Nehmen', 'Höflichkeitsimperativ: Nehmen Sie Platz!', 1, 2),
  (l_id, 'translation', 'Übersetze: "Drink more water!" (du)', '["Trink mehr Wasser!","Trinken Sie mehr Wasser!","Trinkt mehr Wasser!","Trinkst mehr Wasser!"]', 'Trink mehr Wasser!', 'Du-Imperativ: Trink (ohne -e).', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Imperativ (ihr) von "essen"?', '["Iss!","Esst!","Essen Sie!","Isst!"]', 'Esst!', 'Ihr-Imperativ: Esst!', 1, 4),
  (l_id, 'fill_gap', '_____ dich warm an! (ziehen, du)', '["Zieh","Zieht","Ziehen","Ziehst"]', 'Zieh', 'Du-Imperativ von "sich anziehen": Zieh dich an!', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist der Imperativ (Sie) von "gehen"?', '["Geh!","Geht!","Gehen Sie!","Gehst du!"]', 'Gehen Sie!', 1, 1),
  (l_id, 'true_false', 'Der Imperativ für "ihr" endet auf -t.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', '_____ Sie sich bitte! (setzen)', '["Setzen","Setzt","Setz","Sitz"]', 'Setzen', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Imperativ (du) von "fahren"?', '["Fahr!","Fahrt!","Fahren Sie!","Fährst!"]', 'Fahr!', 1, 4),
  (l_id, 'true_false', 'Im Höflichkeitsimperativ steht "Sie" nach dem Verb.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Wie sagt man "Take a seat, please!" formell?', '["Nehmen Sie bitte Platz!","Nimm Platz!","Nehmt Platz!","Nimmt Platz!"]', 'Nehmen Sie bitte Platz!', 1, 6);

  -- Lesson 3.4: Beim Arzt
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Beim Arzt', 'Ein Arztgespräch verstehen und führen – Symptome beschreiben', 'Körper und Gesundheit', 'listening', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Sprechstunde', 'ساعات العمل/الاستشارة', 'consultation hours', 'die', 'die Sprechstunden', 'noun', 'Die Sprechstunde ist von 9 bis 12 Uhr.', 'Consultation hours are from 9 to 12.', 1),
  (l_id, 'die Praxis', 'عيادة', 'practice/surgery', 'die', 'die Praxen', 'noun', 'Die Praxis hat montags geschlossen.', 'The practice is closed on Mondays.', 2),
  (l_id, 'das Rezept', 'روشتة/وصفة طبية', 'prescription', 'das', 'die Rezepte', 'noun', 'Der Arzt schreibt mir ein Rezept aus.', 'The doctor writes me a prescription.', 3),
  (l_id, 'die Versicherungskarte', 'بطاقة التأمين', 'insurance card', 'die', 'die Versicherungskarten', 'noun', 'Bitte geben Sie Ihre Versicherungskarte ab.', 'Please hand in your insurance card.', 4),
  (l_id, 'das Wartezimmer', 'غرفة الانتظار', 'waiting room', 'das', 'die Wartezimmer', 'noun', 'Bitte warten Sie im Wartezimmer.', 'Please wait in the waiting room.', 5),
  (l_id, 'die Krankmeldung', 'إجازة مرضية', 'sick note', 'die', 'die Krankmeldungen', 'noun', 'Ich brauche eine Krankmeldung für die Arbeit.', 'I need a sick note for work.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Modalverben im ärztlichen Kontext und Perfekt der Modalverben', 'Modalverben werden oft in ärztlichen Gesprächen verwendet. Der Arzt sagt, was der Patient tun "muss" oder "soll". Im Perfekt haben Modalverben eine besondere Form: doppelter Infinitiv. Für arabische Lernende: Diese doppelte Infinitiv-Konstruktion gibt es im Arabischen nicht.', '[{"rule":"Modalverben im Perfekt: haben + Infinitiv + Infinitiv des Modalverbs.","note":"Ich habe gehen müssen. (nicht: ich habe gemusst)"},{"rule":"Im Hauptsatz: Modalverb an Position 2, Hauptverb am Ende im Infinitiv.","note":"Der Arzt sagt, ich soll mehr trinken."},{"rule":"\"Nicht dürfen\" = Verbot, \"nicht müssen\" = keine Notwendigkeit.","note":"Du darfst nicht rauchen. Du musst nicht kommen."},{"rule":"Modalverben im Nebensatz: Das Modalverb steht am Ende im Infinitiv.","note":"..., weil ich zum Arzt gehen muss."}]', '[{"german":"Ich habe zum Arzt gehen müssen.","arabic":"اضطررت للذهاب إلى الطبيب.","english":"I had to go to the doctor."},{"german":"Der Arzt sagt, ich soll mehr schlafen.","arabic":"الطبيب يقول إنني يجب أن أنام أكثر.","english":"The doctor says I should sleep more."},{"german":"Sie dürfen heute nicht arbeiten.","arabic":"لا يُسمح لك بالعمل اليوم.","english":"You are not allowed to work today."},{"german":"Ich konnte gestern nicht kommen.","arabic":"لم أستطع المجيء أمس.","english":"I could not come yesterday."},{"german":"Muss ich Medikamente nehmen?","arabic":"هل يجب أن أتناول أدوية؟","english":"Do I have to take medication?"}]', '[{"mistake":"Ich habe gemusst zum Arzt gehen.","correction":"Ich habe zum Arzt gehen müssen.","explanation":"Modalverben im Perfekt: doppelter Infinitiv, kein Partizip."},{"mistake":"Er hat nicht gekonnt kommen.","correction":"Er hat nicht kommen können.","explanation":"Auch \"können\" verwendet im Perfekt den doppelten Infinitiv."},{"mistake":"Du musst nicht rauchen. (meaning \"must not\")","correction":"Du darfst nicht rauchen.","explanation":"\"Nicht müssen\" = don\'t have to, \"nicht dürfen\" = must not."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Rezept" beim Arzt?', '["روشتة","فاتورة","موعد","تأمين"]', 'روشتة', '"Das Rezept" ist die ärztliche Verschreibung.', 1, 1),
  (l_id, 'fill_gap', 'Der Arzt sagt, ich _____ mehr schlafen. (sollen)', '["soll","sollte","sollst","sollen"]', 'soll', 'Er/Sie-Form: er/sie soll.', 1, 2),
  (l_id, 'translation', 'Übersetze: "I have to take medicine."', '["Ich muss Medizin nehmen.","Ich soll Medizin nehmen.","Ich kann Medizin nehmen.","Ich darf Medizin nehmen."]', 'Ich muss Medizin nehmen.', '"Müssen" drückt eine Notwendigkeit aus.', 1, 3),
  (l_id, 'multiple_choice', 'Wo wartet man, bevor man zum Arzt geht?', '["im Wartezimmer","in der Küche","im Schlafzimmer","im Badezimmer"]', 'im Wartezimmer', 'Man wartet im "Wartezimmer" (waiting room).', 1, 4),
  (l_id, 'fill_gap', 'Sie _____ heute nicht arbeiten. (dürfen – negativ)', '["dürfen","darf","dürft","darfst"]', 'dürfen', 'Sie (Plural/Höflichkeit): Sie dürfen.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Praxis"?', '["مستشفى","عيادة","صيدلية","مختبر"]', 'عيادة', 1, 1),
  (l_id, 'true_false', '"Die Sprechstunde" sind die Öffnungszeiten der Praxis.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Ich habe zum Arzt gehen _____. (müssen – Perfekt)', '["müssen","gemusst","musste","muss"]', 'müssen', 1, 3),
  (l_id, 'multiple_choice', 'Was sagt der Arzt, wenn er eine Empfehlung gibt?', '["Sie müssen ...","Sie sollen ...","Sie dürfen ...","Sie können ..."]', 'Sie sollen ...', 1, 4),
  (l_id, 'true_false', '"Die Krankmeldung" braucht man für die Arbeit.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist das Perfekt von "Ich muss gehen"?', '["Ich habe gehen müssen.","Ich habe gemusst gehen.","Ich bin gehen müssen.","Ich habe gehen gemusst."]', 'Ich habe gehen müssen.', 1, 6);

  -- Lesson 3.5: Wiederholung: Körper und Gesundheit
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Körper und Gesundheit', 'Alle Themen aus Modul 3 wiederholen und festigen', 'Körper und Gesundheit', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'gesund', 'صحي/سليم', 'healthy', NULL, NULL, 'adjective', 'Eine gesunde Ernährung ist wichtig.', 'A healthy diet is important.', 1),
  (l_id, 'krank', 'مريض', 'sick/ill', NULL, NULL, 'adjective', 'Er ist krank und bleibt zu Hause.', 'He is sick and stays at home.', 2),
  (l_id, 'der Körper', 'الجسم', 'body', 'der', 'die Körper', 'noun', 'Der Körper braucht viel Schlaf.', 'The body needs a lot of sleep.', 3),
  (l_id, 'die Gesundheit', 'الصحة', 'health', 'die', NULL, 'noun', 'Für die Gesundheit sollte man Sport treiben.', 'For health you should do sports.', 4),
  (l_id, 'das Medikament', 'الدواء', 'medication', 'das', 'die Medikamente', 'noun', 'Das Medikament muss im Kühlschrank aufbewahrt werden.', 'The medication must be stored in the refrigerator.', 5),
  (l_id, 'sich ausruhen', 'يستريح', 'to rest', NULL, NULL, 'verb', 'Du sollst dich ausruhen.', 'You should rest.', 6),
  (l_id, 'der Patient', 'المريض', 'patient', 'der', 'die Patienten', 'noun', 'Der Patient wartet im Wartezimmer.', 'The patient is waiting in the waiting room.', 7);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Reflexive Verben, Modalverben, Imperativ', 'Wir wiederholen die Grammatik aus Modul 3: reflexive Verben mit Körperpflege, Modalverben (müssen, sollen, dürfen, können) und den Imperativ.', '[{"rule":"Reflexive Verben: Reflexivpronomen im Akkusativ (mich, dich, sich) oder Dativ (mir, dir, sich).","note":"Ich wasche mich. Ich wasche mir die Hände."},{"rule":"Modalverben: stehen an Position 2, Hauptverb am Satzende im Infinitiv.","note":"Ich muss zum Arzt gehen. Du sollst viel trinken."},{"rule":"Imperativ: du (Verb + -e/ø), ihr (Verb + -t), Sie (Verb + -en Sie).","note":"Geh! Geht! Gehen Sie!"},{"rule":"Perfekt der Modalverben: haben + Infinitiv + Infinitiv (doppelter Infinitiv).","note":"Ich habe gehen müssen."}]', '[{"german":"Ich fühle mich nicht gut.","arabic":"لا أشعر أنني بحالة جيدة.","english":"I do not feel well."},{"german":"Er muss zum Arzt gehen.","arabic":"يجب أن يذهب إلى الطبيب.","english":"He must go to the doctor."},{"german":"Nehmen Sie diese Tabletten dreimal täglich!","arabic":"خذ هذه الأقراص ثلاث مرات يومياً!","english":"Take these tablets three times a day!"},{"german":"Wir haben uns ausgeruht.","arabic":"استرحنا.","english":"We rested."}]', '[{"mistake":"Du wäscht dich die Hände.","correction":"Du wäschst dir die Hände.","explanation":"Dativ: dir (nicht dich). \"Die Hände\" ist Akkusativ."},{"mistake":"Ich muss gehen zum Arzt.","correction":"Ich muss zum Arzt gehen.","explanation":"Hauptverb am Ende: gehen."},{"mistake":"Sie gehen zum Arzt! (Befehl)","correction":"Gehen Sie zum Arzt!","explanation":"Imperativ: Verb + Sie, nicht Sie + Verb."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was ist das Reflexivpronomen für "wir"?', '["uns","euch","sich","mich"]', 'uns', 'Wir – uns (uns waschen, uns fühlen).', 1, 1),
  (l_id, 'fill_gap', 'Ich _____ mich müde. (fühlen)', '["fühle","fühlst","fühlt","fühlen"]', 'fühle', 'ich fühle mich.', 1, 2),
  (l_id, 'translation', 'Übersetze: "You must take this medicine." (formal)', '["Sie müssen diese Medizin nehmen.","Sie sollen diese Medizin nehmen.","Sie dürfen diese Medizin nehmen.","Sie können diese Medizin nehmen."]', 'Sie müssen diese Medizin nehmen.', '"Müssen" drückt Notwendigkeit aus.', 1, 3),
  (l_id, 'fill_gap', '_____ Sie sich bitte! (setzen)', '["Setzen","Setzt","Setz","Sitzt"]', 'Setzen', 'Höflichkeitsimperativ: Setzen Sie sich!', 1, 4),
  (l_id, 'multiple_choice', 'Was bedeutet "sich ausruhen"?', '["يستريح","يأكل","يشرب","ينام"]', 'يستريح', '"Sich ausruhen" bedeutet "to rest".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Untersuchung"?', '["الموعد","الفحص","الدواء","المرض"]', 'الفحص', 1, 1),
  (l_id, 'true_false', '"Müssen" und "dürfen" haben den gleichen Vokalwechsel.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Du _____ dich warm anziehen. (sollen)', '["sollst","soll","sollt","sollen"]', 'sollst', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Imperativ (ihr) von "kommen"?', '["Komm!","Kommt!","Kommen Sie!","Kommst!"]', 'Kommt!', 1, 4),
  (l_id, 'true_false', '"Die Praxis" ist ein anderes Wort für "das Krankenhaus".', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'multiple_choice', 'Welcher Satz ist korrekt?', '["Ich bin zum Arzt gegangen.","Ich habe zum Arzt gegangen.","Ich bin zum Arzt gegeht.","Ich habe zum Arzt gegeht."]', 'Ich bin zum Arzt gegangen.', 1, 6);

  -- Lesson 3.6: Test: Körper und Gesundheit
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Körper und Gesundheit', 'Abschlusstest für Modul 3', 'Körper und Gesundheit', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Tablette"?', '["حقنة","قرص","شراب","مرهم"]', 'قرص', '"Die Tablette" ist eine feste Arzneiform.', 1, 1),
  (l_id, 'fill_gap', 'Ich _____ mich jeden Morgen. (waschen)', '["wasche","wäschst","wascht","waschen"]', 'wasche', 'ich wasche mich (reflexiv).', 1, 2),
  (l_id, 'translation', 'Übersetze: "You should rest." (du)', '["Du sollst dich ausruhen.","Du musst dich ausruhen.","Du kannst dich ausruhen.","Du darfst dich ausruhen."]', 'Du sollst dich ausruhen.', '"Sollen" = should (Empfehlung).', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Imperativ (Sie) von "helfen"?', '["Helfen Sie!","Hilf!","Helft!","Hilfst!"]', 'Helfen Sie!', 'Höflichkeitsimperativ: Helfen Sie!', 1, 4),
  (l_id, 'fill_gap', 'Du _____ nicht so viel rauchen. (sollen – negativ)', '["sollst","sollt","soll","solltest"]', 'sollst', 'du sollst (Empfehlung + Negation).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Schmerz"?', '["ألم","مرض","حمى","سعال"]', 'ألم', 1, 1),
  (l_id, 'true_false', 'Reflexive Verben wie "sich waschen" brauchen immer ein Reflexivpronomen.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Er _____ mir helfen. (können – verneint)', '["kann nicht","könnt nicht","kannst nicht","können nicht"]', 'kann nicht', 1, 3),
  (l_id, 'multiple_choice', 'Wie sagt man "Sit down!" zu einer Person, die man duzt?', '["Setz dich!","Setzen Sie sich!","Setzt euch!","Sitzen!"]', 'Setz dich!', 1, 4),
  (l_id, 'true_false', 'Modalverben bilden das Perfekt mit einem doppelten Infinitiv.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist die Übersetzung von "sich fühlen"?', '["يشعر","يغسل","يرتدي","يجلس"]', 'يشعر', 1, 6),
  (l_id, 'fill_blank', '_____ Sie die Tür, bitte! (öffnen)', '["Öffnen","Öffne","Öffnet","Öffnest"]', 'Öffnen', 1, 7),
  (l_id, 'multiple_choice', 'Welches Modalverb drückt ein Verbot aus?', '["nicht müssen","nicht dürfen","nicht sollen","nicht können"]', 'nicht dürfen', 1, 8);

  -- Module 4: Stadt und Verkehr
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('A2', 'Stadt und Verkehr', 'Sich in der Stadt orientieren, nach dem Weg fragen und über Verkehrsmittel sprechen.', '["Orte in der Stadt auf Deutsch benennen können","Nach dem Weg fragen und Wegbeschreibungen verstehen","Wechselpräpositionen mit Akkusativ und Dativ korrekt verwenden","Ordinalzahlen bilden und anwenden","Den Imperativ für Richtungsanweisungen nutzen"]', 4, 5.0, true)
  returning id into m_id;

  -- Lesson 4.1: Orte in der Stadt
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Orte in der Stadt', 'Die wichtigsten Orte und Gebäude in der Stadt lernen', 'Stadt und Verkehr', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist im Zentrum der Stadt.', 'The train station is in the city center.', 1),
  (l_id, 'die Bushaltestelle', 'موقف الباص', 'bus stop', 'die', 'die Bushaltestellen', 'noun', 'Die Bushaltestelle ist um die Ecke.', 'The bus stop is around the corner.', 2),
  (l_id, 'die Kirche', 'كنيسة', 'church', 'die', 'die Kirchen', 'noun', 'Die Kirche ist sehr alt.', 'The church is very old.', 3),
  (l_id, 'die Apotheke', 'صيدلية', 'pharmacy', 'die', 'die Apotheken', 'noun', 'Die Apotheke hat bis 18 Uhr geöffnet.', 'The pharmacy is open until 6 PM.', 4),
  (l_id, 'das Krankenhaus', 'مستشفى', 'hospital', 'das', 'die Krankenhäuser', 'noun', 'Das Krankenhaus ist am Stadtrand.', 'The hospital is on the outskirts.', 5),
  (l_id, 'der Supermarkt', 'سوبر ماركت', 'supermarket', 'der', 'die Supermärkte', 'noun', 'Der Supermarkt ist in der Hauptstraße.', 'The supermarket is on the main street.', 6),
  (l_id, 'die Bibliothek', 'مكتبة', 'library', 'die', 'die Bibliotheken', 'noun', 'In der Bibliothek kann man Bücher ausleihen.', 'In the library you can borrow books.', 7),
  (l_id, 'das Rathaus', 'مبنى البلدية', 'town hall', 'das', 'die Rathäuser', 'noun', 'Das Rathaus hat einen großen Platz davor.', 'The town hall has a large square in front of it.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wechselpräpositionen (in, auf, unter, über, vor, hinter, neben, zwischen)', 'Wechselpräpositionen können sowohl den Akkusativ als auch den Dativ regieren. Die Regel: Wenn eine Bewegung (wohin?) vorliegt → Akkusativ. Wenn ein Ort/Position (wo?) vorliegt → Dativ. Für arabische Lernende: Dies entspricht im Arabischen den Präpositionen mit unterschiedlichen Bedeutungen je nach Kontext.', '[{"rule":"Frage \"Wohin?\" (Bewegung/Ziel) → Akkusativ: in, auf, unter, über, vor, hinter, neben, zwischen.","note":"Ich gehe in die Stadt. (Akkusativ)"},{"rule":"Frage \"Wo?\" (Ort/Position) → Dativ: in, auf, unter, über, vor, hinter, neben, zwischen.","note":"Ich bin in der Stadt. (Dativ)"},{"rule":"Typische Verben mit Akkusativ: gehen, fahren, legen, stellen, setzen, hängen.","note":"Ich lege das Buch auf den Tisch."},{"rule":"Typische Verben mit Dativ: sein, stehen, liegen, sitzen, hängen (Zustand).","note":"Das Buch liegt auf dem Tisch."},{"rule":"Die Präpositionen: in (في/إلى), auf (على), unter (تحت), über (فوق), vor (أمام), hinter (خلف), neben (بجانب), zwischen (بين).","note":"Lerne die Paare: wohin (Akk) / wo (Dat)."}]', '[{"german":"Ich gehe in die Stadt.","arabic":"أذهب إلى المدينة.","english":"I go into the city."},{"german":"Ich bin in der Stadt.","arabic":"أنا في المدينة.","english":"I am in the city."},{"german":"Er legt das Buch auf den Tisch.","arabic":"يضع الكتاب على الطاولة.","english":"He puts the book on the table."},{"german":"Das Buch liegt auf dem Tisch.","arabic":"الكتاب على الطاولة.","english":"The book is lying on the table."},{"german":"Die Bushaltestelle ist neben dem Bahnhof.","arabic":"موقف الباص بجانب محطة القطار.","english":"The bus stop is next to the train station."}]', '[{"mistake":"Ich gehe in der Stadt. (when meaning \"into the city\")","correction":"Ich gehe in die Stadt.","explanation":"Bewegung (wohin?) → Akkusativ: in die Stadt."},{"mistake":"Das Buch liegt auf den Tisch.","correction":"Das Buch liegt auf dem Tisch.","explanation":"Position (wo?) → Dativ: auf dem Tisch."},{"mistake":"Er setzt sich auf den Stuhl. (correct, but confusing with \"sitzen\")","correction":"Er setzt sich auf den Stuhl. (Bewegung) -> Er sitzt auf dem Stuhl. (Position)","explanation":"Sich setzen = Bewegung (Akk). Sitzen = Position (Dat)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Bahnhof"?', '["محطة الباص","محطة القطار","المطار","محطة المترو"]', 'محطة القطار', '"Der Bahnhof" ist der Bahnhof für Züge.', 1, 1),
  (l_id, 'fill_gap', 'Ich gehe _____ die Bibliothek. (Bewegung)', '["in","in den","in die","in der"]', 'in die', 'Bewegung (wohin?) → in + Akkusativ: in die Bibliothek.', 1, 2),
  (l_id, 'translation', 'Übersetze: "The pharmacy is next to the supermarket."', '["Die Apotheke ist neben dem Supermarkt.","Die Apotheke ist neben den Supermarkt.","Die Apotheke ist neben der Supermarkt.","Die Apotheke ist neben das Supermarkt."]', 'Die Apotheke ist neben dem Supermarkt.', 'Position (wo?) → Dativ: neben dem Supermarkt.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die Frage für Position?', '["Wohin?","Wo?","Wem?","Wen?"]', 'Wo?', '"Wo?" fragt nach der Position (Dativ).', 1, 4),
  (l_id, 'fill_gap', 'Er legt das Buch _____ Tisch. (auf – Bewegung)', '["auf dem","auf den","auf der","auf das"]', 'auf den', 'Bewegung (wohin?) → Akkusativ: auf den Tisch.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Apotheke"?', '["مكتبة","صيدلية","مخبز","مطعم"]', 'صيدلية', 1, 1),
  (l_id, 'true_false', 'Wechselpräpositionen regieren immer den Akkusativ.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Die Kirche ist _____ dem Rathaus. (neben – Dativ)', '["neben dem","neben den","neben der","neben das"]', 'neben dem', 1, 3),
  (l_id, 'multiple_choice', 'Wohin? → Akkusativ, Wo? → _____?', '["Nominativ","Dativ","Genitiv","Akkusativ"]', 'Dativ', 1, 4),
  (l_id, 'true_false', '"Der Supermarkt" ist ein Ort, wo man Lebensmittel kauft.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist der Dativ von "der Bahnhof"?', '["dem Bahnhof","den Bahnhof","der Bahnhof","des Bahnhofs"]', 'dem Bahnhof', 1, 6);

  -- Lesson 4.2: Verkehrsmittel und Wege
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Verkehrsmittel und Wege', 'Verkehrsmittel benennen und über Wege sprechen', 'Stadt und Verkehr', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Auto', 'سيارة', 'car', 'das', 'die Autos', 'noun', 'Mit dem Auto fahre ich zur Arbeit.', 'I drive to work by car.', 1),
  (l_id, 'der Bus', 'باص/حافلة', 'bus', 'der', 'die Busse', 'noun', 'Der Bus kommt um 10 Uhr.', 'The bus comes at 10 o''clock.', 2),
  (l_id, 'die U-Bahn', 'مترو الأنفاق', 'subway/underground', 'die', 'die U-Bahnen', 'noun', 'Die U-Bahn fährt alle 5 Minuten.', 'The subway runs every 5 minutes.', 3),
  (l_id, 'die Straßenbahn', 'ترام', 'tram', 'die', 'die Straßenbahnen', 'noun', 'Mit der Straßenbahn kommt man schnell ins Zentrum.', 'The tram takes you quickly to the center.', 4),
  (l_id, 'das Fahrrad', 'دراجة هوائية', 'bicycle', 'das', 'die Fahrräder', 'noun', 'In Amsterdam fahren viele Leute mit dem Fahrrad.', 'In Amsterdam many people ride bicycles.', 5),
  (l_id, 'die Ampel', 'إشارة مرور', 'traffic light', 'die', 'die Ampeln', 'noun', 'An der Ampel musst du warten.', 'At the traffic light you have to wait.', 6),
  (l_id, 'die Kreuzung', 'تقاطع', 'intersection', 'die', 'die Kreuzungen', 'noun', 'An der Kreuzung biegst du rechts ab.', 'At the intersection you turn right.', 7),
  (l_id, 'der Fußgänger', 'المشاة', 'pedestrian', 'der', 'die Fußgänger', 'noun', 'Der Fußgänger überquert die Straße.', 'The pedestrian crosses the street.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Ordinalzahlen und Datumsangaben', 'Ordinalzahlen geben die Reihenfolge an (erste, zweite, dritte...). Sie werden aus den Kardinalzahlen gebildet + -te (bis 19) oder -ste (ab 20). Für arabische Lernende: Deutsche Ordinalzahlen sind einfacher als im Arabischen, da sie regelmäßig gebildet werden.', '[{"rule":"Ordinalzahlen von 1–19: Zahl + -te (1. = erste, 2. = zweite, 3. = dritte).","note":"Ausnahmen: 1. erste, 3. dritte, 7. siebte, 8. achte"},{"rule":"Ordinalzahlen ab 20: Zahl + -ste (20. = zwanzigste, 100. = hundertste).","note":"30. = dreißigste, 50. = fünfzigste"},{"rule":"Im Satz werden Ordinalzahlen wie Adjektive dekliniert.","note":"der erste Mai, am ersten Mai, den ersten Mai"},{"rule":"Für Daten: \"am + Ordinalzahl + -n\" (am ersten Mai, am zwanzigsten Januar).","note":"am 1. Mai, am 20. Januar"}]', '[{"german":"Heute ist der erste Mai.","arabic":"اليوم هو الأول من مايو.","english":"Today is the first of May."},{"german":"Am dritten April habe ich Geburtstag.","arabic":"عيد ميلادي في الثالث من أبريل.","english":"My birthday is on the third of April."},{"german":"Die zweite Straße rechts.","arabic":"الشارع الثاني على اليمين.","english":"The second street on the right."},{"german":"Er wohnt im zwanzigsten Stock.","arabic":"يسكن في الطابق العشرين.","english":"He lives on the twentieth floor."},{"german":"Das ist mein erster Besuch in Berlin.","arabic":"هذه زيارتي الأولى لبرلين.","english":"This is my first visit to Berlin."}]', '[{"mistake":"Heute ist der eins Mai.","correction":"Heute ist der erste Mai.","explanation":"Man braucht die Ordinalzahl: erste, nicht die Kardinalzahl eins."},{"mistake":"Am drei April.","correction":"Am dritten April.","explanation":"Nach \"am\" kommt die Ordinalzahl mit Endung -n: am dritten."},{"mistake":"der zwanzigste (with wrong ending in context)","correction":"der zwanzigste (correct) – am zwanzigsten (with \"am\")","explanation":"\"am\" + Ordinalzahl + -en: am zwanzigsten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Ampel"?', '["شارع","إشارة مرور","رصيف","مفترق طرق"]', 'إشارة مرور', '"Die Ampel" ist die Verkehrsampel.', 1, 1),
  (l_id, 'fill_gap', 'Heute ist der _____ April. (1.)', '["erste","erster","erstens","ersten"]', 'erste', 'Nominativ: der erste April.', 1, 2),
  (l_id, 'translation', 'Übersetze: "I go by bus."', '["Ich fahre mit dem Bus.","Ich fahre mit der Bus.","Ich fahre mit den Bus.","Ich fahre mit das Bus."]', 'Ich fahre mit dem Bus.', '"Mit" regiert Dativ: mit dem Bus.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die Ordinalzahl von "3."?', '["dritte","dreite","drittte","drei"]', 'dritte', '3. = dritte (unregelmäßig).', 1, 4),
  (l_id, 'fill_gap', 'Am _____ Dezember ist Weihnachten. (25.)', '["fünfundzwanzigsten","fünfundzwanzigste","fünfundzwanzigstem","fünfundzwanzigster"]', 'fünfundzwanzigsten', 'Nach "am" kommt die Endung -en: am fünfundzwanzigsten.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Kreuzung"?', '["شارع","تقاطع","ميدان","زقاق"]', 'تقاطع', 1, 1),
  (l_id, 'true_false', 'Ordinalzahlen ab 20 enden auf -ste.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Am _____ September beginnt die Schule. (1.)', '["ersten","erste","erster","erstes"]', 'ersten', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die Ordinalzahl von "7."?', '["siebte","siebente","siebete","siebste"]', 'siebte', 1, 4),
  (l_id, 'true_false', 'Mit "dem Fahrrad" ist Dativ korrekt.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Wie sagt man "on the second floor"?', '["im zweiten Stock","im zweite Stock","im zwei Stock","in der zweite Stock"]', 'im zweiten Stock', 1, 6);

  -- Lesson 4.3: Wechselpräpositionen vertiefen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wechselpräpositionen vertiefen', 'Wechselpräpositionen mit Verben der Bewegung und Position vertiefen', 'Stadt und Verkehr', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Straße', 'شارع', 'street', 'die', 'die Straßen', 'noun', 'Die Straße ist sehr lang.', 'The street is very long.', 1),
  (l_id, 'der Platz', 'ساحة/ميدان', 'square/place', 'der', 'die Plätze', 'noun', 'Der Marktplatz ist im Zentrum.', 'The market square is in the center.', 2),
  (l_id, 'die Ecke', 'زاوية/ناصية', 'corner', 'die', 'die Ecken', 'noun', 'Das Café ist um die Ecke.', 'The café is around the corner.', 3),
  (l_id, 'geradeaus', 'مباشرة/إلى الأمام', 'straight ahead', NULL, NULL, 'adverb', 'Gehen Sie geradeaus und dann links.', 'Go straight ahead and then left.', 4),
  (l_id, 'links', 'يسار', 'left', NULL, NULL, 'adverb', 'Biegen Sie links ab.', 'Turn left.', 5),
  (l_id, 'rechts', 'يمين', 'right', NULL, NULL, 'adverb', 'Das Museum ist rechts.', 'The museum is on the right.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wechselpräpositionen – Vertiefung und Imperativ für Wegbeschreibungen', 'Bei Wegbeschreibungen kombinieren wir Wechselpräpositionen mit dem Imperativ. "Gehen Sie geradeaus, dann biegen Sie links ab, dann ist die Apotheke auf der rechten Seite." Die Wahl zwischen Akkusativ und Dativ hängt von der Bewegung ab.', '[{"rule":"Bei Wegbeschreibungen: Bewegung (gehen, fahren, biegen) → Akkusativ.","note":"Gehen Sie in die Hauptstraße. Biegen Sie in die Seitenstraße."},{"rule":"Position/Resultat (sein, liegen, stehen, befinden sich) → Dativ.","note":"Die Apotheke ist in der Hauptstraße."},{"rule":"\"auf der rechten/linken Seite\" ist immer Dativ (Position).","note":"Das Museum ist auf der rechten Seite."},{"rule":"Typische Imperative für Wegbeschreibungen: Gehen Sie, Biegen Sie, Nehmen Sie, Folgen Sie.","note":"Biegen Sie an der Ampel links ab!"}]', '[{"german":"Gehen Sie in die Bahnhofstraße!","arabic":"اذهب إلى شارع المحطة!","english":"Go into Bahnhofstraße!"},{"german":"Die Bibliothek ist in der Bahnhofstraße.","arabic":"المكتبة في شارع المحطة.","english":"The library is on Bahnhofstraße."},{"german":"Biegen Sie an der Kreuzung rechts ab!","arabic":"انعطف يميناً عند التقاطع!","english":"Turn right at the intersection!"},{"german":"Das Kino ist auf der linken Seite.","arabic":"السينما على الجانب الأيسر.","english":"The cinema is on the left side."},{"german":"Fahren Sie mit dem Bus bis zum Bahnhof!","arabic":"اركب الباص حتى محطة القطار!","english":"Take the bus to the train station!"}]', '[{"mistake":"Gehen Sie in der Hauptstraße! (Bewegung)","correction":"Gehen Sie in die Hauptstraße!","explanation":"Bewegung (wohin?) → Akkusativ: in die Hauptstraße."},{"mistake":"Es ist auf die rechte Seite.","correction":"Es ist auf der rechten Seite.","explanation":"Position (wo?) → Dativ: auf der rechten Seite."},{"mistake":"Biegen Sie links ab der Ampel.","correction":"Biegen Sie an der Ampel links ab!","explanation":"\"An\" regiert Dativ bei Position: an der Ampel. Das Verb \"abbiegen\" ist trennbar."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "geradeaus"?', '["يسار","يمين","مباشرة","خلف"]', 'مباشرة', '"Geradeaus" bedeutet "straight ahead".', 1, 1),
  (l_id, 'fill_gap', 'Gehen Sie _____ die Lindenstraße! (Bewegung)', '["in","in die","in der","in den"]', 'in die', 'Bewegung (wohin?) → Akkusativ: in die Lindenstraße.', 1, 2),
  (l_id, 'translation', 'Übersetze: "The museum is on the left side."', '["Das Museum ist auf der linken Seite.","Das Museum ist auf die linke Seite.","Das Museum ist auf links Seite.","Das Museum ist auf linken Seite."]', 'Das Museum ist auf der linken Seite.', 'Position (wo?) → Dativ: auf der linken Seite.', 1, 3),
  (l_id, 'multiple_choice', 'Was bedeutet "abbiegen"?', '["يتجه","ينعطف","يستمر","يتوقف"]', 'ينعطف', '"Abbiegen" bedeutet "to turn" (Richtung ändern).', 1, 4),
  (l_id, 'fill_gap', '_____ Sie an der nächsten Kreuzung rechts! (abbiegen – Imperativ)', '["Biegen ... ab","Ab ... biegen","Bieg ... an","Biegen ... an"]', 'Biegen ... ab', 'Imperativ mit trennbarem Verb: Biegen Sie ... ab!', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Ecke"?', '["شارع","زاوية","ميدان","جسر"]', 'زاوية', 1, 1),
  (l_id, 'true_false', 'Bei Wegbeschreibungen verwendet man oft den Imperativ.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Das Café ist _____ der rechten Seite. (auf)', '["auf der","auf die","auf den","auf das"]', 'auf der', 1, 3),
  (l_id, 'multiple_choice', 'Wie sagt man "Turn left at the traffic light!"?', '["Biegen Sie an der Ampel links ab!","Biegen Sie die Ampel links!","Links die Ampel!","Biegen Sie links an der Ampel!"]', 'Biegen Sie an der Ampel links ab!', 1, 4),
  (l_id, 'true_false', '"Links" und "rechts" sind Richtungsangaben.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Welche Präposition passt: "_____ dem Weg" (along the way)?', '["Auf","Bei","Unter","Neben"]', 'Auf', 1, 6);

  -- Lesson 4.4: Wegbeschreibung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wegbeschreibung', 'Eine Wegbeschreibung lesen und selbst formulieren – Orientierung in der Stadt', 'Stadt und Verkehr', 'writing', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Entfernung', 'المسافة', 'distance', 'die', 'die Entfernungen', 'noun', 'Die Entfernung beträgt etwa 2 Kilometer.', 'The distance is about 2 kilometers.', 1),
  (l_id, 'die Richtung', 'الاتجاه', 'direction', 'die', 'die Richtungen', 'noun', 'In welche Richtung muss ich gehen?', 'Which direction do I need to go?', 2),
  (l_id, 'der Weg', 'الطريق', 'way/path', 'der', 'die Wege', 'noun', 'Können Sie mir den Weg zum Bahnhof zeigen?', 'Can you show me the way to the train station?', 3),
  (l_id, 'die Karte', 'خريطة', 'map', 'die', 'die Karten', 'noun', 'Hast du eine Karte von der Stadt?', 'Do you have a map of the city?', 4),
  (l_id, 'die Haltestelle', 'محطة', 'stop/station', 'die', 'die Haltestellen', 'noun', 'Die nächste Haltestelle ist um die Ecke.', 'The next stop is around the corner.', 5),
  (l_id, 'der Stadtplan', 'خريطة المدينة', 'city map', 'der', 'die Stadtpläne', 'noun', 'Der Stadtplan liegt am Eingang aus.', 'The city map is available at the entrance.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Imperativ für Wegbeschreibungen und höfliche Fragen nach dem Weg', 'Um nach dem Weg zu fragen, verwendet man höfliche Fragen: "Entschuldigung, wo ist...?", "Können Sie mir sagen, wo...?", "Wie komme ich zu...?". Die Antworten verwenden oft den Imperativ oder Präpositionen mit Dativ/Akkusativ.', '[{"rule":"Fragen nach dem Weg: \"Entschuldigung, wo ist...?\" oder \"Wie komme ich zu/zum/zur...?\"","note":"Wie komme ich zum Bahnhof? Wie komme ich zur Bibliothek?"},{"rule":"\"zu\" + Dativ: zum (zu dem) für maskulin/neutrum, zur (zu der) für feminin.","note":"zum Bahnhof, zur Apotheke, zum Museum"},{"rule":"Antworten mit Imperativ: Gehen Sie, Biegen Sie, Nehmen Sie, Folgen Sie.","note":"Gehen Sie geradeaus. Biegen Sie rechts ab."},{"rule":"Entfernungsangaben: \"Es ist ... Meter/ Kilometer entfernt.\"","note":"Es ist etwa 500 Meter entfernt."},{"rule":"Zeitangaben: \"Es dauert etwa ... Minuten.\"","note":"Es dauert etwa 10 Minuten zu Fuß."}]', '[{"german":"Entschuldigung, wie komme ich zum Bahnhof?","arabic":"عذراً، كيف أصل إلى محطة القطار؟","english":"Excuse me, how do I get to the train station?"},{"german":"Gehen Sie geradeaus und dann die zweite Straße rechts!","arabic":"اذهب مباشرة ثم الشارع الثاني على اليمين!","english":"Go straight ahead and then the second street on the right!"},{"german":"Es ist etwa 10 Minuten zu Fuß.","arabic":"تبعد حوالي 10 دقائق سيراً على الأقدام.","english":"It is about 10 minutes on foot."},{"german":"Nehmen Sie die U-Bahn bis zum Hauptbahnhof!","arabic":"اركب مترو الأنفاق حتى المحطة الرئيسية!","english":"Take the subway to the main station!"},{"german":"Das Museum ist links neben der Kirche.","arabic":"المتحف على يسار الكنيسة.","english":"The museum is to the left of the church."}]', '[{"mistake":"Wie komme ich zu Bahnhof?","correction":"Wie komme ich zum Bahnhof?","explanation":"Bahnhof ist maskulin → \"zum\" (zu + dem)."},{"mistake":"Es ist 10 Minuten zu Fuß. (missing \"etwa\" / wrong preposition)","correction":"Es ist etwa 10 Minuten zu Fuß.","explanation":"\"Zu Fuß\" = on foot. \"Etwa\" = approximately."},{"mistake":"Gehen Sie geradeaus und biegen Sie links.","correction":"Gehen Sie geradeaus und biegen Sie links ab.","explanation":"\"Abbiegen\" ist ein trennbares Verb: \"... biegen Sie ... ab\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Richtung"?', '["المسافة","الاتجاه","الخريطة","الشارع"]', 'الاتجاه', '"Die Richtung" ist die direction.', 1, 1),
  (l_id, 'fill_gap', 'Wie komme ich _____ Bibliothek? (zu)', '["zum","zur","zu der","zu den"]', 'zur', 'Bibliothek ist feminin → zur (zu + der).', 1, 2),
  (l_id, 'translation', 'Übersetze: "It is about 500 meters from here."', '["Es ist etwa 500 Meter entfernt.","Es ist 500 Meter weit.","Es gibt 500 Meter.","Es hat 500 Meter."]', 'Es ist etwa 500 Meter entfernt.', '"Entfernt" = away/distant.', 1, 3),
  (l_id, 'multiple_choice', 'Wie fragt man höflich nach dem Weg?', '["Entschuldigung, wo ist der Bahnhof?","Wo Bahnhof?","Bahnhof da?","Ich Bahnhof suchen."]', 'Entschuldigung, wo ist der Bahnhof?', 'Höfliche Frage mit "Entschuldigung".', 1, 4),
  (l_id, 'fill_gap', '_____ Sie die U-Bahn bis zum Zentrum! (nehmen – Imperativ)', '["Nehmen","Nimm","Nehmt","Nimmt"]', 'Nehmen', 'Höflichkeitsimperativ: Nehmen Sie!', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Stadtplan"?', '["خريطة العالم","خريطة المدينة","خريطة الشارع","خريطة البلد"]', 'خريطة المدينة', 1, 1),
  (l_id, 'true_false', '"Zu Fuß" bedeutet "on foot".', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Wie komme ich _____ Museum? (zu)', '["zum","zur","zu den","zu der"]', 'zum', 1, 3),
  (l_id, 'multiple_choice', 'Was sagt man zuerst, wenn man nach dem Weg fragt?', '["Entschuldigung","Hallo","Tschüss","Danke"]', 'Entschuldigung', 1, 4),
  (l_id, 'true_false', '"Geradeaus" bedeutet "straight ahead".', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Welche Endung hat "am zwanzigsten Mai"?', '["-en","-e","-er","-es"]', '-en', 1, 6);

  -- Lesson 4.5: Wiederholung: Stadt und Verkehr
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Stadt und Verkehr', 'Alle Themen aus Modul 4 wiederholen und festigen', 'Stadt und Verkehr', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Verkehrsmittel', 'وسيلة نقل', 'means of transport', 'das', 'die Verkehrsmittel', 'noun', 'Welches Verkehrsmittel nimmst du?', 'Which means of transport do you take?', 1),
  (l_id, 'der Fußweg', 'ممر المشاة', 'footpath', 'der', 'die Fußwege', 'noun', 'Der Fußweg führt durch den Park.', 'The footpath leads through the park.', 2),
  (l_id, 'die Innenstadt', 'وسط المدينة', 'city center', 'die', 'die Innenstädte', 'noun', 'Die Innenstadt ist immer voller Menschen.', 'The city center is always full of people.', 3),
  (l_id, 'der Vorort', 'ضاحية', 'suburb', 'der', 'die Vororte', 'noun', 'Wir wohnen in einem Vorort von München.', 'We live in a suburb of Munich.', 4),
  (l_id, 'die Fahrkarte', 'تذكرة سفر', 'ticket (for transport)', 'die', 'die Fahrkarten', 'noun', 'Eine Fahrkarte nach Berlin, bitte.', 'A ticket to Berlin, please.', 5),
  (l_id, 'der Fahrplan', 'جدول الرحلات', 'timetable/schedule', 'der', 'die Fahrpläne', 'noun', 'Der Fahrplan hängt am Bahnsteig.', 'The timetable is posted on the platform.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Wechselpräpositionen, Ordinalzahlen, Imperativ', 'Wir wiederholen die Grammatik aus Modul 4: Wechselpräpositionen (wo/wohin), Ordinalzahlen und den Imperativ für Wegbeschreibungen.', '[{"rule":"Wechselpräpositionen: Wohin? (Bewegung) → Akkusativ. Wo? (Position) → Dativ.","note":"in die Stadt / in der Stadt, auf den Tisch / auf dem Tisch"},{"rule":"Ordinalzahlen: 1–19: -te, ab 20: -ste. Nach \"am\" mit Endung -en.","note":"der erste Mai, am zwanzigsten Juni"},{"rule":"Imperativ: du (Verb + -e/ø), ihr (Verb + -t), Sie (Verb + -en Sie).","note":"Geh! Geht! Gehen Sie!"},{"rule":"Höfliche Fragen: \"Entschuldigung, wie komme ich zu/zum/zur...?\"","note":"Wie komme ich zum Bahnhof? Wie komme ich zur Schule?"}]', '[{"german":"Ich gehe in die Stadt. Die Stadt ist schön.","arabic":"أذهب إلى المدينة. المدينة جميلة.","english":"I go into the city. The city is beautiful."},{"german":"Am ersten Januar beginnt das neue Jahr.","arabic":"في الأول من يناير تبدأ السنة الجديدة.","english":"On the first of January the new year begins."},{"german":"Biegen Sie an der nächsten Ampel links ab!","arabic":"انعطف يساراً عند إشارة المرور التالية!","english":"Turn left at the next traffic light!"},{"german":"Die Bushaltestelle ist neben dem Supermarkt.","arabic":"موقف الباص بجانب السوبر ماركت.","english":"The bus stop is next to the supermarket."}]', '[{"mistake":"Wie komme ich zu die Apotheke?","correction":"Wie komme ich zur Apotheke?","explanation":"Apotheke ist feminin → zur (zu + der)."},{"mistake":"Das Buch liegt auf den Tisch. (Position)","correction":"Das Buch liegt auf dem Tisch.","explanation":"Position (wo?) → Dativ: auf dem Tisch."},{"mistake":"Am erste Mai.","correction":"Am ersten Mai.","explanation":"Nach \"am\" braucht die Ordinalzahl die Endung -en: am ersten."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Fahrkarte"?', '["تذكرة","محطة","قطار","شارع"]', 'تذكرة', '"Die Fahrkarte" ist das Ticket für Verkehrsmittel.', 1, 1),
  (l_id, 'fill_gap', 'Ich fahre _____ die Stadt. (Bewegung)', '["in","in die","in der","in den"]', 'in die', 'Bewegung (wohin?) → Akkusativ: in die Stadt.', 1, 2),
  (l_id, 'translation', 'Übersetze: "Turn right at the corner!"', '["Biegen Sie an der Ecke rechts ab!","Biegen Sie die Ecke rechts!","Gehen Sie die Ecke rechts!","Rechts die Ecke!"]', 'Biegen Sie an der Ecke rechts ab!', '"An der Ecke" (Dativ, Position) + "abbiegen" (trennbar).', 1, 3),
  (l_id, 'fill_gap', 'Am _____ Stock wohnt sie. (3. – Ordinalzahl)', '["dritten","dritte","dritter","drittes"]', 'dritten', 'Nach "am" kommt -en: am dritten Stock.', 1, 4),
  (l_id, 'multiple_choice', 'Welche Präposition braucht immer Dativ?', '["durch","für","mit","um"]', 'mit', '"Mit" regiert immer den Dativ.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Fahrplan"?', '["تذكرة","جدول الرحلات","محطة","سائق"]', 'جدول الرحلات', 1, 1),
  (l_id, 'true_false', 'Wechselpräpositionen regieren immer den Dativ.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Am _____ Juli haben wir Ferien. (1.)', '["ersten","erste","erster","erstens"]', 'ersten', 1, 3),
  (l_id, 'multiple_choice', 'Wie sagt man "Go straight ahead!"?', '["Gehen Sie geradeaus!","Gehen Sie links!","Gehen Sie rechts!","Gehen Sie zurück!"]', 'Gehen Sie geradeaus!', 1, 4),
  (l_id, 'true_false', 'Für "zu dem Bahnhof" sagt man "zum Bahnhof".', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist die Ordinalzahl von "8."?', '["achte","achte","achtste","achtte"]', 'achte', 1, 6);

  -- Lesson 4.6: Test: Stadt und Verkehr
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Stadt und Verkehr', 'Abschlusstest für Modul 4', 'Stadt und Verkehr', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Bushaltestelle"?', '["محطة القطار","موقف الباص","محطة المترو","محطة التاكسي"]', 'موقف الباص', '"Die Bushaltestelle" ist der Ort, wo der Bus hält.', 1, 1),
  (l_id, 'fill_gap', 'Gehen Sie _____ die Kirche! (Bewegung – in)', '["in die","in der","in den","in das"]', 'in die', 'Bewegung (wohin?) → Akkusativ: in die Kirche.', 1, 2),
  (l_id, 'translation', 'Übersetze: "Excuse me, where is the train station?"', '["Entschuldigung, wo ist der Bahnhof?","Hallo, wo Bahnhof?","Entschuldigung, Bahnhof da?","Bitte, wo der Bahnhof?"]', 'Entschuldigung, wo ist der Bahnhof?', 'Höfliche Frage: "Entschuldigung, wo ist...?"', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die Ordinalzahl von "20."?', '["zwanzigste","zwanzigste","zwanzigsten","zwanzigster"]', 'zwanzigste', 'Ab 20: -ste (zwanzigste).', 1, 4),
  (l_id, 'fill_gap', '_____ Sie an der Kreuzung rechts! (abbiegen – Imperativ Sie)', '["Biegen ... ab","Ab ... biegen","Bieg ... ab","Biegen ... an"]', 'Biegen ... ab', 'Trennbares Verb im Imperativ: Biegen Sie ... ab!', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Platz"?', '["ساحة","شارع","زاوية","جسر"]', 'ساحة', 1, 1),
  (l_id, 'true_false', '"Wie komme ich zum Rathaus?" ist eine Frage nach dem Weg.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Die Bibliothek ist _____ der linken Seite. (auf)', '["auf der","auf die","auf den","auf das"]', 'auf der', 1, 3),
  (l_id, 'multiple_choice', 'Nach "am" + Ordinalzahl kommt die Endung?', '["-en","-e","-er","-es"]', '-en', 1, 4),
  (l_id, 'true_false', 'Mit dem Fahrrad = Dativ (correct)', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist der Imperativ (du) von "nehmen"?', '["Nimm!","Nimmst!","Nehmt!","Nehmen Sie!"]', 'Nimm!', 1, 6),
  (l_id, 'fill_blank', 'Wie komme ich _____ Bahnhof? (zu)', '["zum","zur","zu den","zu der"]', 'zum', 1, 7),
  (l_id, 'multiple_choice', 'Welches Verb beschreibt eine Bewegung (Wohin?)?', '["sein","liegen","gehen","stehen"]', 'gehen', 1, 8);

  -- Module 5: Wetter und Jahreszeiten
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('A2', 'Wetter und Jahreszeiten', 'Über das Wetter sprechen, Jahreszeiten beschreiben und Wettervorhersagen verstehen.', '["Wetterphänomene auf Deutsch beschreiben können","Die Jahreszeiten und Monate benennen können","Nebensätze mit weil, dass, wenn bilden","Das Future mit werden verwenden","Die Konstruktion \"es gibt\" korrekt anwenden"]', 5, 5.0, true)
  returning id into m_id;

  -- Lesson 5.1: Wetter und Temperaturen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wetter und Temperaturen', 'Wörter und Ausdrücke für das Wetter lernen', 'Wetter und Jahreszeiten', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Sonne', 'شمس', 'sun', 'die', NULL, 'noun', 'Die Sonne scheint heute sehr stark.', 'The sun is shining very strongly today.', 1),
  (l_id, 'der Regen', 'مطر', 'rain', 'der', NULL, 'noun', 'Der Regen hört hoffentlich bald auf.', 'Hopefully the rain will stop soon.', 2),
  (l_id, 'der Schnee', 'ثلج', 'snow', 'der', NULL, 'noun', 'Im Dezember liegt überall Schnee.', 'In December there is snow everywhere.', 3),
  (l_id, 'der Wind', 'رياح', 'wind', 'der', 'die Winde', 'noun', 'Der Wind weht sehr stark.', 'The wind is blowing very strongly.', 4),
  (l_id, 'die Wolke', 'سحابة', 'cloud', 'die', 'die Wolken', 'noun', 'Am Himmel sind viele Wolken.', 'There are many clouds in the sky.', 5),
  (l_id, 'das Gewitter', 'عاصفة رعدية', 'thunderstorm', 'das', 'die Gewitter', 'noun', 'Heute Nachmittag gibt es ein Gewitter.', 'There will be a thunderstorm this afternoon.', 6),
  (l_id, 'der Nebel', 'ضباب', 'fog', 'der', NULL, 'noun', 'Im November gibt es oft Nebel.', 'In November there is often fog.', 7),
  (l_id, 'die Temperatur', 'درجة الحرارة', 'temperature', 'die', 'die Temperaturen', 'noun', 'Die Temperatur beträgt 25 Grad.', 'The temperature is 25 degrees.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Subordinate Clauses: weil, dass, wenn', 'Nebensätze werden mit Konjunktionen wie "weil" (because), "dass" (that) und "wenn" (if/when) eingeleitet. Im Nebensatz steht das Verb am Ende. Für arabische Lernende: Die Satzstellung ist anders als im Arabischen, wo das Verb oft am Anfang des Nebensatzes steht.', '[{"rule":"\"weil\" (because): Nebensatz mit Verb am Ende. Grund angeben.","note":"Ich bleibe zu Hause, weil es regnet. (nicht: weil es regnet)"},{"rule":"\"dass\" (that): Nebensatz nach Verben des Wissens, Sagens, Denkens.","note":"Ich glaube, dass es morgen regnet. Er sagt, dass er kommt."},{"rule":"\"wenn\" (if/when): Bedingung oder zeitliches Nacheinander.","note":"Wenn es regnet, bleibe ich zu Hause. Wenn ich Zeit habe, komme ich."},{"rule":"Das konjugierte Verb steht im Nebensatz immer am Ende.","note":"..., weil das Wetter schlecht ist. ..., dass die Sonne scheint."},{"rule":"Wenn der Nebensatz vorne steht, beginnt der Hauptsatz mit dem Verb.","note":"Wenn es regnet, bleibe ich zu Hause. (Verb an Position 1 im Hauptsatz)"}]', '[{"german":"Ich bleibe zu Hause, weil es regnet.","arabic":"أبقى في المنزل لأنها تمطر.","english":"I stay at home because it is raining."},{"german":"Ich glaube, dass es morgen sonnig wird.","arabic":"أعتقد أنه سيكون مشمساً غداً.","english":"I think that it will be sunny tomorrow."},{"german":"Wenn es schneit, fahren wir Ski.","arabic":"إذا تساقط الثلج، نذهب للتزلج.","english":"If it snows, we go skiing."},{"german":"Er sagt, dass der Wind stark ist.","arabic":"يقول إن الرياح قوية.","english":"He says that the wind is strong."},{"german":"Ich gehe nicht raus, weil es kalt ist.","arabic":"لا أخرج لأنه بارد.","english":"I do not go out because it is cold."}]', '[{"mistake":"..., weil es regnet. (correct) vs ..., weil es regnet. (using main clause order)","correction":"..., weil es regnet. (Verb am Ende)","explanation":"Im Nebensatz steht das Verb am Ende: \"... weil es regnet.\""},{"mistake":"Ich denke, dass das Wetter ist schön.","correction":"Ich denke, dass das Wetter schön ist.","explanation":"Das Verb \"ist\" muss am Ende des dass-Satzes stehen."},{"mistake":"Wenn ich habe Zeit, ich komme.","correction":"Wenn ich Zeit habe, komme ich.","explanation":"Im wenn-Satz: Verb am Ende. Im Hauptsatz: Verb an Position 1."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Regen"?', '["ثلج","مطر","رياح","ضباب"]', 'مطر', '"Der Regen" ist der Niederschlag, المطر.', 1, 1),
  (l_id, 'fill_gap', 'Ich bleibe zu Hause, _____ es regnet. (weil/dass/wenn)', '["weil","dass","wenn","und"]', 'weil', '"Weil" gibt einen Grund an (because).', 1, 2),
  (l_id, 'translation', 'Übersetze: "I think that it will be sunny."', '["Ich glaube, dass es sonnig wird.","Ich glaube, weil es sonnig wird.","Ich glaube, wenn es sonnig wird.","Ich glaube, es sonnig wird."]', 'Ich glaube, dass es sonnig wird.', '"Dass" leitet den Nebensatz ein: Ich glaube, dass...', 1, 3),
  (l_id, 'multiple_choice', 'Wo steht das Verb im Nebensatz mit "weil"?', '["am Anfang","in der Mitte","am Ende","an Position 2"]', 'am Ende', 'Im Nebensatz steht das konjugierte Verb am Ende.', 1, 4),
  (l_id, 'fill_gap', '_____ es regnet, bleibe ich zu Hause. (Wenn/Weil/Dass)', '["Wenn","Weil","Dass","Ob"]', 'Wenn', '"Wenn" am Satzanfang: Wenn es regnet, bleibe ich zu Hause.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Nebel"?', '["ضباب","رياح","ثلج","مطر"]', 'ضباب', 1, 1),
  (l_id, 'true_false', 'Im Nebensatz mit "dass" steht das Verb am Ende.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Ich gehe nicht raus, _____ es kalt ist. (weil/dass/wenn)', '["weil","dass","wenn","und"]', 'weil', 1, 3),
  (l_id, 'multiple_choice', 'Welche Konjunktion bedeutet "if/when"?', '["weil","dass","wenn","obwohl"]', 'wenn', 1, 4),
  (l_id, 'true_false', '"Die Sonne" ist weiblich (feminin).', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'fill_blank', 'Ich glaube, _____ morgen die Sonne scheint. (dass/wenn/weil)', '["dass","wenn","weil","ob"]', 'dass', 1, 6);

  -- Lesson 5.2: Jahreszeiten und Monate
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Jahreszeiten und Monate', 'Die vier Jahreszeiten und die Monate auf Deutsch lernen', 'Wetter und Jahreszeiten', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Frühling', 'الربيع', 'spring', 'der', NULL, 'noun', 'Im Frühling blühen die Blumen.', 'In spring the flowers bloom.', 1),
  (l_id, 'der Sommer', 'الصيف', 'summer', 'der', NULL, 'noun', 'Im Sommer ist es heiß und sonnig.', 'In summer it is hot and sunny.', 2),
  (l_id, 'der Herbst', 'الخريف', 'autumn/fall', 'der', NULL, 'noun', 'Im Herbst fallen die Blätter von den Bäumen.', 'In autumn the leaves fall from the trees.', 3),
  (l_id, 'der Winter', 'الشتاء', 'winter', 'der', NULL, 'noun', 'Im Winter ist es kalt und es schneit.', 'In winter it is cold and it snows.', 4),
  (l_id, 'der Januar', 'يناير', 'January', 'der', 'die Januare', 'noun', 'Der Januar ist der kälteste Monat.', 'January is the coldest month.', 5),
  (l_id, 'der Februar', 'فبراير', 'February', 'der', 'die Februare', 'noun', 'Im Februar hat es oft Schnee.', 'In February there is often snow.', 6),
  (l_id, 'der März', 'مارس', 'March', 'der', 'die Märze', 'noun', 'Im März wird es langsam wärmer.', 'In March it slowly gets warmer.', 7),
  (l_id, 'der Dezember', 'ديسمبر', 'December', 'der', 'die Dezember', 'noun', 'Im Dezember feiern wir Weihnachten.', 'In December we celebrate Christmas.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Futur mit werden und "es gibt"', 'Das Futur I wird mit "werden" + Infinitiv gebildet. "Es gibt" bedeutet "there is/there are" und wird für allgemeine Aussagen verwendet. Für arabische Lernende: "Werden" funktioniert ähnlich wie "سـ" oder "سوف" im Arabischen, die Zukunft ausdrücken.', '[{"rule":"Futur I: werden (konjugiert) + Infinitiv am Ende.","note":"ich werde, du wirst, er/sie/es wird, wir werden, ihr werdet, sie/Sie werden"},{"rule":"\"Es gibt\" + Akkusativ. Im Präteritum: \"es gab\".","note":"Es gibt viel Schnee. Es gab gestern Regen."},{"rule":"Morgen/ Nächste Woche/ Nächstes Jahr + Futur.","note":"Morgen wird es regnen. Nächstes Jahr werde ich nach Berlin fahren."},{"rule":"Wettervorhersagen verwenden oft Futur: \"Es wird regnen.\"","note":"Am Wochenende wird es sonnig werden."},{"rule":"\"Es gibt\" vs. \"Es ist/sind\": \"Es gibt\" für allgemeine Existenz, \"ist/sind\" für spezifische.","note":"Es gibt viele Jahreszeiten. Der Winter ist kalt."}]', '[{"german":"Morgen wird es regnen.","arabic":"سوف تمطر غداً.","english":"It will rain tomorrow."},{"german":"Es gibt im Winter viel Schnee.","arabic":"يوجد الكثير من الثلج في الشتاء.","english":"There is a lot of snow in winter."},{"german":"Nächstes Jahr werde ich nach Deutschland reisen.","arabic":"سأسافر إلى ألمانيا العام القادم.","english":"Next year I will travel to Germany."},{"german":"Im Frühling wird es wärmer.","arabic":"سوف يصبح الجو أكثر دفئاً في الربيع.","english":"In spring it will get warmer."},{"german":"Gestern gab es ein Gewitter.","arabic":"كانت هناك عاصفة رعدية أمس.","english":"Yesterday there was a thunderstorm."}]', '[{"mistake":"Morgen ich werde nach Hause gehen.","correction":"Morgen werde ich nach Hause gehen.","explanation":"\"Werden\" steht an Position 2, nicht an Position 1 (außer bei Fragen)."},{"mistake":"Es gibt viel Schnee im Winter. (correct) but: Es gibt kalt.","correction":"Es ist kalt.","explanation":"\"Es gibt\" = there is/are. Für Temperatur/ Wetterzustand: \"Es ist kalt/heiß/warm\"."},{"mistake":"Ich werde morgen gehen. (correct) but: Ich werde morgen gehen nach Hause.","correction":"Ich werde morgen nach Hause gehen.","explanation":"Der Infinitiv (gehen) steht am Ende des Satzes."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Frühling"?', '["الربيع","الصيف","الخريف","الشتاء"]', 'الربيع', '"Der Frühling" ist der Frühling, die erste Jahreszeit.', 1, 1),
  (l_id, 'fill_gap', 'Morgen _____ es regnen. (werden – er/es)', '["wird","werde","wirst","werden"]', 'wird', 'er/sie/es wird (Futur: werden + Infinitiv).', 1, 2),
  (l_id, 'translation', 'Übersetze: "There is a lot of snow in winter."', '["Es gibt viel Schnee im Winter.","Es ist viel Schnee im Winter.","Der Winter hat viel Schnee.","Im Winter gibt es Schnee viel."]', 'Es gibt viel Schnee im Winter.', '"Es gibt" + Akkusativ + Zeitangabe.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist das Präteritum von "es gibt"?', '["es gebt","es gab","es gibtete","es gegeben"]', 'es gab', '"Es gibt" → Präteritum: "es gab".', 1, 4),
  (l_id, 'fill_gap', 'Im Sommer wird es heiß _____. (Infinitiv)', '["werden","sein","ist","wird"]', 'sein', 'Futur: werden + Infinitiv = "wird es heiß sein".', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Herbst"?', '["الربيع","الصيف","الخريف","الشتاء"]', 'الخريف', 1, 1),
  (l_id, 'true_false', '"Es gibt" wird für allgemeine Existenz verwendet.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Nächstes Jahr _____ ich Deutsch lernen. (werden – ich)', '["werde","wirst","wird","werden"]', 'werde', 1, 3),
  (l_id, 'multiple_choice', 'Wie sagt man "it will be warm"?', '["Es wird warm sein.","Es ist warm.","Es gab warm.","Es werde warm."]', 'Es wird warm sein.', 1, 4),
  (l_id, 'true_false', 'Der Januar ist der erste Monat des Jahres.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist die korrekte Form: "Im Winter _____ es kalt."', '["ist","gibt","wird","gab"]', 'ist', 1, 6);

  -- Lesson 5.3: Nebensätze mit weil, dass, wenn
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Nebensätze mit weil, dass, wenn', 'Nebensätze vertiefen und in komplexeren Sätzen anwenden', 'Wetter und Jahreszeiten', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'scheinen', 'تشرق/تضيء', 'to shine', NULL, NULL, 'verb', 'Die Sonne scheint hell.', 'The sun is shining brightly.', 1),
  (l_id, 'regnen', 'تمطر', 'to rain', NULL, NULL, 'verb', 'Es regnet schon den ganzen Tag.', 'It has been raining all day.', 2),
  (l_id, 'schneien', 'تتساقط الثلوج', 'to snow', NULL, NULL, 'verb', 'Im Dezember schneit es oft.', 'In December it often snows.', 3),
  (l_id, 'wehen', 'تهب', 'to blow', NULL, NULL, 'verb', 'Der Wind weht aus Westen.', 'The wind is blowing from the west.', 4),
  (l_id, 'der Grad', 'درجة', 'degree', 'der', 'die Grade', 'noun', 'Es sind 30 Grad im Schatten.', 'It is 30 degrees in the shade.', 5),
  (l_id, 'vorhersagen', 'يتوقع', 'to forecast', NULL, NULL, 'verb', 'Der Wetterbericht sagt Regen vorher.', 'The weather forecast predicts rain.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Nebensätze – Vertiefung und Kombination mit Futur', 'Wir kombinieren Nebensätze (weil, dass, wenn) mit dem Futur (werden). Zum Beispiel: "Ich glaube, dass es morgen regnen wird." "Wenn es morgen regnet, werde ich zu Hause bleiben." Die Satzstellung bleibt gleich: Verb am Ende im Nebensatz.', '[{"rule":"Nebensatz + Futur: Das Hilfsverb \"werden\" steht am Ende des Nebensatzes.","note":"Ich glaube, dass es morgen regnen wird."},{"rule":"Wenn-Satz + Futur im Hauptsatz: \"Wenn... , dann + Hauptsatz mit werden.\"","note":"Wenn es regnet, werde ich zu Hause bleiben."},{"rule":"Kausale Sätze mit \"weil\" + Futur: Grund für eine zukünftige Handlung.","note":"Ich werde zu Hause bleiben, weil es regnen wird."},{"rule":"\"dass\"-Sätze nach Verben: glauben, denken, sagen, wissen, hoffen.","note":"Ich hoffe, dass das Wetter schön wird."},{"rule":"Temporales \"wenn\": zeitliches Nacheinander in der Zukunft.","note":"Wenn der Sommer kommt, werde ich schwimmen gehen."}]', '[{"german":"Ich glaube, dass es morgen regnen wird.","arabic":"أعتقد أنها ستمطر غداً.","english":"I think that it will rain tomorrow."},{"german":"Wenn es morgen regnet, werde ich zu Hause bleiben.","arabic":"إذا أمطرت غداً، سأبقى في المنزل.","english":"If it rains tomorrow, I will stay at home."},{"german":"Ich werde einen Regenschirm mitnehmen, weil es regnen wird.","arabic":"سآخذ مظلة لأنها ستمطر.","english":"I will take an umbrella because it will rain."},{"german":"Ich hoffe, dass es im Urlaub schön wird.","arabic":"آمل أن يكون الطقس جميلاً في العطلة.","english":"I hope that the weather will be nice on vacation."},{"german":"Wenn der Winter kommt, wird es kalt.","arabic":"عندما يأتي الشتاء، سيكون الجو بارداً.","english":"When winter comes, it will be cold."}]', '[{"mistake":"Ich glaube, dass es wird regnen morgen.","correction":"Ich glaube, dass es morgen regnen wird.","explanation":"\"Wird\" muss am Ende des Nebensatzes stehen."},{"mistake":"Wenn es wird regnen, ich bleibe zu Hause.","correction":"Wenn es regnet, werde ich zu Hause bleiben.","explanation":"Im wenn-Satz Präsens (kein Futur), Futur im Hauptsatz."},{"mistake":"Ich hoffe, dass das Wetter wird schön.","correction":"Ich hoffe, dass das Wetter schön wird.","explanation":"Verb am Ende: \"schön wird\", nicht \"wird schön\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "scheinen"?', '["تمطر","تشرق","تهب","تثلج"]', 'تشرق', '"Scheinen" verwendet man für die Sonne: Die Sonne scheint.', 1, 1),
  (l_id, 'fill_gap', 'Ich glaube, dass es morgen regnen _____. (werden)', '["wird","werde","werden","wirst"]', 'wird', 'Futur im Nebensatz: "wird" am Ende.', 1, 2),
  (l_id, 'translation', 'Übersetze: "If it snows, I will stay at home."', '["Wenn es schneit, werde ich zu Hause bleiben.","Wenn es schneien wird, ich bleibe zu Hause.","Wenn es schneit, ich werde zu Hause bleiben.","Wenn es schneien, werde ich zu Hause bleiben."]', 'Wenn es schneit, werde ich zu Hause bleiben.', 'Wenn-Satz im Präsens + Futur im Hauptsatz.', 1, 3),
  (l_id, 'multiple_choice', 'Welches Verb leitet einen Nebensatz ein?', '["weil","und","aber","oder"]', 'weil', '"Weil", "dass" und "wenn" leiten Nebensätze ein.', 1, 4),
  (l_id, 'fill_gap', 'Ich werde einen Schirm mitnehmen, _____ es regnen wird. (weil/dass/wenn)', '["weil","dass","wenn","denn"]', 'weil', '"Weil" gibt den Grund an: ...weil es regnen wird.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "vorhersagen"?', '["يتوقع","يمطر","يشرق","يهب"]', 'يتوقع', 1, 1),
  (l_id, 'true_false', 'Im Nebensatz mit "weil" steht das Verb an Position 2.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Ich hoffe, _____ es morgen nicht regnet. (dass/wenn/weil)', '["dass","wenn","weil","ob"]', 'dass', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die richtige Reihenfolge? "Ich denke, dass..."', '["...das Wetter schön wird.","...wird das Wetter schön.","...das Wetter wird schön.","...schön wird das Wetter."]', '...das Wetter schön wird.', 1, 4),
  (l_id, 'true_false', 'Nach "wenn" am Satzanfang steht das Verb im Hauptsatz an Position 1.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'fill_blank', '_____ es morgen regnet, nehme ich einen Schirm mit. (Wenn/Weil/Dass)', '["Wenn","Weil","Dass","Ob"]', 'Wenn', 1, 6);

  -- Lesson 5.4: Wetterbericht
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wetterbericht', 'Einen Wetterbericht verstehen und selbst das Wetter vorhersagen', 'Wetter und Jahreszeiten', 'listening', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Wetterbericht', 'نشرة الطقس', 'weather forecast', 'der', 'die Wetterberichte', 'noun', 'Der Wetterbericht sagt sonniges Wetter voraus.', 'The weather forecast predicts sunny weather.', 1),
  (l_id, 'der Regenschirm', 'مظلة', 'umbrella', 'der', 'die Regenschirme', 'noun', 'Nimm einen Regenschirm mit, es wird regnen.', 'Take an umbrella, it will rain.', 2),
  (l_id, 'der Norden', 'الشمال', 'north', 'der', NULL, 'noun', 'Im Norden ist es bewölkt.', 'In the north it is cloudy.', 3),
  (l_id, 'der Süden', 'الجنوب', 'south', 'der', NULL, 'noun', 'Im Süden scheint die Sonne.', 'In the south the sun is shining.', 4),
  (l_id, 'der Osten', 'الشرق', 'east', 'der', NULL, 'noun', 'Im Osten gibt es Gewitter.', 'In the east there are thunderstorms.', 5),
  (l_id, 'der Westen', 'الغرب', 'west', 'der', NULL, 'noun', 'Im Westen ist es windig.', 'In the west it is windy.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wetterausdrücke: Es ist / Es gibt / Es wird', 'Im Deutschen gibt es verschiedene Konstruktionen, um das Wetter zu beschreiben. "Es ist" + Adjektiv (es ist kalt), "Es gibt" + Nomen (es gibt Regen), "Es wird" + Adjektiv (es wird warm). Für arabische Lernende: Diese Unterscheidung gibt es im Arabischen nicht so genau.', '[{"rule":"\"Es ist\" + Adjektiv für Wetterzustand.","note":"Es ist kalt/warm/heiß/kühl/sonnig/bewölkt."},{"rule":"\"Es gibt\" + Nomen/Akkusativ für Wetterphänomene.","note":"Es gibt Regen/Schnee/Nebel/Gewitter."},{"rule":"\"Es wird\" + Adjektiv für Wetterveränderung oder Futur.","note":"Es wird wärmer. Es wird kälter. Es wird regnerisch."},{"rule":"Himmelsrichtungen: im Norden, im Süden, im Osten, im Westen.","note":"Im Norden ist es kalt, im Süden ist es warm."},{"rule":"Temperatur: \"Es sind ... Grad\" oder \"Die Temperatur beträgt ... Grad\".","note":"Es sind 25 Grad. Die Temperatur beträgt 25 Grad."}]', '[{"german":"Es ist kalt und windig.","arabic":"الجو بارد وعاصف.","english":"It is cold and windy."},{"german":"Es gibt starken Regen im Westen.","arabic":"هناك أمطار غزيرة في الغرب.","english":"There is heavy rain in the west."},{"german":"Morgen wird es wärmer.","arabic":"غداً سيكون الجو أكثر دفئاً.","english":"Tomorrow it will be warmer."},{"german":"Im Norden scheint die Sonne.","arabic":"في الشمال تشرق الشمس.","english":"In the north the sun is shining."},{"german":"Es sind 30 Grad im Schatten.","arabic":"درجة الحرارة 30 في الظل.","english":"It is 30 degrees in the shade."}]', '[{"mistake":"Es gibt kalt.","correction":"Es ist kalt.","explanation":"Für Temperatur/Wetterzustand verwendet man \"Es ist\", nicht \"Es gibt\"."},{"mistake":"Es gibt Regen. (correct) but: Im Norden gibt es kalt.","correction":"Im Norden ist es kalt.","explanation":"\"Es gibt\" für Wetterphänomene (Nomen). \"Es ist\" für Zustand (Adjektiv)."},{"mistake":"Es wird kalt. (correct) but: Es wird kalt morgen.","correction":"Morgen wird es kalt.","explanation":"Zeitangabe (morgen) steht normalerweise am Satzanfang."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Wetterbericht"?', '["نشرة الطقس","تقرير إخباري","خريطة","درجة حرارة"]', 'نشرة الطقس', '"Der Wetterbericht" ist die Wettervorhersage.', 1, 1),
  (l_id, 'fill_gap', 'Im Norden _____ es kalt. (ist/gibt/wird)', '["ist","gibt","wird","sein"]', 'ist', 'Wetterzustand: "Es ist kalt."', 1, 2),
  (l_id, 'translation', 'Übersetze: "There will be thunderstorms in the east."', '["Im Osten wird es Gewitter geben.","Im Osten ist Gewitter.","Im Osten gibt es Gewitter.","Im Osten wird Gewitter."]', 'Im Osten wird es Gewitter geben.', 'Futur mit "es gibt": "wird es ... geben".', 1, 3),
  (l_id, 'multiple_choice', 'Wie sagt man "It is 25 degrees"?', '["Es sind 25 Grad.","Es ist 25 Grad.","Es gibt 25 Grad.","Es hat 25 Grad."]', 'Es sind 25 Grad.', 'Temperatur: "Es sind ... Grad." (Plural).', 1, 4),
  (l_id, 'fill_gap', 'Im Süden _____ die Sonne. (scheinen)', '["scheint","scheinen","scheinst","scheinet"]', 'scheint', 'Die Sonne scheint (3. Person Singular).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Norden"?', '["الجنوب","الشمال","الشرق","الغرب"]', 'الشمال', 1, 1),
  (l_id, 'true_false', '"Es gibt" wird für Wetterzustand mit Adjektiven verwendet.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Im Westen _____ es windig. (ist/gibt/wird)', '["ist","gibt","wird","sein"]', 'ist', 1, 3),
  (l_id, 'multiple_choice', 'Was sagt der Wetterbericht: "Im Osten _____ es Gewitter."', '["gibt","ist","wird","hat"]', 'gibt', 1, 4),
  (l_id, 'true_false', '"Der Regenschirm" schützt vor Regen.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Wie sagt man "cloudy" auf Deutsch?', '["sonnig","bewölkt","windig","regnerisch"]', 'bewölkt', 1, 6);

  -- Lesson 5.5: Wiederholung: Wetter und Jahreszeiten
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Wetter und Jahreszeiten', 'Alle Themen aus Modul 5 wiederholen und festigen', 'Wetter und Jahreszeiten', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Klima', 'المناخ', 'climate', 'das', 'die Klimas', 'noun', 'Deutschland hat ein gemäßigtes Klima.', 'Germany has a temperate climate.', 1),
  (l_id, 'der Regenbogen', 'قوس قزح', 'rainbow', 'der', 'die Regenbögen', 'noun', 'Nach dem Regen sieht man oft einen Regenbogen.', 'After the rain you often see a rainbow.', 2),
  (l_id, 'der Blitz', 'برق', 'lightning', 'der', 'die Blitze', 'noun', 'Bei einem Gewitter gibt es Blitz und Donner.', 'During a thunderstorm there is lightning and thunder.', 3),
  (l_id, 'der Donner', 'رعد', 'thunder', 'der', NULL, 'noun', 'Der Donner ist sehr laut.', 'The thunder is very loud.', 4),
  (l_id, 'der Hagel', 'برد', 'hail', 'der', NULL, 'noun', 'Der Hagel hat die Autos beschädigt.', 'The hail damaged the cars.', 5),
  (l_id, 'feucht', 'رطب', 'humid', NULL, NULL, 'adjective', 'Im Sommer ist die Luft oft feucht.', 'In summer the air is often humid.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Nebensätze, Futur, es gibt', 'Wir wiederholen die Grammatik aus Modul 5: Nebensätze mit weil, dass, wenn – Futur mit werden – und die Konstruktion "es gibt".', '[{"rule":"Nebensätze: weil (Grund), dass (Aussage), wenn (Bedingung/Zeit). Verb am Ende.","note":"..., weil es regnet. ..., dass es kalt ist. ..., wenn der Sommer kommt."},{"rule":"Futur: werden + Infinitiv am Satzende.","note":"Es wird regnen. Ich werde nach Hause gehen."},{"rule":"\"Es gibt\" + Akkusativ = there is/are. Präteritum: \"es gab\".","note":"Es gibt viel Schnee. Es gab einen Sturm."},{"rule":"Wetter: \"Es ist\" + Adjektiv. \"Es gibt\" + Nomen. \"Es wird\" + Adjektiv.","note":"Es ist warm. Es gibt Regen. Es wird kälter."}]', '[{"german":"Ich bleibe zu Hause, weil es regnet.","arabic":"أبقى في المنزل لأنها تمطر.","english":"I stay at home because it is raining."},{"german":"Ich glaube, dass es morgen schön wird.","arabic":"أعتقد أن الجو سيكون جميلاً غداً.","english":"I think that the weather will be nice tomorrow."},{"german":"Wenn es schneit, werden wir Ski fahren.","arabic":"إذا تساقط الثلج، سنتزلج.","english":"If it snows, we will go skiing."},{"german":"Morgen wird es sonnig und warm.","arabic":"غداً سيكون الجو مشمساً ودافئاً.","english":"Tomorrow it will be sunny and warm."}]', '[{"mistake":"Ich denke, dass es wird schön werden.","correction":"Ich denke, dass es schön wird.","explanation":"Im Nebensatz: \"... dass es schön wird\" (Verb am Ende)."},{"mistake":"Es gibt kalt im Winter.","correction":"Es ist kalt im Winter.","explanation":"Wetterzustand: \"es ist kalt\". \"Es gibt\" für Nomen: \"Es gibt Schnee.\""},{"mistake":"Wenn es regnet, ich bleibe zu Hause.","correction":"Wenn es regnet, bleibe ich zu Hause.","explanation":"Nach dem Nebensatz: Verb an Position 1 im Hauptsatz."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Regenbogen"?', '["قوس قزح","برق","رعد","مطر"]', 'قوس قزح', '"Der Regenbogen" erscheint nach dem Regen.', 1, 1),
  (l_id, 'fill_gap', 'Ich hoffe, ____ es morgen nicht regnet. (dass/wenn/weil)', '["dass","wenn","weil","ob"]', 'dass', '"Hoffen" verlangt einen dass-Satz.', 1, 2),
  (l_id, 'translation', 'Übersetze: "It will rain tomorrow."', '["Morgen wird es regnen.","Morgen regnet es.","Morgen es wird regnen.","Morgen ist es regnen."]', 'Morgen wird es regnen.', 'Futur: werden + regnen, Zeit am Satzanfang.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die richtige Form: "Es _____ viel Schnee."', '["gibt","ist","hat","wird"]', 'gibt', 'Schnee ist ein Nomen: "Es gibt viel Schnee."', 1, 4),
  (l_id, 'fill_gap', '_____ der Sommer kommt, werde ich schwimmen gehen. (Wenn/Weil/Dass)', '["Wenn","Weil","Dass","Ob"]', 'Wenn', '"Wenn" hier zeitlich: when the summer comes.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "feucht"?', '["جاف","رطب","بارد","حار"]', 'رطب', 1, 1),
  (l_id, 'true_false', 'Im Nebensatz steht das Verb am Ende.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Ich glaube, _____ es morgen regnen wird. (dass/wenn/weil)', '["dass","wenn","weil","ob"]', 'dass', 1, 3),
  (l_id, 'multiple_choice', 'Welche Konjunktion bedeutet "because"?', '["weil","dass","wenn","obwohl"]', 'weil', 1, 4),
  (l_id, 'true_false', '"Es sind 30 Grad" ist korrekt.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist das Präteritum von "es gibt"?', '["es gab","es gebt","es gabt","es gabe"]', 'es gab', 1, 6);

  -- Lesson 5.6: Test: Wetter und Jahreszeiten
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Wetter und Jahreszeiten', 'Abschlusstest für Modul 5', 'Wetter und Jahreszeiten', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Blitz"?', '["رعد","برق","مطر","رياح"]', 'برق', '"Der Blitz" ist der lightning, البرق.', 1, 1),
  (l_id, 'fill_gap', 'Ich bleibe zu Hause, _____ es regnet. (weil/dass/wenn)', '["weil","dass","wenn","denn"]', 'weil', '"Weil" gibt den Grund an.', 1, 2),
  (l_id, 'translation', 'Übersetze: "If it is sunny, we will go to the park."', '["Wenn es sonnig ist, werden wir in den Park gehen.","Wenn es sonnig wird, wir gehen in den Park.","Weil es sonnig ist, werden wir in den Park gehen.","Dass es sonnig ist, werden wir in den Park gehen."]', 'Wenn es sonnig ist, werden wir in den Park gehen.', 'Bedingung: wenn + Präsens, Futur im Hauptsatz.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die korrekte Form: "Es _____ warm im Sommer."', '["ist","gibt","wird","hat"]', 'ist', 'Wetterzustand: "Es ist warm."', 1, 4),
  (l_id, 'fill_gap', 'Nächstes Jahr _____ ich nach Deutschland fliegen. (werden – ich)', '["werde","wirst","wird","werden"]', 'werde', 'ich werde + Infinitiv (Futur).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Hagel"?', '["ثلج","برد","مطر","جليد"]', 'برد', 1, 1),
  (l_id, 'true_false', '"Weil" leitet einen Nebensatz ein.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Ich glaube, dass es im Herbst oft _____ . (regnen)', '["regnet","regnen","regnete","geregnet"]', 'regnet', 1, 3),
  (l_id, 'multiple_choice', 'Wie sagt man "It will be cold tomorrow."?', '["Morgen wird es kalt sein.","Morgen ist es kalt.","Morgen es wird kalt.","Morgen gibt es kalt."]', 'Morgen wird es kalt sein.', 1, 4),
  (l_id, 'true_false', '"Es gibt Regen" ist korrekt.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Was ist die Überetzung von "because"?', '["weil","dass","wenn","ob"]', 'weil', 1, 6),
  (l_id, 'fill_blank', '_____ es regnet, bleibe ich zu Hause. (Wenn/Weil/Dass)', '["Wenn","Weil","Dass","Den"]', 'Wenn', 1, 7),
  (l_id, 'multiple_choice', 'Himmelsrichtung: der Norden, der Süden, der Osten, der _____?', '["Westen","West","Wester","Westens"]', 'Westen', 1, 8);

  -- Module 6: Feste und Feiertage
  insert into public.course_modules (level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('A2', 'Feste und Feiertage', 'Über Feste, Feiertage und Traditionen in Deutschland sprechen. Einladungen schreiben und über vergangene Ereignisse berichten.', '["Feste und Feiertage auf Deutsch benennen können","Das Präteritum von sein, haben und Modalverben verwenden","Datumsangaben im Kontext von Feiertagen nutzen","Possessivartikel im Dativ anwenden","Über Traditionen und Bräuche sprechen können"]', 6, 5.0, true)
  returning id into m_id;

  -- Lesson 6.1: Feste und Feiertage in Deutschland
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Feste und Feiertage in Deutschland', 'Die wichtigsten deutschen Feste und Feiertage kennenlernen', 'Feste und Feiertage', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'Weihnachten', 'عيد الميلاد', 'Christmas', 'das', NULL, 'noun', 'Weihnachten feiert man am 24. und 25. Dezember.', 'Christmas is celebrated on December 24 and 25.', 1),
  (l_id, 'Ostern', 'عيد الفصح', 'Easter', 'das', NULL, 'noun', 'Zu Ostern bemalen die Kinder Eier.', 'At Easter the children paint eggs.', 2),
  (l_id, 'Neujahr', 'رأس السنة', 'New Year', 'das', NULL, 'noun', 'An Neujahr feiern wir den Jahresbeginn.', 'On New Year we celebrate the beginning of the year.', 3),
  (l_id, 'der Geburtstag', 'عيد ميلاد', 'birthday', 'der', 'die Geburtstage', 'noun', 'Ich lade dich zu meinem Geburtstag ein.', 'I invite you to my birthday.', 4),
  (l_id, 'das Geschenk', 'هدية', 'gift/present', 'das', 'die Geschenke', 'noun', 'Hast du ein Geschenk für deine Mutter?', 'Do you have a gift for your mother?', 5),
  (l_id, 'die Einladung', 'دعوة', 'invitation', 'die', 'die Einladungen', 'noun', 'Die Einladung zur Party ist per E-Mail gekommen.', 'The invitation to the party came by email.', 6),
  (l_id, 'der Feiertag', 'عطلة رسمية', 'public holiday', 'der', 'die Feiertage', 'noun', 'Der 1. Mai ist ein Feiertag in Deutschland.', 'May 1st is a public holiday in Germany.', 7),
  (l_id, 'das Feuerwerk', 'ألعاب نارية', 'fireworks', 'das', 'die Feuerwerke', 'noun', 'An Silvester gibt es ein großes Feuerwerk.', 'On New Year''s Eve there are big fireworks.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Das Präteritum von sein, haben und Modalverben', 'Das Präteritum ist die einfache Vergangenheitsform im Deutschen. Während man im Gespräch oft das Perfekt verwendet, benutzt man das Präteritum häufiger für die Verben sein, haben und Modalverben. Für arabische Lernende: Das Präteritum ähnelt der einfachen Vergangenheit im Arabischen (الماضي).', '[{"rule":"sein (to be) im Präteritum: ich war, du warst, er war, wir waren, ihr wart, sie waren.","note":"Ich war gestern auf der Party. Es war schön."},{"rule":"haben (to have) im Präteritum: ich hatte, du hattest, er hatte, wir hatten, ihr hattet, sie hatten.","note":"Ich hatte viel Spaß. Wir hatten ein Geschenk."},{"rule":"Modalverben im Präteritum: können (konnte), müssen (musste), dürfen (durfte), sollen (sollte), wollen (wollte).","note":"Ich konnte kommen. Er musste gehen. Sie durfte feiern."},{"rule":"Das Präteritum der Modalverben wird wie regelmäßige Verben konjugiert: -te, -test, -te, -ten, -tet, -ten.","note":"ich konnte, du konntest, er konnte, wir konnten, ihr konntet, sie konnten"},{"rule":"Im Präteritum steht das Modalverb als Vollverb ohne Infinitiv bei bekanntem Kontext.","note":"\"Ich musste nach Hause.\" (gehen ist implizit)"}]', '[{"german":"Die Party war fantastisch.","arabic":"الحفلة كانت رائعة.","english":"The party was fantastic."},{"german":"Ich hatte viel Spaß auf dem Fest.","arabic":"استمتعت كثيراً في المهرجان.","english":"I had a lot of fun at the festival."},{"german":"Wir konnten nicht kommen.","arabic":"لم نستطع المجيء.","english":"We could not come."},{"german":"Er musste früher gehen.","arabic":"اضطر للمغادرة مبكراً.","english":"He had to leave earlier."},{"german":"Sie durfte bis Mitternacht bleiben.","arabic":"سُمح لها بالبقاء حتى منتصف الليل.","english":"She was allowed to stay until midnight."}]', '[{"mistake":"Ich war auf der Party. (correct) but: Ich war gehen.","correction":"Ich bin gegangen.","explanation":"\"Sein\" im Präteritum (war) bedeutet \"was\", nicht \"went\". Für \"ging\" verwendet man \"ging\" oder \"bin gegangen\"."},{"mistake":"Ich habe gehabt (instead of Präteritum \"hatte\")","correction":"Ich hatte. (or: Ich habe gehabt – both possible, but \"hatte\" is more common)","explanation":"Im gesprochenen Deutsch wird oft \"hatte\" statt \"habe gehabt\" verwendet."},{"mistake":"Ich könntte kommen.","correction":"Ich konnte kommen.","explanation":"Falsche Schreibung: \"konnte\" (ohne Doppel-t)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "Weihnachten"?', '["عيد الفصح","عيد الميلاد","رأس السنة","عيد الحب"]', 'عيد الميلاد', '"Weihnachten" ist das christliche Weihnachtsfest.', 1, 1),
  (l_id, 'fill_gap', 'Die Party _____ sehr schön. (sein – Präteritum)', '["war","wäre","ist","sei"]', 'war', 'sein → Präteritum: war.', 1, 2),
  (l_id, 'translation', 'Übersetze: "I had a lot of fun."', '["Ich hatte viel Spaß.","Ich habe viel Spaß.","Ich war viel Spaß.","Ich hatte viel Freude."]', 'Ich hatte viel Spaß.', '"Hatten" im Präteritum: ich hatte.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist das Präteritum von "können" (ich)?', '["ich konnte","ich könnnte","ich kannte","ich kenne"]', 'ich konnte', 'können → Präteritum: ich konnte.', 1, 4),
  (l_id, 'fill_gap', 'Er _____ früher gehen. (müssen – Präteritum)', '["musste","müsste","muss","müsst"]', 'musste', 'müssen → Präteritum: musste.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "das Geschenk"?', '["هدية","دعوة","حفلة","كعكة"]', 'هدية', 1, 1),
  (l_id, 'true_false', '"War" ist das Präteritum von "sein".', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Ich _____ gestern Geburtstag. (haben – Präteritum)', '["hatte","habe","hätte","habt"]', 'hatte', 1, 3),
  (l_id, 'multiple_choice', 'Was ist das Präteritum von "dürfen" (er)?', '["er durfte","er dürfte","er darf","er darfste"]', 'er durfte', 1, 4),
  (l_id, 'true_false', '"Ostern" ist ein deutsches Fest im Frühling.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Wie sagt man "New Year" auf Deutsch?', '["Neujahr","Weihnachten","Geburtstag","Feiertag"]', 'Neujahr', 1, 6);

  -- Lesson 6.2: Einladungen und Feiern
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Einladungen und Feiern', 'Einladungen schreiben und auf Einladungen reagieren', 'Feste und Feiertage', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'feiern', 'يحتفل', 'to celebrate', NULL, NULL, 'verb', 'Wir feiern Weihnachten mit der Familie.', 'We celebrate Christmas with the family.', 1),
  (l_id, 'einladen', 'يدعو', 'to invite', NULL, NULL, 'verb', 'Ich lade dich zu meiner Party ein.', 'I invite you to my party.', 2),
  (l_id, 'die Party', 'حفلة', 'party', 'die', 'die Partys', 'noun', 'Die Party beginnt um 20 Uhr.', 'The party starts at 8 PM.', 3),
  (l_id, 'der Gast', 'ضيف', 'guest', 'der', 'die Gäste', 'noun', 'Alle Gäste sind herzlich willkommen.', 'All guests are warmly welcome.', 4),
  (l_id, 'die Torte', 'تورتة/كعكة', 'cake', 'die', 'die Torten', 'noun', 'Zum Geburtstag gibt es eine Torte.', 'For birthday there is a cake.', 5),
  (l_id, 'die Kerze', 'شمعة', 'candle', 'die', 'die Kerzen', 'noun', 'Auf der Torte sind sechs Kerzen.', 'There are six candles on the cake.', 6),
  (l_id, 'die Überraschung', 'مفاجأة', 'surprise', 'die', 'die Überraschungen', 'noun', 'Die Party war eine Überraschung.', 'The party was a surprise.', 7),
  (l_id, 'der Sekt', 'شمبانيا', 'sparkling wine', 'der', 'die Sekte', 'noun', 'An Silvester trinkt man Sekt.', 'On New Year''s Eve people drink sparkling wine.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Possessivartikel im Dativ', 'Possessivartikel (mein, dein, sein, ihr, unser, euer, ihr, Ihr) zeigen Besitz an. Im Dativ ändern sie ihre Endung. Für arabische Lernende: Dies entspricht den Possessivpronomen mit den Endungen für die Fälle, ähnlich wie im Arabischen die Possessivsuffixe (ـي، ـك، ـه، etc.).', '[{"rule":"Possessivartikel im Dativ: mein → meinem (m/n), meiner (f), meinen (Pl).","note":"meinem Freund, meiner Mutter, meinen Kindern"},{"rule":"Deklination: dein → deinem (m/n), deiner (f), deinen (Pl).","note":"deinem Vater, deiner Schwester, deinen Eltern"},{"rule":"sein/ihr: seinem/ihrem (m/n), seiner/ihrer (f), seinen/ihren (Pl).","note":"seinem Bruder, seiner Tante, seinen Geschwistern"},{"rule":"unser: unserem (m/n), unserer (f), unseren (Pl).","note":"unserem Onkel, unserer Familie, unseren Freunden"},{"rule":"euer: eurem (m/n), eurer (f), euren (Pl) – euer verliert -er- vor Endung.","note":"eurem Kind, eurer Mutter, euren Gästen"}]', '[{"german":"Ich gratuliere meinem Bruder zum Geburtstag.","arabic":"أهنئ أخي بعيد ميلاده.","english":"I congratulate my brother on his birthday."},{"german":"Wir danken unserer Mutter für das Geschenk.","arabic":"نشكر أمنا على الهدية.","english":"We thank our mother for the gift."},{"german":"Er hilft seiner Freundin bei der Vorbereitung.","arabic":"يساعد صديقته في التحضير.","english":"He helps his girlfriend with the preparations."},{"german":"Ich gebe meinen Gästen etwas zu trinken.","arabic":"أعطي ضيوفي شيئاً ليشربوه.","english":"I give my guests something to drink."},{"german":"Hast du deinem Vater schon erzählt?","arabic":"هل أخبرت والدك بالفعل؟","english":"Have you already told your father?"}]', '[{"mistake":"Ich gratuliere mein Bruder.","correction":"Ich gratuliere meinem Bruder.","explanation":"Gratulieren verlangt Dativ: meinem Bruder."},{"mistake":"Wir danken unsere Mutter.","correction":"Wir danken unserer Mutter.","explanation":"Dativ feminin: unserer Mutter."},{"mistake":"Ich helfe meinen Vater.","correction":"Ich helfe meinem Vater.","explanation":"\"Helfen\" + Dativ: meinem Vater (maskulin)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "feiern"?', '["يدعو","يحتفل","يهدي","يأكل"]', 'يحتفل', '"Feiern" bedeutet "to celebrate".', 1, 1),
  (l_id, 'fill_gap', 'Ich gratuliere _____ Freund. (mein – Dativ)', '["meinem","meinen","meiner","mein"]', 'meinem', 'Freund ist maskulin, Dativ: meinem Freund.', 1, 2),
  (l_id, 'translation', 'Übersetze: "I thank my friend." (female friend)', '["Ich danke meiner Freundin.","Ich danke meine Freundin.","Ich danke meinen Freundin.","Ich danke mein Freundin."]', 'Ich danke meiner Freundin.', 'Dativ feminin: meiner Freundin.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Possessivartikel "unser" im Dativ Plural?', '["unseren","unserer","unserem","unsere"]', 'unseren', 'Dativ Plural: unseren Freunden, unseren Gästen.', 1, 4),
  (l_id, 'fill_gap', 'Er gibt _____ Schwester ein Geschenk. (sein – Dativ)', '["seiner","seinem","seinen","sein"]', 'seiner', 'Schwester ist feminin, Dativ: seiner Schwester.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Gast"?', '["ضيف","مضيف","طباخ","نادل"]', 'ضيف', 1, 1),
  (l_id, 'true_false', 'Possessivartikel im Dativ haben Endungen wie der bestimmte Artikel.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Wir helfen _____ Nachbarn. (unser – Dativ Plural)', '["unseren","unserer","unserem","unsere"]', 'unseren', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Dativ von "mein" (maskulin/neutrum)?', '["meinem","meinen","meiner","meine"]', 'meinem', 1, 4),
  (l_id, 'true_false', '"Der Sekt" ist ein alkoholisches Getränk.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Wie sagt man "I invite you to my party."?', '["Ich lade dich zu meiner Party ein.","Ich lade dich für meine Party ein.","Ich lade dir zu meiner Party ein.","Ich lade dich zu mein Party ein."]', 'Ich lade dich zu meiner Party ein.', 1, 6);

  -- Lesson 6.3: Präteritum – Vertiefung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Präteritum – Vertiefung', 'Das Präteritum vertiefen mit regelmäßigen und unregelmäßigen Verben', 'Feste und Feiertage', 'grammar', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 60, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'Silvester', 'ليلة رأس السنة', 'New Year''s Eve', 'das', NULL, 'noun', 'An Silvester feiern wir bis Mitternacht.', 'On New Year''s Eve we celebrate until midnight.', 1),
  (l_id, 'der Weihnachtsbaum', 'شجرة عيد الميلاد', 'Christmas tree', 'der', 'die Weihnachtsbäume', 'noun', 'Der Weihnachtsbaum ist schön geschmückt.', 'The Christmas tree is beautifully decorated.', 2),
  (l_id, 'der Osterhase', 'أرنب عيد الفصح', 'Easter bunny', 'der', 'die Osterhasen', 'noun', 'Der Osterhase bringt die Eier.', 'The Easter bunny brings the eggs.', 3),
  (l_id, 'der Karneval', 'كرنفال', 'carnival', 'der', 'die Karnevale', 'noun', 'In Köln ist Karneval sehr groß.', 'In Cologne the carnival is very big.', 4),
  (l_id, 'das Oktoberfest', 'مهرجان أكتوبر', 'Oktoberfest', 'das', 'die Oktoberfeste', 'noun', 'Das Oktoberfest in München ist weltbekannt.', 'The Oktoberfest in Munich is world-famous.', 5),
  (l_id, 'der Nikolaustag', 'عيد القديس نيكولا', 'St. Nicholas Day', 'der', 'die Nikolaustage', 'noun', 'Am 6. Dezember ist Nikolaustag.', 'December 6th is St. Nicholas Day.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Präteritum der regelmäßigen und unregelmäßigen Verben', 'Im Präteritum gibt es regelmäßige (schwache) Verben und unregelmäßige (starke) Verben. Regelmäßige Verben bilden das Präteritum mit -te, unregelmäßige ändern den Stamm. Im A2-Niveau konzentrieren wir uns auf die wichtigsten unregelmäßigen Verben und die regelmäßige Bildung.', '[{"rule":"Regelmäßige Verben: Stamm + -te + Personalendung.","note":"machen → ich machte, du machtest, er machte, wir machten, ihr machtet, sie machten"},{"rule":"Verben auf -d, -t, -dm, -tm, -chn, -ffn: Stamm + -ete + Endung.","note":"arbeiten → ich arbeitete, du arbeitetest, er arbeitete"},{"rule":"Unregelmäßige Verben: Stammänderung + Personalendung (oft ohne Endung bei ich/er).","note":"gehen → ging, kommen → kam, geben → gab, sehen → sah"},{"rule":"Die wichtigsten unregelmäßigen Verben: gehen (ging), kommen (kam), geben (gab), sehen (sah), essen (aß), trinken (trank), finden (fand).","note":"Ich ging nach Hause. Er kam um 8 Uhr. Sie gab mir ein Geschenk."},{"rule":"Personalendungen bei unregelmäßigen Verben: -ø/-e, -st, -ø, -en, -t, -en.","note":"ich ging, du gingst, er ging, wir gingen, ihr gingt, sie gingen"}]', '[{"german":"Ich machte eine Party für meine Freunde.","arabic":"أقمت حفلة لأصدقائي.","english":"I threw a party for my friends."},{"german":"Er kam zu spät zur Feier.","arabic":"جاء متأخراً إلى الاحتفال.","english":"He came too late to the celebration."},{"german":"Sie gab mir ein schönes Geschenk.","arabic":"أعطتني هدية جميلة.","english":"She gave me a nice present."},{"german":"Wir aßen und tranken bis Mitternacht.","arabic":"أكلنا وشربنا حتى منتصف الليل.","english":"We ate and drank until midnight."},{"german":"Ich sah viele alte Freunde auf der Party.","arabic":"رأيت الكثير من الأصدقاء القدامى في الحفلة.","english":"I saw many old friends at the party."}]', '[{"mistake":"Ich gehete nach Hause.","correction":"Ich ging nach Hause.","explanation":"\"Gehen\" ist unregelmäßig: ich ging (nicht \"gehte\")."},{"mistake":"Er arbeite bis spät.","correction":"Er arbeitete bis spät.","explanation":"Verben auf -t: arbeiten → arbeitete (nicht \"arbeite\")."},{"mistake":"Ich trinkte viel Sekt.","correction":"Ich trank viel Sekt.","explanation":"\"Trinken\" ist stark: trinken → trank (nicht \"trinkte\")."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "Silvester"?', '["ليلة رأس السنة","عيد الميلاد","عيد الفصح","رأس السنة"]', 'ليلة رأس السنة', '"Silvester" ist der 31. Dezember.', 1, 1),
  (l_id, 'fill_gap', 'Ich _____ gestern eine Party. (machen – Präteritum)', '["machte","machtete","mache","macht"]', 'machte', 'Regelmäßiges Verb: machen → machte.', 1, 2),
  (l_id, 'translation', 'Übersetze: "He came late to the party."', '["Er kam spät zur Party.","Er kommt spät zur Party.","Er komme spät zur Party.","Er kame spät zur Party."]', 'Er kam spät zur Party.', '"Kommen" ist unregelmäßig: er kam (Präteritum).', 1, 3),
  (l_id, 'multiple_choice', 'Was ist das Präteritum von "sehen"?', '["sah","sehte","siehte","sehe"]', 'sah', 'Sehen → sah (starkes Verb).', 1, 4),
  (l_id, 'fill_gap', 'Wir _____ und tranken den ganzen Abend. (essen – Präteritum)', '["aßen","essen","aßten","essten"]', 'aßen', 'Essen → aßen (1. Person Plural Präteritum).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Weihnachtsbaum"?', '["شجرة عيد الميلاد","هدية عيد الميلاد","زينة عيد الميلاد","بطاقة عيد الميلاد"]', 'شجرة عيد الميلاد', 1, 1),
  (l_id, 'true_false', '"Gehen" ist ein regelmäßiges Verb.', '["Richtig","Falsch"]', 'Falsch', 1, 2),
  (l_id, 'fill_blank', 'Er _____ mir ein Buch. (geben – Präteritum)', '["gab","gebte","gebe","gibt"]', 'gab', 1, 3),
  (l_id, 'multiple_choice', 'Was ist das Präteritum von "arbeiten" (ich)?', '["ich arbeitete","ich arbeite","ich arbeitete","ich arbeitete"]', 'ich arbeitete', 1, 4),
  (l_id, 'true_false', '"Das Oktoberfest" findet in München statt.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'fill_blank', 'Wir _____ im Restaurant. (essen – Präteritum)', '["aßen","essen","aßten","essten"]', 'aßen', 1, 6);

  -- Lesson 6.4: Weihnachten in Deutschland
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Weihnachten in Deutschland', 'Einen Text über Weihnachtstraditionen in Deutschland lesen und verstehen', 'Feste und Feiertage', 'reading', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 50, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Advent', 'زمن المجيء', 'Advent', 'der', 'die Advente', 'noun', 'Im Advent zünden wir Kerzen an.', 'In Advent we light candles.', 1),
  (l_id, 'der Adventskranz', 'إكليل المجيء', 'Advent wreath', 'der', 'die Adventskränze', 'noun', 'Auf dem Adventskranz sind vier Kerzen.', 'There are four candles on the Advent wreath.', 2),
  (l_id, 'der Christkindlmarkt', 'سوق عيد الميلاد', 'Christmas market', 'der', 'die Christkindlmärkte', 'noun', 'Auf dem Christkindlmarkt gibt es Glühwein.', 'At the Christmas market there is mulled wine.', 3),
  (l_id, 'der Glühwein', 'نبيذ ساخن', 'mulled wine', 'der', 'die Glühweine', 'noun', 'Glühwein trinkt man warm auf dem Weihnachtsmarkt.', 'You drink mulled wine warm at the Christmas market.', 4),
  (l_id, 'der Heiligabend', 'ليلة عيد الميلاد', 'Christmas Eve', 'der', 'die Heiligabende', 'noun', 'Am Heiligabend gibt es Geschenke.', 'On Christmas Eve there are presents.', 5),
  (l_id, 'der Weihnachtsmann', 'بابا نويل', 'Santa Claus', 'der', 'die Weihnachtsmänner', 'noun', 'Der Weihnachtsmann bringt die Geschenke.', 'Santa Claus brings the presents.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Datumsangaben und Präpositionen bei Feiertagen', 'Bei Feiertagen verwendet man bestimmte Präpositionen: "an" (am) für einzelne Tage, "zu" für allgemeine Zeiträume. Für arabische Lernende: Die Verwendung der Präpositionen ist anders als im Arabischen, wo oft "في" verwendet wird.', '[{"rule":"\"An\" + Dativ für einzelne Feiertage: an Weihnachten, an Ostern, an Neujahr.","note":"An Weihnachten bin ich bei der Familie."},{"rule":"\"Am\" + Dativ für Datumsangaben: am 24. Dezember, am 1. Mai.","note":"Am 24. Dezember feiern wir Weihnachten."},{"rule":"\"Zu\" + Dativ für Zeiträume und Feste: zu Weihnachten, zu Ostern, zum Geburtstag.","note":"Zu Weihnachten schenkt man sich Geschenke."},{"rule":"\"An\" + Dativ für Wochentage: am Montag, am Wochenende.","note":"Am Wochenende war ich auf einer Party."},{"rule":"Präteritum mit Zeitangaben kombiniert: \"Letztes Jahr war ich zu Weihnachten in Berlin.\"","note":"Letztes Jahr war das Fest wunderschön."}]', '[{"german":"An Weihnachten bin ich bei meiner Familie.","arabic":"في عيد الميلاد أكون مع عائلتي.","english":"At Christmas I am with my family."},{"german":"Am 24. Dezember feiern wir Heiligabend.","arabic":"في 24 ديسمبر نحتفل بليلة عيد الميلاد.","english":"On December 24 we celebrate Christmas Eve."},{"german":"Zu Ostern suchen die Kinder bunte Eier.","arabic":"في عيد الفصح يبحث الأطفال عن البيض الملون.","english":"At Easter the children look for colored eggs."},{"german":"Letztes Jahr war ich auf dem Oktoberfest.","arabic":"في العام الماضي كنت في مهرجان أكتوبر.","english":"Last year I was at the Oktoberfest."},{"german":"Am Wochenende hatte ich eine Geburtstagsfeier.","arabic":"في عطلة نهاية الأسبوع كان لدي حفلة عيد ميلاد.","english":"On the weekend I had a birthday party."}]', '[{"mistake":"In Weihnachten (using \"in\" instead of \"an\")","correction":"An Weihnachten oder Zu Weihnachten.","explanation":"Bei Feiertagen verwendet man \"an\" oder \"zu\", nicht \"in\"."},{"mistake":"Am Weihnachten (wrong article)","correction":"An Weihnachten.","explanation":"Weihnachten ist Neutrum, aber \"an Weihnachten\" ohne Artikel (feststehender Ausdruck)."},{"mistake":"Letztes Jahr ich war auf der Party.","correction":"Letztes Jahr war ich auf der Party.","explanation":"Zeitangabe am Anfang: Verb an Position 2 (war)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Christkindlmarkt"?', '["سوق عيد الميلاد","كنيسة","شجرة عيد الميلاد","زينة"]', 'سوق عيد الميلاد', '"Der Christkindlmarkt" ist der Weihnachtsmarkt.', 1, 1),
  (l_id, 'fill_gap', '_____ Weihnachten gibt es Geschenke. (An/Zu/In)', '["An","Zu","In","Auf"]', 'An', '"An Weihnachten" oder "Zu Weihnachten" sind beide möglich.', 1, 2),
  (l_id, 'translation', 'Übersetze: "Last year I was at the Oktoberfest."', '["Letztes Jahr war ich auf dem Oktoberfest.","Letztes Jahr ich war auf dem Oktoberfest.","Voriges Jahr war ich auf dem Oktoberfest.","Letztes Jahr bin ich auf dem Oktoberfest."]', 'Letztes Jahr war ich auf dem Oktoberfest.', '"War" = Präteritum von "sein". Zeitangabe + Verb + Subjekt.', 1, 3),
  (l_id, 'multiple_choice', 'Welche Präposition passt für einzelne Feiertage?', '["an","in","auf","bei"]', 'an', '"An Weihnachten", "an Ostern", "an Neujahr".', 1, 4),
  (l_id, 'fill_gap', 'Am _____ Dezember ist Heiligabend. (24.)', '["24. Dezember","24. Dezembern","24. Dezembers","24. Dezemberen"]', '24. Dezember', '"Am 24. Dezember" (Ordinalzahl + Monat).', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Glühwein"?', '["نبيذ أحمر","نبيذ ساخن","جعة","عصير"]', 'نبيذ ساخن', 1, 1),
  (l_id, 'true_false', '"Der Heiligabend" ist am 24. Dezember.', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', '_____ 1. Mai ist ein Feiertag. (Am/An/Im)', '["Am","An","Im","In"]', 'Am', 1, 3),
  (l_id, 'multiple_choice', 'Was ist die Präposition für "at Christmas"?', '["an Weihnachten","in Weihnachten","bei Weihnachten","auf Weihnachten"]', 'an Weihnachten', 1, 4),
  (l_id, 'true_false', '"Letztes Jahr" bedeutet "this year".', '["Richtig","Falsch"]', 'Falsch', 1, 5),
  (l_id, 'multiple_choice', 'Wie sagt man "Santa Claus" auf Deutsch?', '["der Weihnachtsmann","der Osterhase","der Nikolaustag","der Christkindlmarkt"]', 'der Weihnachtsmann', 1, 6);

  -- Lesson 6.5: Wiederholung: Feste und Feiertage
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Wiederholung: Feste und Feiertage', 'Alle Themen aus Modul 6 wiederholen und festigen', 'Feste und Feiertage', 'review', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 45, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Tradition', 'التقليد', 'tradition', 'die', 'die Traditionen', 'noun', 'In Deutschland gibt es viele Traditionen.', 'In Germany there are many traditions.', 1),
  (l_id, 'der Brauch', 'العادة/التقليد', 'custom', 'der', 'die Bräuche', 'noun', 'Das ist ein alter Brauch in dieser Region.', 'That is an old custom in this region.', 2),
  (l_id, 'die Feier', 'الاحتفال', 'celebration', 'die', 'die Feiern', 'noun', 'Die Feier war sehr gelungen.', 'The celebration was very successful.', 3),
  (l_id, 'schmücken', 'يزيّن', 'to decorate', NULL, NULL, 'verb', 'Wir schmücken den Weihnachtsbaum.', 'We decorate the Christmas tree.', 4),
  (l_id, 'schenken', 'يهدي', 'to give (a present)', NULL, NULL, 'verb', 'Was schenkst du deiner Mutter?', 'What are you giving your mother?', 5),
  (l_id, 'der Wunsch', 'الرغبة/الأمنية', 'wish', 'der', 'die Wünsche', 'noun', 'Ich habe mir etwas gewünscht.', 'I made a wish.', 6);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Wiederholung: Präteritum, Possessivartikel im Dativ, Datumsangaben', 'Wir wiederholen das Präteritum (war, hatte, Modalverben und starke Verben), die Possessivartikel im Dativ und die Datumsangaben bei Feiertagen.', '[{"rule":"Präteritum: sein (war), haben (hatte), können (konnte), müssen (musste).","note":"Ich war, du warst, er war. Ich hatte, du hattest, er hatte."},{"rule":"Possessivartikel im Dativ: meinem (m/n), meiner (f), meinen (Pl).","note":"meinem Bruder, meiner Schwester, meinen Eltern"},{"rule":"Präpositionen bei Feiertagen: an + Fest, am + Datum, zu + Fest.","note":"an Weihnachten, am 24.12., zu Ostern"},{"rule":"Starke Verben im Präteritum: gehen (ging), kommen (kam), geben (gab), essen (aß).","note":"Ich ging, du gingst, er ging. Wir kamen, ihr kamt, sie kamen."}]', '[{"german":"Letztes Jahr war ich zu Weihnachten in Berlin.","arabic":"في العام الماضي كنت في برلين في عيد الميلاد.","english":"Last year I was in Berlin for Christmas."},{"german":"Ich gab meiner Mutter ein schönes Geschenk.","arabic":"أعطيت أمي هدية جميلة.","english":"I gave my mother a beautiful present."},{"german":"Wir hatten viel Spaß auf der Feier.","arabic":"استمتعنا كثيراً في الاحتفال.","english":"We had a lot of fun at the celebration."},{"german":"Er konnte nicht zu meiner Party kommen.","arabic":"لم يستطع المجيء إلى حفلتي.","english":"He could not come to my party."}]', '[{"mistake":"Ich habe gehabt viel Spaß. (instead of Präteritum)","correction":"Ich hatte viel Spaß.","explanation":"Im Präteritum: \"ich hatte\", nicht \"ich habe gehabt\" (obwohl Perfekt auch möglich ist)."},{"mistake":"Ich habe meinem Freund geholfen. (correct, Präteritum would be: Ich half meinem Freund.)","correction":"Ich half meinem Freund. (Präteritum) oder Ich habe meinem Freund geholfen. (Perfekt)","explanation":"Beide Formen sind korrekt, aber das Präteritum von \"helfen\" ist \"half\"."},{"mistake":"An Ostern ich war bei meiner Familie.","correction":"An Ostern war ich bei meiner Familie.","explanation":"Nach der Zeitangabe: Verb an Position 2 (war)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Brauch"?', '["التقليد","الهدية","الاحتفال","الدعوة"]', 'التقليد', '"Der Brauch" ist ein kultureller Brauch oder eine Tradition.', 1, 1),
  (l_id, 'fill_gap', 'Letztes Jahr _____ ich zu Hause. (sein – Präteritum)', '["war","bin","warst","wäre"]', 'war', 'sein → Präteritum: ich war.', 1, 2),
  (l_id, 'translation', 'Übersetze: "I gave my friend a present." (male friend)', '["Ich gab meinem Freund ein Geschenk.","Ich gab meinen Freund ein Geschenk.","Ich gab mein Freund ein Geschenk.","Ich gab meiner Freund ein Geschenk."]', 'Ich gab meinem Freund ein Geschenk.', 'Dativ maskulin: meinem Freund. "Geben" Präteritum: gab.', 1, 3),
  (l_id, 'multiple_choice', 'Welche Präposition + Feiertag ist korrekt?', '["an Weihnachten","in Weihnachten","auf Weihnachten","bei Weihnachten"]', 'an Weihnachten', '"An Weihnachten" oder "Zu Weihnachten".', 1, 4),
  (l_id, 'fill_gap', 'Ich danke _____ Eltern für die Einladung. (mein – Dativ Plural)', '["meinen","meinem","meiner","meine"]', 'meinen', 'Dativ Plural: meinen Eltern.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "schmücken"?', '["يزيّن","يهدي","يحتفل","يدعو"]', 'يزيّن', 1, 1),
  (l_id, 'true_false', '"Konnte" ist das Präteritum von "können".', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Er _____ um 8 Uhr. (kommen – Präteritum)', '["kam","kommt","kame","kommte"]', 'kam', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Possessivartikel "euer" im Dativ feminin?', '["eurer","eurem","euren","eure"]', 'eurer', 1, 4),
  (l_id, 'true_false', '"Der Nikolaustag" ist am 6. Dezember.', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Welches Verb ist unregelmäßig im Präteritum?', '["machen","gehen","arbeiten","kaufen"]', 'gehen', 1, 6);

  -- Lesson 6.6: Test: Feste und Feiertage
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Feste und Feiertage', 'Abschlusstest für Modul 6', 'Feste und Feiertage', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 40, 6, true)
  returning id into l_id;

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "die Feier"?', '["الاحتفال","العطلة","الهدية","الدعوة"]', 'الاحتفال', '"Die Feier" ist die celebration.', 1, 1),
  (l_id, 'fill_gap', 'Die Party _____ gestern sehr schön. (sein – Präteritum)', '["war","ist","wäre","sei"]', 'war', 'sein → Präteritum: war.', 1, 2),
  (l_id, 'translation', 'Übersetze: "I could not come to the party."', '["Ich konnte nicht zur Party kommen.","Ich kann nicht zur Party kommen.","Ich könnte nicht zur Party kommen.","Ich kann nicht gekommen."]', 'Ich konnte nicht zur Party kommen.', 'Präteritum von "können": konnte.', 1, 3),
  (l_id, 'multiple_choice', 'Was ist der Possessivartikel "mein" im Dativ feminin?', '["meiner","meinem","meinen","meine"]', 'meiner', 'Dativ feminin: meiner.', 1, 4),
  (l_id, 'fill_gap', 'Ich danke _____ Vater für das Geschenk. (mein – Dativ)', '["meinem","meinen","meiner","mein"]', 'meinem', 'Vater ist maskulin, Dativ: meinem Vater.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Was bedeutet "der Wunsch"?', '["الرغبة/الأمنية","الهدية","العطلة","التقليد"]', 'الرغبة/الأمنية', 1, 1),
  (l_id, 'true_false', '"Hatte" ist das Präteritum von "haben".', '["Richtig","Falsch"]', 'Richtig', 1, 2),
  (l_id, 'fill_blank', 'Ich _____ meiner Schwester ein Buch. (geben – Präteritum)', '["gab","gebe","gibt","gebte"]', 'gab', 1, 3),
  (l_id, 'multiple_choice', 'Welche Präposition verwendet man vor Feiertagen?', '["an","in","auf","unter"]', 'an', 1, 4),
  (l_id, 'true_false', '"Ich ging" ist Präteritum von "gehen".', '["Richtig","Falsch"]', 'Richtig', 1, 5),
  (l_id, 'multiple_choice', 'Wie sagt man "last year" auf Deutsch?', '["letztes Jahr","dieses Jahr","nächstes Jahr","voriges Jahr"]', 'letztes Jahr', 1, 6),
  (l_id, 'fill_blank', '_____ Weihnachten bin ich bei der Familie. (An/In/Auf)', '["An","In","Auf","Bei"]', 'An', 1, 7),
  (l_id, 'multiple_choice', 'Was ist das Präteritum von "trinken"?', '["trank","trinkte","trankt","getrunken"]', 'trank', 1, 8);

end $$;
