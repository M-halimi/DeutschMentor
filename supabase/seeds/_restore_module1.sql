-- Restore A1 Module 1 from migration 00025
-- Module
insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published) values
(
  '00000000-0000-0000-0000-000000000001',
  'A1',
  'Hallo! Erste Schritte',
  'Learn basic greetings, introductions, the alphabet, and numbers. By the end of this module, you will be able to introduce yourself and count to 100.',
  '["Greet people formally and informally", "Introduce yourself and ask others their name", "Say where you come from", "Count from 1 to 100", "Spell your name using the German alphabet"]',
  1, 3.0, true
);

-- Lesson 1
insert into public.course_lessons (id, module_id, title, description, topic, objectives, duration_minutes, order_index, is_published) values
(
  '00000000-0000-0000-0000-000000000010',
  '00000000-0000-0000-0000-000000000001',
  'Begr��ungen und Vorstellungen',
  'Learn how to greet people, say goodbye, and introduce yourself in German.',
  'Greetings & Introductions',
  '["Use formal and informal greetings", "Introduce yourself with name and origin", "Ask Wie geht es Ihnen? and respond", "Say goodbye appropriately"]',
  30, 1, true
);

-- Lesson 1: Vocabulary
insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
('00000000-0000-0000-0000-000000000010', 'Hallo', 'مرحباً', 'hello', NULL, NULL, 'interjection', 'Hallo, wie geht es Ihnen?', 'Hello, how are you?', 1),
('00000000-0000-0000-0000-000000000010', 'Tschüss', 'وداعاً', 'bye', NULL, NULL, 'interjection', 'Tschüss, bis morgen!', 'Bye, see you tomorrow!', 2),
('00000000-0000-0000-0000-000000000010', 'Guten Morgen', 'صباح الخير', 'good morning', NULL, NULL, 'phrase', 'Guten Morgen, Herr Müller.', 'Good morning, Mr. Müller.', 3),
('00000000-0000-0000-0000-000000000010', 'Guten Abend', 'مساء الخير', 'good evening', NULL, NULL, 'phrase', 'Guten Abend, Frau Schmidt.', 'Good evening, Ms. Schmidt.', 4),
('00000000-0000-0000-0000-000000000010', 'der Name', 'الاسم', 'name', 'der', 'die Namen', 'noun', 'Wie ist Ihr Name?', 'What is your name?', 5),
('00000000-0000-0000-0000-000000000010', 'hei�?en', 'يُدعى', 'to be called', NULL, NULL, 'verb', 'Ich hei�?e Anna.', 'My name is Anna.', 6),
('00000000-0000-0000-0000-000000000010', 'kommen', 'يأتي من', 'to come from', NULL, NULL, 'verb', 'Ich komme aus Deutschland.', 'I come from Germany.', 7),
('00000000-0000-0000-0000-000000000010', 'wohnen', 'يسكن', 'to live', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 8),
('00000000-0000-0000-0000-000000000010', 'der', 'أداة تعريف للمذكر', 'the (masculine)', NULL, NULL, 'article', 'der Mann', 'the man', 9),
('00000000-0000-0000-0000-000000000010', 'die', 'أداة تعريف للمؤنث', 'the (feminine)', NULL, NULL, 'article', 'die Frau', 'the woman', 10);

-- Lesson 1: Grammar
insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
('00000000-0000-0000-0000-000000000010',
'Personalpronomen (Personal Pronouns)',
'Personal pronouns replace nouns and refer to people or things. In German, they change depending on the grammatical person (I, you, he, she, it, we, they) and formality level.',
'[{"rule": "ich = I (first person singular)","note": "Always lowercase unless at start of sentence"},{"rule": "du = you (informal singular)","note": "Used with friends, family, children"},{"rule": "Sie = you (formal)","note": "Always capitalized. Used with strangers, colleagues"},{"rule": "er/sie/es = he/she/it","note": "Grammatical gender: der Tisch → er"},{"rule": "wir = we","note": "First person plural"},{"rule": "ihr = you (informal plural)","note": "When addressing multiple friends/family"},{"rule": "sie = they","note": "Third person plural"}]',
'[{"german": "Ich hei�?e Anna.","arabic": "اسمي آنا.","english": "My name is Anna."},{"german": "Woher kommst du?","arabic": "من أين أنت؟","english": "Where are you from?"},{"german": "Kommen Sie aus Berlin?","arabic": "هل أنت من برلين؟","english": "Do you come from Berlin?"},{"german": "Er hei�?t Peter.","arabic": "اسمه بيتر.","english": "His name is Peter."}]',
'[{"mistake": "Using du with a professor","correction": "Use Sie for formal situations","explanation": "German has strict formal/informal distinction."},{"mistake": "Forgetting to capitalize Sie","correction": "Always write Sie with capital S","explanation": "Lowercase sie means they or she."}]',
1);

-- Lesson 1: Exercises
insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
('00000000-0000-0000-0000-000000000010', 'multiple_choice', 'How do you say "Good morning" in German?', '["Guten Abend","Guten Morgen","Hallo","Tschüss"]', 'Guten Morgen', 'Used until about 10-11 AM.', 1, 1),
('00000000-0000-0000-0000-000000000010', 'multiple_choice', 'Which pronoun do you use with a teacher?', '["du","Sie","ihr","er"]', 'Sie', 'Formal situations use Sie.', 1, 2),
('00000000-0000-0000-0000-000000000010', 'fill_gap', 'Complete: Ich ___ Anna.', '["bin","heisse","hei�?e","ist"]', 'hei�?e', 'Ich hei�?e = My name is.', 1, 3),
('00000000-0000-0000-0000-000000000010', 'translation', 'Translate: "My name is Peter."', '[]', 'Ich hei�?e Peter.', 'Use Ich hei�?e + name.', 2, 4);

-- Lesson 1: Test Questions
insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
('00000000-0000-0000-0000-000000000010', 'multiple_choice', 'What is the formal "you" in German?', '["du","Sie","ihr","wir"]', 'Sie', 1, 1),
('00000000-0000-0000-0000-000000000010', 'multiple_choice', 'How do you say goodbye informally?', '["Auf Wiedersehen","Tschüss","Guten Tag","Hallo"]', 'Tschüss', 1, 2),
('00000000-0000-0000-0000-000000000010', 'true_false', '"Guten Abend" means "good night".', '["True","False"]', 'False', 1, 3),
('00000000-0000-0000-0000-000000000010', 'fill_blank', 'Complete: Ich ___ aus Deutschland.', '["komme","kommst","kommen","kommt"]', 'komme', 1, 4);

-- Lesson 2
insert into public.course_lessons (id, module_id, title, description, topic, objectives, duration_minutes, order_index, is_published) values
(
  '00000000-0000-0000-0000-000000000011',
  '00000000-0000-0000-0000-000000000001',
  'Das Alphabet und die Aussprache',
  'Master the German alphabet, special letters, and basic pronunciation rules.',
  'Alphabet & Pronunciation',
  '["Pronounce all German letters correctly","Read and pronounce Umlauts (ä, ö, ü)","Pronounce �? (Eszett)","Spell your name in German"]',
  30, 2, true
);

-- Lesson 2: Vocabulary
insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
('00000000-0000-0000-0000-000000000011', 'das Alphabet', 'الأبجدية', 'alphabet', 'das', 'die Alphabete', 'noun', 'Das deutsche Alphabet hat 26 Buchstaben.', 'The German alphabet has 26 letters.', 1),
('00000000-0000-0000-0000-000000000011', 'der Buchstabe', 'الحرف', 'letter', 'der', 'die Buchstaben', 'noun', 'A ist der erste Buchstabe.', 'A is the first letter.', 2),
('00000000-0000-0000-0000-000000000011', 'der Umlaut', 'حرف علة معدل', 'umlaut', 'der', 'die Umlaute', 'noun', 'Ä, Ö und Ü sind Umlaute.', 'Ä, Ö and Ü are umlauts.', 3),
('00000000-0000-0000-0000-000000000011', 'das �?', 'حرف الإسزيت', 'sharp s (Eszett)', 'das', NULL, 'noun', 'Das �? gibt es nur im Deutschen.', 'The �? only exists in German.', 4),
('00000000-0000-0000-0000-000000000011', 'aussprechen', 'ينطق', 'to pronounce', NULL, NULL, 'verb', 'Wie spricht man das aus?', 'How do you pronounce that?', 5),
('00000000-0000-0000-0000-000000000011', 'buchstabieren', 'يهجي', 'to spell', NULL, NULL, 'verb', 'Können Sie das buchstabieren?', 'Can you spell that?', 6),
('00000000-0000-0000-0000-000000000011', 'der Laut', 'الصوت', 'sound', 'der', 'die Laute', 'noun', 'Der Laut ist schwer.', 'The sound is difficult.', 7);

-- Lesson 2: Exercises
insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
('00000000-0000-0000-0000-000000000011', 'multiple_choice', 'How is W pronounced in German?', '["Like English W","Like English V","Like English F","Like English TS"]', 'Like English V', 'German W is always V.', 1, 1),
('00000000-0000-0000-0000-000000000011', 'multiple_choice', 'Which are German Umlauts?', '["A, E, I","Ä, Ö, Ü","�?, Ä, Ö","Ü, Ö, �?"]', 'Ä, Ö, Ü', 'Three umlauts.', 1, 2);

-- Lesson 2: Test Questions
insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
('00000000-0000-0000-0000-000000000011', 'multiple_choice', 'How is Z pronounced in German?', '["Like English Z","Like TS","Like S","Like T"]', 'Like TS', 1, 1),
('00000000-0000-0000-0000-000000000011', 'true_false', 'schön and schon have the same meaning.', '["True","False"]', 'False', 1, 2);

-- Lesson 3
insert into public.course_lessons (id, module_id, title, description, topic, objectives, duration_minutes, order_index, is_published) values
(
  '00000000-0000-0000-0000-000000000012',
  '00000000-0000-0000-0000-000000000001',
  'Zahlen 1-100',
  'Learn numbers from 1 to 100, how to ask for and give prices and phone numbers.',
  'Numbers',
  '["Count from 1 to 100","Ask for and give phone numbers","Understand prices in shops","Say your age"]',
  25, 3, true
);

-- Lesson 3: Vocabulary
insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
('00000000-0000-0000-0000-000000000012', 'die Zahl', 'الرقم', 'number', 'die', 'die Zahlen', 'noun', 'Die Zahl 10 ist eine Zehn.', 'The number 10 is a ten.', 1),
('00000000-0000-0000-0000-000000000012', 'zählen', 'يعد', 'to count', NULL, NULL, 'verb', 'Ich zähle von 1 bis 10.', 'I count from 1 to 10.', 2),
('00000000-0000-0000-0000-000000000012', 'eins', 'واحد', 'one', NULL, NULL, 'numeral', 'Eins, zwei, drei, vier...', 'One, two, three, four...', 3),
('00000000-0000-0000-0000-000000000012', 'zehn', 'عشرة', 'ten', NULL, NULL, 'numeral', 'Zehn Minuten.', 'Ten minutes.', 4),
('00000000-0000-0000-0000-000000000012', 'hundert', 'مئة', 'hundred', NULL, NULL, 'numeral', 'Einhundert Euro.', 'One hundred euros.', 5),
('00000000-0000-0000-0000-000000000012', 'kosten', 'يكلف', 'to cost', NULL, NULL, 'verb', 'Was kostet das?', 'How much does that cost?', 6);

-- Lesson 3: Exercises
insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
('00000000-0000-0000-0000-000000000012', 'multiple_choice', 'What is 22 in German?', '["Zweiundzwanzig","Zwanzigundzwei","Zweiunddreißig","Zwölf"]', 'Zweiundzwanzig', '22 = zwei + und + zwanzig.', 1, 1),
('00000000-0000-0000-0000-000000000012', 'fill_gap', 'Ich bin 25 Jahre ___.', '["alt","älter","alte","alten"]', 'alt', 'Jahre alt = years old.', 1, 2);

-- Lesson 3: Test Questions
insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
('00000000-0000-0000-0000-000000000012', 'multiple_choice', 'What is 35 in German?', '["Dreiundfünfzig","Fünfunddreißig","Dreißigundfünf","Fünfunddreißig"]', 'Fünfunddreißig', 1, 1),
('00000000-0000-0000-0000-000000000012', 'true_false', 'eins, zwei, drei = one, two, three.', '["True","False"]', 'True', 1, 2);
