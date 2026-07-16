DO $$
DECLARE
  r RECORD;
BEGIN

  -- A1: Hallo! Erste Schritte > Erste Kontakte [reading]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Erste', 'Erste', 'Erste', 'noun', 'Erste ist wichtig.', 'Erste is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('2d07cbf5-2116-4e3a-b7c6-8ce5f1448b22', 'Kontakte', 'Kontakte', 'Kontakte', 'noun', 'Kontakte ist wichtig.', 'Kontakte is important.', 2) ON CONFLICT DO NOTHING;

  -- A1: Hallo! Erste Schritte > Ein Gespräch [listening]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('9dbd0443-b275-4cc2-a8fe-4e96076ca504', 'Gespräch', 'Gespräch', 'Gespräch', 'noun', 'Gespräch ist wichtig.', 'Gespräch is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Hallo! Erste Schritte > Sich vorstellen [speaking]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'Sich', 'Sich', 'Sich', 'noun', 'Sich ist wichtig.', 'Sich is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('244d8958-1f6d-40ba-afba-6b6be43888d1', 'vorstellen', 'vorstellen', 'vorstellen', 'noun', 'vorstellen ist wichtig.', 'vorstellen is important.', 2) ON CONFLICT DO NOTHING;

  -- A1: Hallo! Erste Schritte > Mein Steckbrief [writing]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Mein', 'Mein', 'Mein', 'noun', 'Mein ist wichtig.', 'Mein is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('beaca6b1-dc18-48d1-aaae-3c4d09a1a1d8', 'Steckbrief', 'Steckbrief', 'Steckbrief', 'noun', 'Steckbrief ist wichtig.', 'Steckbrief is important.', 2) ON CONFLICT DO NOTHING;

  -- B1: Gesundheit und ErnÃ¤hrung > ErnÃ¤hrung und NÃ¤hrstoffe [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Ernhrung', 'Ernhrung', 'Ernhrung', 'noun', 'Ernhrung ist wichtig.', 'Ernhrung is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d3a1ea7e-911d-4330-bf00-b9318a69c687', 'Nhrstoffe', 'Nhrstoffe', 'Nhrstoffe', 'noun', 'Nhrstoffe ist wichtig.', 'Nhrstoffe is important.', 2) ON CONFLICT DO NOTHING;

  -- B1: Gesundheit und ErnÃ¤hrung > PrÃ¤positionaladverbien und FinalsÃ¤tze [grammar]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('f45a61cd-3703-4d62-8e96-051939ca6326', 'multiple_choice', 'Question about PrÃ¤positionaladverbien und FinalsÃ¤tze?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B1: Gesundheit und ErnÃ¤hrung > Test: Gesundheit und ErnÃ¤hrung [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('f19ef1f6-efd2-46a6-aa1d-a47f3924afb8', 'multiple_choice', 'Test question about Test: Gesundheit und ErnÃ¤hrung?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Kleidung und Mode > Test: Kleidung und Mode [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('fd2746c6-6a06-4c12-b4cd-f60c869c4935', 'multiple_choice', 'Test question about Test: Kleidung und Mode?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- C2: Rechtssprache > Juristische Grundbegriffe [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Juristische', 'Juristische', 'Juristische', 'noun', 'Juristische ist wichtig.', 'Juristische is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'Grundbegriffe', 'Grundbegriffe', 'Grundbegriffe', 'noun', 'Grundbegriffe ist wichtig.', 'Grundbegriffe is important.', 2) ON CONFLICT DO NOTHING;

  -- C2: Rechtssprache > Juristische Grundbegriffe [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('f1d04d96-8cb6-4829-a4f8-49061e11cbfb', 'multiple_choice', 'Question about Juristische Grundbegriffe?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- C1: Politische Diskurse > Konjunktiv und Modalverben in der Politik [grammar]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e73908c8-c80c-4fe4-99a7-bd27b2382a63', 'multiple_choice', 'Question about Konjunktiv und Modalverben in der Politik?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- C1: Politische Diskurse > Test: Politische Diskurse [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('ae8cee9d-d1c9-417e-974a-586d5c7a8432', 'multiple_choice', 'Test question about Test: Politische Diskurse?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- B2: Wirtschaft und Politik > Test: Wirtschaft und Politik [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('b3aeca46-0bc8-4fe4-9a5f-6ecf602622ed', 'multiple_choice', 'Test question about Test: Wirtschaft und Politik?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Arbeit und Beruf > Berufe [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d2317b69-5e0b-4b03-8850-05bc452ab07c', 'Berufe', 'Berufe', 'Berufe', 'noun', 'Berufe ist wichtig.', 'Berufe is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Arbeit und Beruf > Test: Arbeit und Beruf [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('b209625c-c869-4243-91ba-9066b6a098f1', 'multiple_choice', 'Test question about Test: Arbeit und Beruf?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Arbeit und Beruf > Beruf kennenlernen [reading]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('079d462d-66ff-4343-a003-13a2db31508c', 'Beruf', 'Beruf', 'Beruf', 'noun', 'Beruf ist wichtig.', 'Beruf is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('079d462d-66ff-4343-a003-13a2db31508c', 'kennenlernen', 'kennenlernen', 'kennenlernen', 'noun', 'kennenlernen ist wichtig.', 'kennenlernen is important.', 2) ON CONFLICT DO NOTHING;

  -- A1: Arbeit und Beruf > Was machst du? [speaking]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('816bbb8f-1488-4cdd-b7b2-18f3e268ff4e', 'machst', 'machst', 'machst', 'noun', 'machst ist wichtig.', 'machst is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Arbeit und Beruf > Mein Beruf [writing]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('22823503-dd29-40b3-af75-70ab2324eb95', 'Mein', 'Mein', 'Mein', 'noun', 'Mein ist wichtig.', 'Mein is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('22823503-dd29-40b3-af75-70ab2324eb95', 'Beruf', 'Beruf', 'Beruf', 'noun', 'Beruf ist wichtig.', 'Beruf is important.', 2) ON CONFLICT DO NOTHING;

  -- A1: Arbeit und Beruf > Im Büro [listening]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('3f14d25f-8b86-487b-9b9c-cbfb6f5e7dea', 'Büro', 'Büro', 'Büro', 'noun', 'Büro ist wichtig.', 'Büro is important.', 1) ON CONFLICT DO NOTHING;

  -- A2: Essen und Trinken > Im Restaurant [reading]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'Restaurant', 'Restaurant', 'Restaurant', 'noun', 'Restaurant ist wichtig.', 'Restaurant is important.', 1) ON CONFLICT DO NOTHING;

  -- A2: Essen und Trinken > Im Restaurant [reading]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e3f5b876-44cf-477e-96fb-c07fd8d04110', 'multiple_choice', 'Question about Im Restaurant?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Stadt und Verkehr > Wechselpräpositionen vertiefen [grammar]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e37f45b7-bc4a-4d3a-a54c-9b49830f7f94', 'multiple_choice', 'Question about Wechselpräpositionen vertiefen?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B2: Diskussion und Argumentation > Debatte und Meinungsäußerung [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Debatte', 'Debatte', 'Debatte', 'noun', 'Debatte ist wichtig.', 'Debatte is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'Meinungsäußerung', 'Meinungsäußerung', 'Meinungsäußerung', 'noun', 'Meinungsäußerung ist wichtig.', 'Meinungsäußerung is important.', 2) ON CONFLICT DO NOTHING;

  -- B2: Diskussion und Argumentation > Debatte und Meinungsäußerung [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('fbe1f52b-48fd-49c1-b98d-ac1a12f78ab1', 'multiple_choice', 'Question about Debatte und Meinungsäußerung?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B2: Diskussion und Argumentation > Wunschvorstellungen und Zukunftspläne [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Wunschvorstellungen', 'Wunschvorstellungen', 'Wunschvorstellungen', 'noun', 'Wunschvorstellungen ist wichtig.', 'Wunschvorstellungen is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'Zukunftspläne', 'Zukunftspläne', 'Zukunftspläne', 'noun', 'Zukunftspläne ist wichtig.', 'Zukunftspläne is important.', 2) ON CONFLICT DO NOTHING;

  -- B2: Diskussion und Argumentation > Wunschvorstellungen und Zukunftspläne [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('fe0c15ef-0db7-42ee-8d34-7d4269349aef', 'multiple_choice', 'Question about Wunschvorstellungen und Zukunftspläne?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B2: Diskussion und Argumentation > Diskussion führen [reading]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('fae98a6c-2406-4000-894b-059e2bf1f272', 'Diskussion', 'Diskussion', 'Diskussion', 'noun', 'Diskussion ist wichtig.', 'Diskussion is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('fae98a6c-2406-4000-894b-059e2bf1f272', 'führen', 'führen', 'führen', 'noun', 'führen ist wichtig.', 'führen is important.', 2) ON CONFLICT DO NOTHING;

  -- B2: Diskussion und Argumentation > Diskussion führen [reading]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('fae98a6c-2406-4000-894b-059e2bf1f272', 'multiple_choice', 'Question about Diskussion führen?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B2: Diskussion und Argumentation > Test: Diskussion und Argumentation [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('b9a43894-2739-41e8-aca5-7a8695047ad3', 'multiple_choice', 'Test question about Test: Diskussion und Argumentation?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- B1: Umwelt und Natur > Umwelt und Klima [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ce5a75f5-aed7-472b-aa09-d0097f90d15d', 'Umwelt', 'Umwelt', 'Umwelt', 'noun', 'Umwelt ist wichtig.', 'Umwelt is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ce5a75f5-aed7-472b-aa09-d0097f90d15d', 'Klima', 'Klima', 'Klima', 'noun', 'Klima ist wichtig.', 'Klima is important.', 2) ON CONFLICT DO NOTHING;

  -- B1: Umwelt und Natur > Natur und Jahreszeiten [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('f3ddf704-2cf0-4b5d-8afe-e2f5a30a907d', 'Natur', 'Natur', 'Natur', 'noun', 'Natur ist wichtig.', 'Natur is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('f3ddf704-2cf0-4b5d-8afe-e2f5a30a907d', 'Jahreszeiten', 'Jahreszeiten', 'Jahreszeiten', 'noun', 'Jahreszeiten ist wichtig.', 'Jahreszeiten is important.', 2) ON CONFLICT DO NOTHING;

  -- B1: Umwelt und Natur > Natur und Jahreszeiten [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('f3ddf704-2cf0-4b5d-8afe-e2f5a30a907d', 'multiple_choice', 'Question about Natur und Jahreszeiten?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B1: Umwelt und Natur > Zweiteilige Konnektoren und Adjektivdeklination [grammar]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e98cef30-38b8-4e6c-bc62-12ad17547ed8', 'multiple_choice', 'Question about Zweiteilige Konnektoren und Adjektivdeklination?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- C1: Literatur und Kunst > Literaturwissenschaftliche Grundbegriffe [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('c044b317-5465-4ffa-9b0d-b65a545a102b', 'Literaturwissenschaftliche', 'Literaturwissenschaftliche', 'Literaturwissenschaftliche', 'noun', 'Literaturwissenschaftliche ist wichtig.', 'Literaturwissenschaftliche is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('c044b317-5465-4ffa-9b0d-b65a545a102b', 'Grundbegriffe', 'Grundbegriffe', 'Grundbegriffe', 'noun', 'Grundbegriffe ist wichtig.', 'Grundbegriffe is important.', 2) ON CONFLICT DO NOTHING;

  -- C1: Literatur und Kunst > Stilmittel und Sprachregister [grammar]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('fc3ff0d6-509d-4da2-b58e-fe64983b02ca', 'multiple_choice', 'Question about Stilmittel und Sprachregister?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- C1: Literatur und Kunst > Test: Literatur und Kunst [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('c7ca23c9-3b42-45c0-b84e-b322e146a70f', 'multiple_choice', 'Test question about Test: Literatur und Kunst?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- B1: Beziehungen und Kommunikation > Modalverben zur subjektiven Bedeutung [grammar]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e8d9c7cf-7ee2-447a-b4b6-2abd9f0e70ad', 'multiple_choice', 'Question about Modalverben zur subjektiven Bedeutung?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Feste und Feiertage > Feste und Feiertage in Deutschland [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ca22e8d3-db12-46d6-98c5-30745f894b0e', 'Feste', 'Feste', 'Feste', 'noun', 'Feste ist wichtig.', 'Feste is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ca22e8d3-db12-46d6-98c5-30745f894b0e', 'Feiertage', 'Feiertage', 'Feiertage', 'noun', 'Feiertage ist wichtig.', 'Feiertage is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ca22e8d3-db12-46d6-98c5-30745f894b0e', 'Deutschland', 'Deutschland', 'Deutschland', 'noun', 'Deutschland ist wichtig.', 'Deutschland is important.', 3) ON CONFLICT DO NOTHING;

  -- B2: Fachsprache und Terminologie > Grammatik: Komplexe Nominalphrasen [grammar]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e30adbc8-37fb-43c6-b420-792b1d1a38a5', 'multiple_choice', 'Question about Grammatik: Komplexe Nominalphrasen?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B2: Fachsprache und Terminologie > Test: Fachsprache und Terminologie [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('f5c67593-513a-4e4a-b917-4e8ba3242f06', 'multiple_choice', 'Test question about Test: Fachsprache und Terminologie?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- C1: Medienanalyse > Nachrichten und Berichterstattung [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('dc862b0d-2b8e-4713-a393-70b74b32fcba', 'Nachrichten', 'Nachrichten', 'Nachrichten', 'noun', 'Nachrichten ist wichtig.', 'Nachrichten is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('dc862b0d-2b8e-4713-a393-70b74b32fcba', 'Berichterstattung', 'Berichterstattung', 'Berichterstattung', 'noun', 'Berichterstattung ist wichtig.', 'Berichterstattung is important.', 2) ON CONFLICT DO NOTHING;

  -- C1: Medienanalyse > Nachrichten und Berichterstattung [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('dc862b0d-2b8e-4713-a393-70b74b32fcba', 'multiple_choice', 'Question about Nachrichten und Berichterstattung?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- C2: Linguistik und Stilistik > Wortbildung: Komposition, Derivation, Konversion [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('eb36f12c-40a0-488a-9465-01c1d730d43b', 'Wortbildung', 'Wortbildung', 'Wortbildung', 'noun', 'Wortbildung ist wichtig.', 'Wortbildung is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('eb36f12c-40a0-488a-9465-01c1d730d43b', 'Komposition', 'Komposition', 'Komposition', 'noun', 'Komposition ist wichtig.', 'Komposition is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('eb36f12c-40a0-488a-9465-01c1d730d43b', 'Derivation', 'Derivation', 'Derivation', 'noun', 'Derivation ist wichtig.', 'Derivation is important.', 3) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('eb36f12c-40a0-488a-9465-01c1d730d43b', 'Konversion', 'Konversion', 'Konversion', 'noun', 'Konversion ist wichtig.', 'Konversion is important.', 4) ON CONFLICT DO NOTHING;

  -- C2: Linguistik und Stilistik > Wortbildung: Komposition, Derivation, Konversion [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('eb36f12c-40a0-488a-9465-01c1d730d43b', 'multiple_choice', 'Question about Wortbildung: Komposition, Derivation, Konversion?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Körper und Gesundheit > Beim Arzt [listening]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('eda6189b-7919-48ce-8a90-c32b4f915b20', 'Beim', 'Beim', 'Beim', 'noun', 'Beim ist wichtig.', 'Beim is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('eda6189b-7919-48ce-8a90-c32b4f915b20', 'Arzt', 'Arzt', 'Arzt', 'noun', 'Arzt ist wichtig.', 'Arzt is important.', 2) ON CONFLICT DO NOTHING;

  -- A2: Körper und Gesundheit > Beim Arzt [listening]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('eda6189b-7919-48ce-8a90-c32b4f915b20', 'multiple_choice', 'Question about Beim Arzt?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Körper und Gesundheit > Test: Körper und Gesundheit [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('bf238012-7105-465b-8101-09016faf5182', 'multiple_choice', 'Test question about Test: Körper und Gesundheit?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- C2: Diplomatie und Verhandlung > Diplomatischer Wortschatz [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('dabd1631-a30a-4d5b-bce4-959fa3dc15b7', 'Diplomatischer', 'Diplomatischer', 'Diplomatischer', 'noun', 'Diplomatischer ist wichtig.', 'Diplomatischer is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('dabd1631-a30a-4d5b-bce4-959fa3dc15b7', 'Wortschatz', 'Wortschatz', 'Wortschatz', 'noun', 'Wortschatz ist wichtig.', 'Wortschatz is important.', 2) ON CONFLICT DO NOTHING;

  -- C2: Diplomatie und Verhandlung > Diplomatischer Wortschatz [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('dabd1631-a30a-4d5b-bce4-959fa3dc15b7', 'multiple_choice', 'Question about Diplomatischer Wortschatz?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- C2: Diplomatie und Verhandlung > Verhandlungsstrategien [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('be57fee2-d681-44da-9aff-d81c7e6c358c', 'Verhandlungsstrategien', 'Verhandlungsstrategien', 'Verhandlungsstrategien', 'noun', 'Verhandlungsstrategien ist wichtig.', 'Verhandlungsstrategien is important.', 1) ON CONFLICT DO NOTHING;

  -- C2: Diplomatie und Verhandlung > Verhandlungsgespräche führen [speaking]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('c33a80c3-0727-4965-b50d-469f590c1959', 'Verhandlungsgespräche', 'Verhandlungsgespräche', 'Verhandlungsgespräche', 'noun', 'Verhandlungsgespräche ist wichtig.', 'Verhandlungsgespräche is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('c33a80c3-0727-4965-b50d-469f590c1959', 'führen', 'führen', 'führen', 'noun', 'führen ist wichtig.', 'führen is important.', 2) ON CONFLICT DO NOTHING;

  -- B2: Kultur und Gesellschaft > Kulturelle Ereignisse und Traditionen [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ef22d91e-6459-4052-a6e3-e5df55665262', 'Kulturelle', 'Kulturelle', 'Kulturelle', 'noun', 'Kulturelle ist wichtig.', 'Kulturelle is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ef22d91e-6459-4052-a6e3-e5df55665262', 'Ereignisse', 'Ereignisse', 'Ereignisse', 'noun', 'Ereignisse ist wichtig.', 'Ereignisse is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ef22d91e-6459-4052-a6e3-e5df55665262', 'Traditionen', 'Traditionen', 'Traditionen', 'noun', 'Traditionen ist wichtig.', 'Traditionen is important.', 3) ON CONFLICT DO NOTHING;

  -- B2: Kultur und Gesellschaft > Kulturelle Ereignisse und Traditionen [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('ef22d91e-6459-4052-a6e3-e5df55665262', 'multiple_choice', 'Question about Kulturelle Ereignisse und Traditionen?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B2: Kultur und Gesellschaft > Test: Kultur und Gesellschaft [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('b2c4ce2a-e3f8-41e9-b2ba-748cade0e404', 'multiple_choice', 'Test question about Test: Kultur und Gesellschaft?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- C1: Akademische Sprache > Akademisches Schreiben [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('b7629edb-8f3d-4cd7-b28f-547e9c6ec514', 'Akademisches', 'Akademisches', 'Akademisches', 'noun', 'Akademisches ist wichtig.', 'Akademisches is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('b7629edb-8f3d-4cd7-b28f-547e9c6ec514', 'Schreiben', 'Schreiben', 'Schreiben', 'noun', 'Schreiben ist wichtig.', 'Schreiben is important.', 2) ON CONFLICT DO NOTHING;

  -- C1: Akademische Sprache > Wissenschaftlichen Text verfassen [writing]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('f5e029ad-b7f4-4da3-90da-ad8c38718978', 'Wissenschaftlichen', 'Wissenschaftlichen', 'Wissenschaftlichen', 'noun', 'Wissenschaftlichen ist wichtig.', 'Wissenschaftlichen is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('f5e029ad-b7f4-4da3-90da-ad8c38718978', 'Text', 'Text', 'Text', 'noun', 'Text ist wichtig.', 'Text is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('f5e029ad-b7f4-4da3-90da-ad8c38718978', 'verfassen', 'verfassen', 'verfassen', 'noun', 'verfassen ist wichtig.', 'verfassen is important.', 3) ON CONFLICT DO NOTHING;

  -- C1: Akademische Sprache > Wissenschaftlichen Text verfassen [writing]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('f5e029ad-b7f4-4da3-90da-ad8c38718978', 'multiple_choice', 'Question about Wissenschaftlichen Text verfassen?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- C1: Akademische Sprache > Test: Akademische Sprache [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('e78c4bc3-ed88-4bfe-8c18-62de39f5bda0', 'multiple_choice', 'Test question about Test: Akademische Sprache?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Einkaufen und Essen > Lebensmittel [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('f2b73879-8033-42a0-adf2-e467acf5206b', 'Lebensmittel', 'Lebensmittel', 'Lebensmittel', 'noun', 'Lebensmittel ist wichtig.', 'Lebensmittel is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Einkaufen und Essen > Lebensmittel [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('f2b73879-8033-42a0-adf2-e467acf5206b', 'multiple_choice', 'Question about Lebensmittel?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Einkaufen und Essen > Auf dem Markt [reading]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('7edd7929-1a52-40a1-8a8d-d45f8bc05e5e', 'Markt', 'Markt', 'Markt', 'noun', 'Markt ist wichtig.', 'Markt is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Einkaufen und Essen > Im Restaurant [speaking]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('35caf41b-71b0-45b1-9793-9b37614a5645', 'Restaurant', 'Restaurant', 'Restaurant', 'noun', 'Restaurant ist wichtig.', 'Restaurant is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Einkaufen und Essen > Im Supermarkt [listening]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('41fad083-6ba7-4e31-b03e-e53a65bf339c', 'Supermarkt', 'Supermarkt', 'Supermarkt', 'noun', 'Supermarkt ist wichtig.', 'Supermarkt is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Einkaufen und Essen > Einkaufsliste [writing]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ec898239-9d49-4ab5-8efa-c0228f650b6a', 'Einkaufsliste', 'Einkaufsliste', 'Einkaufsliste', 'noun', 'Einkaufsliste ist wichtig.', 'Einkaufsliste is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Einkaufen und Essen > Einkaufsliste [writing]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('ec898239-9d49-4ab5-8efa-c0228f650b6a', 'multiple_choice', 'Question about Einkaufsliste?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- C2: Wissenschaftliche Publikationen > Wissenschaftliche Argumentation und konzessive Verknüpfungen [writing]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('be3bd7b3-1696-4513-9a5a-58fa884fae5a', 'Wissenschaftliche', 'Wissenschaftliche', 'Wissenschaftliche', 'noun', 'Wissenschaftliche ist wichtig.', 'Wissenschaftliche is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('be3bd7b3-1696-4513-9a5a-58fa884fae5a', 'Argumentation', 'Argumentation', 'Argumentation', 'noun', 'Argumentation ist wichtig.', 'Argumentation is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('be3bd7b3-1696-4513-9a5a-58fa884fae5a', 'konzessive', 'konzessive', 'konzessive', 'noun', 'konzessive ist wichtig.', 'konzessive is important.', 3) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('be3bd7b3-1696-4513-9a5a-58fa884fae5a', 'Verknüpfungen', 'Verknüpfungen', 'Verknüpfungen', 'noun', 'Verknüpfungen ist wichtig.', 'Verknüpfungen is important.', 4) ON CONFLICT DO NOTHING;

  -- C2: Philosophie und Ethik > Test: Philosophie und Ethik [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('c85e8665-486a-49d0-b8aa-c1afdb7ea7a2', 'multiple_choice', 'Test question about Test: Philosophie und Ethik?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- B2: Präsentationen und Vorträge > Test: Präsentationen und Vorträge [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('b9806282-0c6d-41c6-af40-ff640d96899b', 'multiple_choice', 'Test question about Test: Präsentationen und Vorträge?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- B2: Berufliche Kommunikation > Test: Berufliche Kommunikation [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('f36403bf-7118-40d1-bbcb-f0444dda38c6', 'multiple_choice', 'Test question about Test: Berufliche Kommunikation?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Feste und Feiertage > Feste und Feiertage in Deutschland [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('dd1d118c-dde0-4650-b24b-bacb46a0c29d', 'Feste', 'Feste', 'Feste', 'noun', 'Feste ist wichtig.', 'Feste is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('dd1d118c-dde0-4650-b24b-bacb46a0c29d', 'Feiertage', 'Feiertage', 'Feiertage', 'noun', 'Feiertage ist wichtig.', 'Feiertage is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('dd1d118c-dde0-4650-b24b-bacb46a0c29d', 'Deutschland', 'Deutschland', 'Deutschland', 'noun', 'Deutschland ist wichtig.', 'Deutschland is important.', 3) ON CONFLICT DO NOTHING;

  -- A2: Feste und Feiertage > Feste und Feiertage in Deutschland [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('dd1d118c-dde0-4650-b24b-bacb46a0c29d', 'multiple_choice', 'Question about Feste und Feiertage in Deutschland?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Feste und Feiertage > Präteritum – Vertiefung [grammar]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e7130d90-9557-4342-97c7-3fe690b63f07', 'multiple_choice', 'Question about Präteritum – Vertiefung?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Feste und Feiertage > Test: Feste und Feiertage [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('fd6717a8-434f-4669-9056-4450abffea0c', 'multiple_choice', 'Test question about Test: Feste und Feiertage?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Wetter und Jahreszeiten > Test: Wetter und Jahreszeiten [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('f023c07f-361d-4b35-bced-c24dbdb8c9a7', 'multiple_choice', 'Test question about Test: Wetter und Jahreszeiten?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- C1: Wirtschaftsdeutsch > Wirtschaftsbegriffe [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d0d0b589-43d9-472b-989b-64c21512f710', 'Wirtschaftsbegriffe', 'Wirtschaftsbegriffe', 'Wirtschaftsbegriffe', 'noun', 'Wirtschaftsbegriffe ist wichtig.', 'Wirtschaftsbegriffe is important.', 1) ON CONFLICT DO NOTHING;

  -- C1: Wirtschaftsdeutsch > Vergleiche und Negation im Wirtschaftsdeutsch [grammar]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('daa4e7fb-5c67-47c7-a055-d803a59d531d', 'multiple_choice', 'Question about Vergleiche und Negation im Wirtschaftsdeutsch?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Essen und Trinken > Test: Essen und Trinken [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('e27bbedf-989a-4814-8832-b5969a8af1db', 'multiple_choice', 'Test question about Test: Essen und Trinken?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Reisen und Freizeit > Test: Reisen und Freizeit [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('d2ce5273-4d6f-4c73-b68c-4d4201bd326e', 'multiple_choice', 'Test question about Test: Reisen und Freizeit?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Reisen und Freizeit > Modalverben: können und müssen [grammar]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('f7e5aa15-810f-4ab9-b82c-98eb45507af0', 'multiple_choice', 'Question about Modalverben: können und müssen?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Reisen und Freizeit > Reisepläne [reading]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ede683da-0a86-4280-8acf-bbebcc3fbb28', 'Reisepläne', 'Reisepläne', 'Reisepläne', 'noun', 'Reisepläne ist wichtig.', 'Reisepläne is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Reisen und Freizeit > Reisepläne [reading]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('ede683da-0a86-4280-8acf-bbebcc3fbb28', 'multiple_choice', 'Question about Reisepläne?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Reisen und Freizeit > Freizeitaktivitäten [speaking]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('02c5ee72-2ca2-4a42-9a95-60478d80f828', 'Freizeitaktivitäten', 'Freizeitaktivitäten', 'Freizeitaktivitäten', 'noun', 'Freizeitaktivitäten ist wichtig.', 'Freizeitaktivitäten is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Reisen und Freizeit > Am Bahnhof [listening]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('1da4c89b-733b-4e9d-b810-76182f707a44', 'Bahnhof', 'Bahnhof', 'Bahnhof', 'noun', 'Bahnhof ist wichtig.', 'Bahnhof is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Reisen und Freizeit > Meine Reise [writing]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('5d4bab89-fa78-4dee-bce5-82b2b7d13555', 'Meine', 'Meine', 'Meine', 'noun', 'Meine ist wichtig.', 'Meine is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('5d4bab89-fa78-4dee-bce5-82b2b7d13555', 'Reise', 'Reise', 'Reise', 'noun', 'Reise ist wichtig.', 'Reise is important.', 2) ON CONFLICT DO NOTHING;

  -- A2: Wetter und Jahreszeiten > Test: Wetter und Jahreszeiten [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('ca827c8a-0c8b-4331-9574-aa28ff580d70', 'multiple_choice', 'Test question about Test: Wetter und Jahreszeiten?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Kleidung und Mode > Farben, Größen und Materialien [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e7cce141-a66f-4199-8f69-d58935d73128', 'Farben', 'Farben', 'Farben', 'noun', 'Farben ist wichtig.', 'Farben is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e7cce141-a66f-4199-8f69-d58935d73128', 'Größen', 'Größen', 'Größen', 'noun', 'Größen ist wichtig.', 'Größen is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e7cce141-a66f-4199-8f69-d58935d73128', 'Materialien', 'Materialien', 'Materialien', 'noun', 'Materialien ist wichtig.', 'Materialien is important.', 3) ON CONFLICT DO NOTHING;

  -- A2: Kleidung und Mode > Farben, Größen und Materialien [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e7cce141-a66f-4199-8f69-d58935d73128', 'multiple_choice', 'Question about Farben, Größen und Materialien?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A2: Kleidung und Mode > Test: Kleidung und Mode [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('d8af456c-2718-43e5-8ed9-0f0507a08e4e', 'multiple_choice', 'Test question about Test: Kleidung und Mode?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Mein Tagesablauf [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d96b15f4-6000-4fcb-a9cc-aec339149509', 'Mein', 'Mein', 'Mein', 'noun', 'Mein ist wichtig.', 'Mein is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d96b15f4-6000-4fcb-a9cc-aec339149509', 'Tagesablauf', 'Tagesablauf', 'Tagesablauf', 'noun', 'Tagesablauf ist wichtig.', 'Tagesablauf is important.', 2) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Mein Tagesablauf [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('d96b15f4-6000-4fcb-a9cc-aec339149509', 'multiple_choice', 'Question about Mein Tagesablauf?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Meine Familie vorstellen [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e80f1c7f-8fea-4e3c-b173-843d6c00fadf', 'Meine', 'Meine', 'Meine', 'noun', 'Meine ist wichtig.', 'Meine is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e80f1c7f-8fea-4e3c-b173-843d6c00fadf', 'Familie', 'Familie', 'Familie', 'noun', 'Familie ist wichtig.', 'Familie is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e80f1c7f-8fea-4e3c-b173-843d6c00fadf', 'vorstellen', 'vorstellen', 'vorstellen', 'noun', 'vorstellen ist wichtig.', 'vorstellen is important.', 3) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Meine Familie vorstellen [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e80f1c7f-8fea-4e3c-b173-843d6c00fadf', 'multiple_choice', 'Question about Meine Familie vorstellen?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Meine Familie [reading]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('de0e5277-03c5-426e-b772-56b4e89ac3b5', 'Meine', 'Meine', 'Meine', 'noun', 'Meine ist wichtig.', 'Meine is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('de0e5277-03c5-426e-b772-56b4e89ac3b5', 'Familie', 'Familie', 'Familie', 'noun', 'Familie ist wichtig.', 'Familie is important.', 2) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Meine Familie [reading]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('de0e5277-03c5-426e-b772-56b4e89ac3b5', 'multiple_choice', 'Question about Meine Familie?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Familienfragen [listening]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e821e023-2acb-47d4-89b5-2c1dd6118a19', 'Familienfragen', 'Familienfragen', 'Familienfragen', 'noun', 'Familienfragen ist wichtig.', 'Familienfragen is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Familienfragen [listening]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e821e023-2acb-47d4-89b5-2c1dd6118a19', 'multiple_choice', 'Question about Familienfragen?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Über Familie sprechen [speaking]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('2a7ff90c-b1f5-4837-9864-e2d01de19cb8', 'Über', 'Über', 'Über', 'noun', 'Über ist wichtig.', 'Über is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('2a7ff90c-b1f5-4837-9864-e2d01de19cb8', 'Familie', 'Familie', 'Familie', 'noun', 'Familie ist wichtig.', 'Familie is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('2a7ff90c-b1f5-4837-9864-e2d01de19cb8', 'sprechen', 'sprechen', 'sprechen', 'noun', 'sprechen ist wichtig.', 'sprechen is important.', 3) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Meine Familie beschreiben [writing]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('fa190419-33f2-459a-98a2-c63303af073a', 'Meine', 'Meine', 'Meine', 'noun', 'Meine ist wichtig.', 'Meine is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('fa190419-33f2-459a-98a2-c63303af073a', 'Familie', 'Familie', 'Familie', 'noun', 'Familie ist wichtig.', 'Familie is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('fa190419-33f2-459a-98a2-c63303af073a', 'beschreiben', 'beschreiben', 'beschreiben', 'noun', 'beschreiben ist wichtig.', 'beschreiben is important.', 3) ON CONFLICT DO NOTHING;

  -- A1: Familie und Alltag > Meine Familie beschreiben [writing]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('fa190419-33f2-459a-98a2-c63303af073a', 'multiple_choice', 'Question about Meine Familie beschreiben?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B1: Arbeit und Karriere > Test: Arbeit und Karriere [test]
INSERT INTO public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) VALUES ('f161dc02-70ae-4607-a9bc-3aa32118e874', 'multiple_choice', 'Test question about Test: Arbeit und Karriere?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Wohnen > Möbel und Haushalt [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('b9ecd35c-b361-4a55-b11a-2f7694d1524c', 'Möbel', 'Möbel', 'Möbel', 'noun', 'Möbel ist wichtig.', 'Möbel is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('b9ecd35c-b361-4a55-b11a-2f7694d1524c', 'Haushalt', 'Haushalt', 'Haushalt', 'noun', 'Haushalt ist wichtig.', 'Haushalt is important.', 2) ON CONFLICT DO NOTHING;

  -- A1: Wohnen > Meine Wohnung [reading]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('beba46eb-1a06-4dd9-add5-130046a91d94', 'Meine', 'Meine', 'Meine', 'noun', 'Meine ist wichtig.', 'Meine is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('beba46eb-1a06-4dd9-add5-130046a91d94', 'Wohnung', 'Wohnung', 'Wohnung', 'noun', 'Wohnung ist wichtig.', 'Wohnung is important.', 2) ON CONFLICT DO NOTHING;

  -- A1: Wohnen > Wohnungssuche [listening]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('f6edc3ea-5b21-45cd-9289-d8d348ac9e64', 'Wohnungssuche', 'Wohnungssuche', 'Wohnungssuche', 'noun', 'Wohnungssuche ist wichtig.', 'Wohnungssuche is important.', 1) ON CONFLICT DO NOTHING;

  -- A1: Wohnen > Wohnungssuche [listening]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('f6edc3ea-5b21-45cd-9289-d8d348ac9e64', 'multiple_choice', 'Question about Wohnungssuche?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- A1: Wohnen > Die Wohnung beschreiben [speaking]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('3c4f13be-38ba-48a8-b171-c1b2cc4e9730', 'Wohnung', 'Wohnung', 'Wohnung', 'noun', 'Wohnung ist wichtig.', 'Wohnung is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('3c4f13be-38ba-48a8-b171-c1b2cc4e9730', 'beschreiben', 'beschreiben', 'beschreiben', 'noun', 'beschreiben ist wichtig.', 'beschreiben is important.', 2) ON CONFLICT DO NOTHING;

  -- A1: Wohnen > Mein Zuhause [writing]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d6d9b5c2-83a0-46a7-a0fa-1215cca2de3d', 'Mein', 'Mein', 'Mein', 'noun', 'Mein ist wichtig.', 'Mein is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d6d9b5c2-83a0-46a7-a0fa-1215cca2de3d', 'Zuhause', 'Zuhause', 'Zuhause', 'noun', 'Zuhause ist wichtig.', 'Zuhause is important.', 2) ON CONFLICT DO NOTHING;

  -- C2: Rhetorik und Präsentation > Rhetorische Mittel: Anapher, Klimax, Antithese [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d8649a0c-c36f-4b65-bebb-3323b6164920', 'Rhetorische', 'Rhetorische', 'Rhetorische', 'noun', 'Rhetorische ist wichtig.', 'Rhetorische is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d8649a0c-c36f-4b65-bebb-3323b6164920', 'Mittel', 'Mittel', 'Mittel', 'noun', 'Mittel ist wichtig.', 'Mittel is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d8649a0c-c36f-4b65-bebb-3323b6164920', 'Anapher', 'Anapher', 'Anapher', 'noun', 'Anapher ist wichtig.', 'Anapher is important.', 3) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d8649a0c-c36f-4b65-bebb-3323b6164920', 'Klimax', 'Klimax', 'Klimax', 'noun', 'Klimax ist wichtig.', 'Klimax is important.', 4) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('d8649a0c-c36f-4b65-bebb-3323b6164920', 'Antithese', 'Antithese', 'Antithese', 'noun', 'Antithese ist wichtig.', 'Antithese is important.', 5) ON CONFLICT DO NOTHING;

  -- B1: Medien und Technologie > Medien und Nachrichten [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ddaecb35-5faf-46bc-a53c-72ae2a5e6d4d', 'Medien', 'Medien', 'Medien', 'noun', 'Medien ist wichtig.', 'Medien is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('ddaecb35-5faf-46bc-a53c-72ae2a5e6d4d', 'Nachrichten', 'Nachrichten', 'Nachrichten', 'noun', 'Nachrichten ist wichtig.', 'Nachrichten is important.', 2) ON CONFLICT DO NOTHING;

  -- B1: Medien und Technologie > Medien und Nachrichten [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('ddaecb35-5faf-46bc-a53c-72ae2a5e6d4d', 'multiple_choice', 'Question about Medien und Nachrichten?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B1: Medien und Technologie > Technologie und digitale Welt [vocabulary]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e458ead3-79f9-407d-b8f3-56cd23be14c8', 'Technologie', 'Technologie', 'Technologie', 'noun', 'Technologie ist wichtig.', 'Technologie is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e458ead3-79f9-407d-b8f3-56cd23be14c8', 'digitale', 'digitale', 'digitale', 'noun', 'digitale ist wichtig.', 'digitale is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('e458ead3-79f9-407d-b8f3-56cd23be14c8', 'Welt', 'Welt', 'Welt', 'noun', 'Welt ist wichtig.', 'Welt is important.', 3) ON CONFLICT DO NOTHING;

  -- B1: Medien und Technologie > Technologie und digitale Welt [vocabulary]
INSERT INTO public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) VALUES ('e458ead3-79f9-407d-b8f3-56cd23be14c8', 'multiple_choice', 'Question about Technologie und digitale Welt?', '["Option 1","Option 2","Option 3","Option 4"]', 'Option 1', 'Explanation for the correct answer.', 1, 1) ON CONFLICT DO NOTHING;

  -- B1: Medien und Technologie > Diskussion Ã¼ber Medien und Technologie [listening]
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('b6548e76-dd3f-433e-b3d3-ae48508b32e1', 'Diskussion', 'Diskussion', 'Diskussion', 'noun', 'Diskussion ist wichtig.', 'Diskussion is important.', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('b6548e76-dd3f-433e-b3d3-ae48508b32e1', 'Medien', 'Medien', 'Medien', 'noun', 'Medien ist wichtig.', 'Medien is important.', 2) ON CONFLICT DO NOTHING;
INSERT INTO public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, part_of_speech, example_sentence, example_translation, order_index) VALUES ('b6548e76-dd3f-433e-b3d3-ae48508b32e1', 'Technologie', 'Technologie', 'Technologie', 'noun', 'Technologie ist wichtig.', 'Technologie is important.', 3) ON CONFLICT DO NOTHING;
END $$;
