do $$
declare
  l_id uuid;
begin

  -- ====================================================================
  -- MODULE 4: Einkaufen und Essen - Listening
  -- ====================================================================
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('81ba0cad-eaee-496d-89a6-5d93db96b244', 'Im Supermarkt', 'Listen to a short shopping dialogue and identify items and prices.', 'Listening', 'listening', '["Understand prices and quantities","Identify food items by name","Follow a simple shopping conversation"]', 20, 8, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Dialog: A: "Guten Tag, was möchten Sie?" B: "Ich möchte Äpfel, bitte. Was kosten sie?" A: "2 Euro pro Kilo." B: "Gut, ich nehme ein Kilo. Und dann noch Milch, bitte." A: "Die Milch kostet 1,50 Euro." B: "OK, das ist alles. Was macht das zusammen?" A: "3,50 Euro." What does the person buy?', '["Only apples", "Apples and milk", "Apples and bread", "Milk and bread"]', 'Apples and milk', 'Äpfel und Milch.', 1, 1),
  (l_id, 'true_false', 'The apples cost 2 Euro per kilo.', '["True", "False"]', 'True', '2 Euro pro Kilo.', 1, 2),
  (l_id, 'fill_gap', 'Total: ___ Euro.', '["2,50", "3,00", "3,50", "4,00"]', '3,50', '2,00 + 1,50 = 3,50.', 1, 3);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "was macht das zusammen?" mean?', '["What is that?", "What is the total?", "What do you have?", "What do you want?"]', 'What is the total?', 1, 1),
  (l_id, 'multiple_choice', 'Was kosten die Äpfel?', '["1 Euro", "2 Euro", "3 Euro", "4 Euro"]', '2 Euro', 1, 2);

  -- ====================================================================
  -- MODULE 4: Writing
  -- ====================================================================
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('81ba0cad-eaee-496d-89a6-5d93db96b244', 'Einkaufsliste', 'Write a short shopping list and simple sentences about food.', 'Writing', 'writing', '["Write a simple shopping list","Use accusative correctly","Write prices in German"]', 25, 9, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'translation', 'Translate: "I buy the bread."', '[]', 'Ich kaufe das Brot.', 'Brot is neuter → das.', 2, 1),
  (l_id, 'fill_gap', 'Ich kaufe ___ (ein) Apfel.', '["einen", "ein", "eine", "einer"]', 'einen', 'Apfel is masculine → einen (accusative).', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'How do you write "2 euros 50"?', '["2.50 Euro", "2,50 Euro", "2:50 Euro", "2-50 Euro"]', '2,50 Euro', 1, 1),
  (l_id, 'fill_blank', 'Ich möchte ___ (ein) Kaffee.', '["einen", "ein", "eine", "einer"]', 'einen', 1, 2);

  -- ====================================================================
  -- MODULE 5: Arbeit und Beruf - Listening
  -- ====================================================================
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('18d0ee8e-2642-4e84-b9cd-2e7fc3519b9d', 'Im Büro', 'Listen to a short conversation in an office setting.', 'Listening', 'listening', '["Understand basic work-related dialogue","Identify job titles","Follow simple instructions"]', 20, 9, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Dialog: A: "Guten Morgen, Herr Schneider." B: "Guten Morgen, Frau Weber. Wie geht es Ihnen?" A: "Gut, danke. Arbeiten Sie heute an dem Projekt?" B: "Ja, ich arbeite bis 17 Uhr daran." A: "Gut, dann besprechen wir es morgen." What time does Herr Schneider work until?', '["15 Uhr", "16 Uhr", "17 Uhr", "18 Uhr"]', '17 Uhr', 'Ich arbeite bis 17 Uhr.', 1, 1),
  (l_id, 'true_false', 'Frau Weber and Herr Schneider will discuss the project tomorrow.', '["True", "False"]', 'True', 'dann besprechen wir es morgen.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "bis 17 Uhr" mean?', '["At 5 PM", "Until 5 PM", "From 5 PM", "After 5 PM"]', 'Until 5 PM', 1, 1),
  (l_id, 'multiple_choice', 'What is the project discussion plan?', '["Today", "Tomorrow", "Next week", "Canceled"]', 'Tomorrow', 1, 2);

  -- ====================================================================
  -- MODULE 6: Reisen und Freizeit - Listening
  -- ====================================================================
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('d7c244c8-fda5-4828-a7eb-f8a1e7924e92', 'Am Bahnhof', 'Listen to a short dialogue at the train station.', 'Listening', 'listening', '["Understand basic travel phrases","Identify train times and platforms","Follow ticket purchasing dialogue"]', 20, 8, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Dialog: A: "Ich möchte eine Fahrkarte nach München." B: "Einfach oder hin und zurück?" A: "Hin und zurück, bitte." B: "Das kostet 80 Euro. Der Zug fährt um 10 Uhr ab Gleis 5." A: "Danke!" What kind of ticket does the person buy?', '["One-way", "Round trip", "First class", "Weekly pass"]', 'Round trip', 'Hin und zurück = round trip.', 1, 1),
  (l_id, 'fill_gap', 'The train departs at ___ o clock.', '["9", "10", "11", "12"]', '10', 'Der Zug fährt um 10 Uhr.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "Gleis 5" mean?', '["Track 5", "Gate 5", "Platform 5", "Counter 5"]', 'Platform 5', 1, 1),
  (l_id, 'multiple_choice', 'What does "einfach" mean?', '["Round trip", "One-way", "Simple", "First class"]', 'One-way', 1, 2);

  -- ====================================================================
  -- MODULE 6: Writing
  -- ====================================================================
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('d7c244c8-fda5-4828-a7eb-f8a1e7924e92', 'Meine Reise', 'Write a short text about a trip or holiday plan.', 'Writing', 'writing', '["Write 3-4 sentences about travel plans","Use modal verbs correctly","Use time expressions"]', 25, 9, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "I want to travel to Berlin"?', '["Ich will nach Berlin reisen", "Ich möchte nach Berlin reisen", "Ich reise nach Berlin", "All are possible"]', 'All are possible', 'Will, möchte, and reise are all valid.', 1, 1),
  (l_id, 'translation', 'Translate: "Next week I go to Austria."', '[]', 'Nächste Woche fahre ich nach Österreich.', 'Use fahren for traveling by vehicle.', 2, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "by train"?', '["mit dem Zug", "mit der Zug", "mit das Zug", "mit den Zug"]', 'mit dem Zug', 1, 1),
  (l_id, 'fill_blank', 'Nächste Woche ___ ich nach Berlin.', '["fahre", "fährt", "fährst", "fahren"]', 'fahre', 1, 2);

end $$;
