do $$
declare
  l_id uuid;
begin

  -- ====================================================================
  -- MODULE 1: Hallo! Erste Schritte (max lesson order: 3)
  -- ====================================================================

  -- Grammar: Basic sentence structure
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('00000000-0000-0000-0000-000000000001', 'Einfache Sätze', 'Learn basic German sentence structure: subject-verb-object and W-questions.', 'Grammar', 'grammar', '["Form simple statements","Ask W-questions (wer, was, wo, wie)","Use correct word order"]', 30, 4, true)
  returning id into l_id;
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Einfache Satzstruktur', 'German sentences follow the Subject-Verb-Object (SVO) pattern in main clauses. Questions invert the order.', '[
    {"rule":"Subject + Verb + Object in statements","note":"Ich lerne Deutsch. (I learn German.)"},
    {"rule":"Verb in position 2 in main clauses","note":"Heute lerne ich Deutsch. (Time phrase can go first.)"},
    {"rule":"W-questions: W-word + Verb + Subject","note":"Wo wohnst du? (Where do you live?)"},
    {"rule":"Yes/No questions: Verb + Subject","note":"Kommst du aus Berlin? (Do you come from Berlin?)"}
  ]', '[
    {"german":"Ich heiße Maria.","arabic":"اسمي ماريا.","english":"My name is Maria."},
    {"german":"Wo wohnst du?","arabic":"أين تسكن؟","english":"Where do you live?"},
    {"german":"Lernst du Deutsch?","arabic":"هل تتعلم الألمانية؟","english":"Are you learning German?"}
  ]', '[
    {"mistake":"Putting verb at end of statement","correction":"Verb must be the second element","explanation":"Ich Deutsch lerne is wrong → Ich lerne Deutsch."},
    {"mistake":"Forcing subject before verb in questions","correction":"Verb comes before subject in questions","explanation":"Du wohnst wo? is wrong → Wo wohnst du?"}
  ]', 1);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Which word order is correct?', '["Ich Deutsch lerne.", "Ich lerne Deutsch.", "Lerne ich Deutsch.", "Deutsch ich lerne."]', 'Ich lerne Deutsch.', 'Subject (ich) + Verb (lerne) + Object (Deutsch).', 1, 1),
  (l_id, 'multiple_choice', 'How do you ask "Where do you live?"', '["Du wohnst wo?", "Wohnen Sie wo?", "Wo wohnst du?", "Wo du wohnst?"]', 'Wo wohnst du?', 'W-word + Verb + Subject.', 1, 2),
  (l_id, 'fill_gap', 'Complete: ___ heißt du?', '["Wer", "Wie", "Was", "Wo"]', 'Wie', '"Wie heißt du?" means "What is your name?".', 1, 3),
  (l_id, 'matching', 'Match question words: Wer, Wo, Wie, Was', '["Who, Where, How, What", "What, Where, How, Who", "Where, Who, What, How", "How, What, Who, Where"]', 'Who, Where, How, What', 'Wer=Who, Wo=Where, Wie=How, Was=What.', 2, 4);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Which position does the verb take in a main clause?', '["First", "Second", "Last", "Any position"]', 'Second', 1, 1),
  (l_id, 'true_false', 'In German questions, the verb comes before the subject.', '["True", "False"]', 'True', 1, 2),
  (l_id, 'multiple_choice', 'What does "Wo" mean?', '["Who", "What", "Where", "Why"]', 'Where', 1, 3);

  -- Reading: Erste Kontakte
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('00000000-0000-0000-0000-000000000001', 'Erste Kontakte', 'Read a short introduction dialogue and find specific information.', 'Reading', 'reading', '["Understand a simple introduction","Find names and origins in a text","Answer basic comprehension questions"]', 25, 5, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Read: "Hallo! Ich bin Tom. Ich komme aus England. Ich wohne in Berlin. Mein Deutsch ist nicht gut, aber ich lerne." Where does Tom come from?', '["Germany", "England", "Berlin", "Austria"]', 'England', 'Tom says: Ich komme aus England.', 1, 1),
  (l_id, 'multiple_choice', 'Where does Tom live?', '["London", "Berlin", "München", "Hamburg"]', 'Berlin', 'Tom says: Ich wohne in Berlin.', 1, 2),
  (l_id, 'fill_gap', 'Tom says his German is not ___.', '["schlecht", "gut", "perfekt", "schnell"]', 'gut', 'Mein Deutsch ist nicht gut.', 1, 3),
  (l_id, 'true_false', 'Tom is learning German.', '["True", "False"]', 'True', 'aber ich lerne = but I am learning.', 1, 4);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'How does Tom introduce himself?', '["Ich heiße Tom", "Ich bin Tom", "Mein Name ist Tom", "All of the above"]', 'All of the above', 1, 1),
  (l_id, 'multiple_choice', 'What does "Ich komme aus..." mean?', '["I live in...", "I come from...", "I work in...", "I study in..."]', 'I come from...', 1, 2),
  (l_id, 'fill_blank', 'Complete: Ich wohne ___ Berlin.', '["in", "aus", "bei", "nach"]', 'in', 1, 3);

  -- Listening: Ein Gespräch
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('00000000-0000-0000-0000-000000000001', 'Ein Gespräch', 'Listen to a simple conversation and identify key information.', 'Listening', 'listening', '["Understand a basic dialogue","Identify names and nationalities","Follow simple questions and answers"]', 20, 6, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Dialog: A: "Hallo, ich bin Anna." B: "Ich bin Pierre." A: "Kommst du aus Frankreich?" B: "Ja, ich komme aus Paris." What is Pierres nationality?', '["German", "French", "Italian", "Spanish"]', 'French', 'Pierre kommt aus Paris, Frankreich.', 1, 1),
  (l_id, 'multiple_choice', 'What question does Anna ask Pierre?', '["Wie alt bist du?", "Kommst du aus Frankreich?", "Wo wohnst du?", "Was machst du?"]', 'Kommst du aus Frankreich?', 'Anna fragt: Kommst du aus Frankreich?', 1, 2),
  (l_id, 'true_false', 'Pierre says no to Annas question.', '["True", "False"]', 'False', 'Pierre sagt: Ja, ich komme aus Paris.', 1, 3);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "Ja" mean?', '["No", "Yes", "Maybe", "Hello"]', 'Yes', 1, 1),
  (l_id, 'multiple_choice', 'How does Anna introduce herself?', '["Ich bin Anna", "Ich heiße Anna", "Anna", "All are correct"]', 'All are correct', 1, 2);

  -- Speaking: Sich vorstellen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('00000000-0000-0000-0000-000000000001', 'Sich vorstellen', 'Practice introducing yourself and asking others about themselves.', 'Speaking', 'speaking', '["Introduce yourself with name and origin","Ask someone their name and where they come from","Respond to basic personal questions"]', 25, 7, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you ask someone their name?', '["Was ist los?", "Wie heißt du?", "Wo wohnst du?", "Wie alt bist du?"]', 'Wie heißt du?', '"Wie heißt du?" is the standard way to ask for a name.', 1, 1),
  (l_id, 'fill_gap', 'Complete the response: "Ich ___ Lukas."', '["heiße", "heißt", "heiß", "heißen"]', 'heiße', 'Ich heiße = my name is.', 1, 2),
  (l_id, 'sentence_order', 'Order: aus / komme / ich / Berlin', '[]', 'Ich komme aus Berlin.', 'Subject + Verb + place.', 2, 3);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "Nice to meet you"?', '["Guten Tag", "Freut mich", "Auf Wiedersehen", "Entschuldigung"]', 'Freut mich', 1, 1),
  (l_id, 'multiple_choice', 'How do you ask where someone lives?', '["Wie heißt du?", "Wo wohnst du?", "Was machst du?", "Woher kommst du?"]', 'Wo wohnst du?', 1, 2);

  -- Writing: Steckbrief
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('00000000-0000-0000-0000-000000000001', 'Mein Steckbrief', 'Write a short personal profile with your name, origin, and where you live.', 'Writing', 'writing', '["Write a short self-introduction","Use correct capitalization","Write complete sentences"]', 25, 8, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Which sentence is correctly capitalized?', '["ich heiße Anna", "Ich heiße anna", "Ich heiße Anna", "ich Heiße Anna"]', 'Ich heiße Anna', 'Ich (I) is always capitalized in German.', 1, 1),
  (l_id, 'fill_gap', 'Complete: "Ich ___ 25 Jahre alt."', '["bin", "bist", "ist", "sind"]', 'bin', 'Ich bin = I am.', 1, 2),
  (l_id, 'translation', 'Translate: "I come from Germany."', '[]', 'Ich komme aus Deutschland.', 'Use "kommen aus" for origin.', 2, 3);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'How do you start a self-introduction?', '["Guten Morgen", "Hallo, ich bin...", "Auf Wiedersehen", "Tschüss"]', 'Hallo, ich bin...', 1, 1),
  (l_id, 'fill_blank', 'Ich komme ___ Marokko.', '["aus", "von", "in", "nach"]', 'aus', 1, 2);

  -- Review: Modul 1 Wiederholung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('00000000-0000-0000-0000-000000000001', 'Modul 1 Wiederholung', 'Review greetings, introductions, alphabet, numbers, and basic sentences.', 'Review', 'review', '["Consolidate all Module 1 vocabulary","Practice greetings and introductions","Review numbers and alphabet"]', 30, 9, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'What is "Guten Abend"?', '["Good morning", "Good evening", "Good night", "Goodbye"]', 'Good evening', 'Guten Abend = good evening.', 1, 1),
  (l_id, 'multiple_choice', 'How do you say "please"?', '["Danke", "Bitte", "Tschüss", "Hallo"]', 'Bitte', 'Bitte = please / you are welcome.', 1, 2),
  (l_id, 'fill_gap', 'Complete: Ich ___ aus Spanien.', '["komme", "kommst", "kommt", "kommen"]', 'komme', 'Ich komme = I come.', 1, 3),
  (l_id, 'multiple_choice', 'What is 44 in German?', '["Vierundvierzig", "Vierzigundvier", "Vierundfünfzig", "Vierzehn"]', 'Vierundvierzig', '4+44 = vierundvierzig.', 1, 4),
  (l_id, 'true_false', '"ß" is called "Eszett" in German.', '["True", "False"]', 'True', 'ß = Eszett.', 1, 5);

  -- ====================================================================
  -- MODULE 2: Familie und Alltag (max lesson order: 6)
  -- ====================================================================

  -- Grammar: Possessive articles and sein/haben
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('dd285317-a3c8-4fef-bdb3-b5c428f2a94a', 'Possessivartikel und sein/haben', 'Learn possessive articles (mein, dein, sein) and the verbs sein and haben.', 'Grammar', 'grammar', '["Use possessive articles mein, dein, sein","Conjugate sein (to be)","Conjugate haben (to have)","Describe family relationships"]', 30, 7, true)
  returning id into l_id;
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Possessivartikel und sein/haben', 'Possessive articles show ownership. Sein (to be) and haben (to have) are the two most important irregular verbs.', '[
    {"rule":"mein = my, dein = your (informal), sein = his, ihr = her","note":"Match gender: mein Vater, meine Mutter"},
    {"rule":"sein conjugation: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind","note":"Irregular - memorize separately"},
    {"rule":"haben conjugation: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben","note":"Vowel change: a→a in du/er forms"}
  ]', '[
    {"german":"Mein Bruder heißt Max.","arabic":"اسم أخي ماكس.","english":"My brother is called Max."},
    {"german":"Ich habe eine Schwester.","arabic":"لدي أخت.","english":"I have a sister."},
    {"german":"Seine Mutter ist Ärztin.","arabic":"أمه طبيبة.","english":"His mother is a doctor."}
  ]', '[
    {"mistake":"Using mein for feminine nouns without change","correction":"mein → meine before feminine nouns","explanation":"meine Mutter, meine Schwester (feminine takes -e)"},
    {"mistake":"Ich habe → Ich hab","correction":"Correct: Ich habe","explanation":"habe is the full form for ich"}
  ]', 1);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "my mother"?', '["mein Mutter", "meine Mutter", "meiner Mutter", "meines Mutter"]', 'meine Mutter', 'Mutter is feminine → meine.', 1, 1),
  (l_id, 'fill_gap', 'Ich ___ einen Bruder.', '["habe", "hast", "hat", "haben"]', 'habe', 'Ich habe = I have.', 1, 2),
  (l_id, 'multiple_choice', 'Complete: "Du ___ 30 Jahre alt."', '["bin", "bist", "ist", "seid"]', 'bist', 'Du bist = you are.', 1, 3);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "ihr" (her) in English?', '["His", "Her", "Its", "Your"]', 'Her', 1, 1),
  (l_id, 'multiple_choice', 'Conjugate: er/sie/es ___ (haben)', '["habe", "hast", "hat", "haben"]', 'hat', 1, 2);

  -- Reading: Meine Familie
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('dd285317-a3c8-4fef-bdb3-b5c428f2a94a', 'Meine Familie', 'Read a text about a German family and answer questions.', 'Reading', 'reading', '["Understand a simple family description","Identify family relationships","Answer who questions"]', 25, 8, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Read: "Hallo! Ich heiße Klara. Ich bin 12 Jahre alt. Meine Familie ist groß: mein Vater Thomas, meine Mutter Maria, mein Bruder Ben und meine Schwester Lena. Wir wohnen in Köln. Mein Hund heißt Rex." How many people are in Klaras family?', '["3", "4", "5", "6"]', '5', 'Klara + Vater + Mutter + Bruder + Schwester = 5.', 1, 1),
  (l_id, 'fill_gap', 'Klaras Bruder heißt ___.', '["Lena", "Thomas", "Ben", "Rex"]', 'Ben', 'Mein Bruder Ben.', 1, 2),
  (l_id, 'true_false', 'Klara hat einen Hund.', '["True", "False"]', 'True', 'Mein Hund heißt Rex.', 1, 3);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Where does Klara live?', '["Berlin", "Köln", "München", "Hamburg"]', 'Köln', 1, 1),
  (l_id, 'fill_blank', 'Wir wohnen ___ Köln.', '["in", "aus", "bei", "nach"]', 'in', 1, 2);

  -- Listening: Familienfragen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('dd285317-a3c8-4fef-bdb3-b5c428f2a94a', 'Familienfragen', 'Practice understanding questions and answers about family.', 'Listening', 'listening', '["Understand questions about family","Identify family member words","Respond with correct articles"]', 20, 9, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Dialog: A: "Hast du Geschwister?" B: "Ja, ich habe einen Bruder und eine Schwester." What does B have?', '["Two brothers", "A brother and a sister", "Two sisters", "No siblings"]', 'A brother and a sister', 'einen Bruder + eine Schwester.', 1, 1),
  (l_id, 'true_false', 'B hat einen Bruder.', '["True", "False"]', 'True', 'Ja, ich habe einen Bruder.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "Hast du Geschwister?" mean?', '["Do you have children?", "Do you have siblings?", "Do you have pets?", "Do you have time?"]', 'Do you have siblings?', 1, 1),
  (l_id, 'multiple_choice', 'How do you answer "yes, I have a brother"?', '["Nein, ich habe einen Bruder", "Ja, ich habe einen Bruder", "Ja, ich habe eine Bruder", "Nein, habe ich nicht"]', 'Ja, ich habe einen Bruder', 1, 2);

  -- Speaking: Über Familie sprechen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('dd285317-a3c8-4fef-bdb3-b5c428f2a94a', 'Über Familie sprechen', 'Talk about your family members and describe them.', 'Speaking', 'speaking', '["Describe your family members","Say how many siblings you have","Use possessive articles correctly"]', 25, 10, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "I have one sister"?', '["Ich habe eine Schwester", "Ich habe einen Schwester", "Ich habe ein Schwester", "Ich habe der Schwester"]', 'Ich habe eine Schwester', 'Schwester is feminine → eine.', 1, 1),
  (l_id, 'fill_gap', 'Mein ___ heißt Max. (brother)', '["Bruder", "Schwester", "Mutter", "Vater"]', 'Bruder', 'Mein Bruder = my brother.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "meine Tante" mean?', '["My uncle", "My aunt", "My cousin (f)", "My grandmother"]', 'My aunt', 1, 1),
  (l_id, 'fill_blank', 'Mein ___ heißt Peter. (father)', '["Mutter", "Vater", "Bruder", "Onkel"]', 'Vater', 1, 2);

  -- Writing: Meine Familie beschreiben
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('dd285317-a3c8-4fef-bdb3-b5c428f2a94a', 'Meine Familie beschreiben', 'Write a short paragraph describing your family.', 'Writing', 'writing', '["Write 3-4 sentences about your family","Use possessive articles","Use sein and haben correctly"]', 25, 11, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Meine Familie ___ groß.', '["ist", "sind", "bin", "bist"]', 'ist', 'Meine Familie ist = my family is.', 1, 1),
  (l_id, 'translation', 'Translate: "My father is a teacher."', '[]', 'Mein Vater ist Lehrer.', 'Vater (masculine) → mein.', 2, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "My parents" in German?', '["Mein Eltern", "Meine Eltern", "Meiner Eltern", "Meines Eltern"]', 'Meine Eltern', 1, 1),
  (l_id, 'fill_blank', 'Ich ___ zwei Geschwister.', '["habe", "hast", "hat", "haben"]', 'habe', 1, 2);

  -- Review: Modul 2 Wiederholung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('dd285317-a3c8-4fef-bdb3-b5c428f2a94a', 'Modul 2 Wiederholung', 'Review family vocabulary, possessives, sein/haben, and telling time.', 'Review', 'review', '["Consolidate family vocabulary","Practice possessive articles","Review sein and haben conjugation"]', 30, 12, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Onkel"?', '["The aunt", "The uncle", "The cousin", "The grandfather"]', 'The uncle', 'Der Onkel = uncle.', 1, 1),
  (l_id, 'fill_gap', 'Ich ___ (sein) Anna.', '["bin", "bist", "ist", "sind"]', 'bin', 'Ich bin = I am.', 1, 2),
  (l_id, 'multiple_choice', 'Meine Mutter ___ Ärztin.', '["bin", "bist", "ist", "sind"]', 'ist', 'Sie ist = she is.', 1, 3);

  -- ====================================================================
  -- MODULE 3: Wohnen (max lesson order: 3)
  -- ====================================================================

  -- Grammar: Articles (der/die/das) and nominative case
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('f2480c35-8462-441e-bbf9-a477f07c7c60', 'Bestimmte und unbestimmte Artikel', 'Learn definite (der/die/das) and indefinite (ein/eine) articles in the nominative case.', 'Grammar', 'grammar', '["Use der, die, das correctly","Use ein and eine correctly","Match articles to noun gender"]', 30, 4, true)
  returning id into l_id;
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Bestimmte und unbestimmte Artikel', 'German has three grammatical genders: masculine (der), feminine (die), neuter (das). The article changes with gender.', '[
    {"rule":"Masculine: der/ein (der Tisch, ein Tisch)","note":"~40% of nouns are masculine"},
    {"rule":"Feminine: die/eine (die Wohnung, eine Wohnung)","note":"~35% of nouns are feminine"},
    {"rule":"Neuter: das/ein (das Zimmer, ein Zimmer)","note":"~25% of nouns are neuter"},
    {"rule":"Plural: always die (die Wohnungen, die Tische)","note":"No indefinite article in plural"}
  ]', '[
    {"german":"Der Tisch ist neu.","arabic":"الطاولة جديدة.","english":"The table is new."},
    {"german":"Das ist eine schöne Wohnung.","arabic":"هذه شقة جميلة.","english":"That is a nice apartment."},
    {"german":"Das Zimmer ist klein.","arabic":"الغرفة صغيرة.","english":"The room is small."}
  ]', '[
    {"mistake":"Using der for all nouns","correction":"Learn each noun with its article","explanation":"Always memorize German nouns with der/die/das."},
    {"mistake":"Using ein before feminine nouns","correction":"Use eine before feminine nouns","explanation":"eine Wohnung, eine Küche (feminine → eine)"}
  ]', 1);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Which article goes with "Tisch" (table)?', '["der", "die", "das", "den"]', 'der', 'Der Tisch is masculine.', 1, 1),
  (l_id, 'fill_gap', '___ Wohnung ist groß. (the)', '["Der", "Die", "Das", "Den"]', 'Die', 'Die Wohnung is feminine.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is the correct form: "___ schönes Haus"?', '["Ein", "Eine", "Einen", "Einer"]', 'Ein', 1, 1),
  (l_id, 'true_false', '"Das" is used for feminine nouns.', '["True", "False"]', 'False', 1, 2);

  -- Reading: Meine Wohnung
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('f2480c35-8462-441e-bbf9-a477f07c7c60', 'Meine Wohnung', 'Read a description of an apartment and find specific details.', 'Reading', 'reading', '["Understand a simple apartment description","Identify rooms and furniture","Answer detail questions"]', 25, 5, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Read: "Ich wohne in einer Wohnung. Sie hat drei Zimmer: ein Wohnzimmer, ein Schlafzimmer und eine Küche. Das Badezimmer ist klein. Die Wohnung ist im zweiten Stock." How many rooms does the apartment have?', '["2", "3", "4", "5"]', '4', '3 Zimmer + Badezimmer = 4 rooms total.', 1, 1),
  (l_id, 'fill_gap', 'Die Wohnung ist im ___ Stock.', '["ersten", "zweiten", "dritten", "vierten"]', 'zweiten', 'im zweiten Stock = on the second floor.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What room is NOT mentioned?', '["Küche", "Wohnzimmer", "Balkon", "Schlafzimmer"]', 'Balkon', 1, 1),
  (l_id, 'fill_blank', 'Das Badezimmer ___ klein.', '["ist", "sind", "bin", "bist"]', 'ist', 1, 2);

  -- Listening: Wohnungssuche
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('f2480c35-8462-441e-bbf9-a477f07c7c60', 'Wohnungssuche', 'Listen to a short dialogue about finding an apartment.', 'Listening', 'listening', '["Understand basic questions about housing","Identify room names","Follow simple descriptions"]', 20, 6, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Dialog: A: "Ich suche eine Wohnung." B: "Wie viele Zimmer?" A: "Drei Zimmer: Wohnzimmer, Schlafzimmer, Küche." B: "Welche Stadt?" A: "Berlin." How many bedrooms does the person want?', '["One", "Two", "Three", "Four"]', 'Three', 'Drei Zimmer: Wohnzimmer, Schlafzimmer, Küche.', 1, 1),
  (l_id, 'true_false', 'The person is looking in München.', '["True", "False"]', 'False', 'Die Person sucht in Berlin.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "Ich suche eine Wohnung" mean?', '["I have an apartment", "I am looking for an apartment", "I am selling an apartment", "I like the apartment"]', 'I am looking for an apartment', 1, 1),
  (l_id, 'multiple_choice', 'What does "Wie viele Zimmer?" ask?', '["How many floors?", "How many rooms?", "How many windows?", "How many doors?"]', 'How many rooms?', 1, 2);

  -- Speaking: Die Wohnung beschreiben
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('f2480c35-8462-441e-bbf9-a477f07c7c60', 'Die Wohnung beschreiben', 'Describe your apartment or house using simple sentences.', 'Speaking', 'speaking', '["Describe rooms in your home","Say where things are","Use location prepositions"]', 25, 7, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "I live in an apartment"?', '["Ich wohne in einem Haus", "Ich wohne in einer Wohnung", "Ich wohne in ein Zimmer", "Ich wohne in eine Wohnung"]', 'Ich wohne in einer Wohnung', 'Wohnung is feminine → in einer.', 1, 1),
  (l_id, 'fill_gap', 'Das ___ (Wohnzimmer) ist groß.', '["Schlafzimmer", "Wohnzimmer", "Badezimmer", "Küche"]', 'Wohnzimmer', 'Das Wohnzimmer = living room.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "das Schlafzimmer"?', '["Living room", "Bedroom", "Bathroom", "Kitchen"]', 'Bedroom', 1, 1),
  (l_id, 'fill_blank', 'Ich wohne in ___ Haus.', '["einem", "einer", "ein", "eine"]', 'einem', 1, 2);

  -- Writing: Mein Zuhause
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('f2480c35-8462-441e-bbf9-a477f07c7c60', 'Mein Zuhause', 'Write a short text describing where you live.', 'Writing', 'writing', '["Write 3-4 sentences about your home","Use correct articles","Use prepositions correctly"]', 25, 8, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'translation', 'Translate: "I have a nice apartment."', '[]', 'Ich habe eine schöne Wohnung.', 'schöne Wohnung = nice apartment.', 2, 1),
  (l_id, 'multiple_choice', 'Which is correct?', '["Das Haus ist groß", "Der Haus ist groß", "Die Haus ist groß", "Den Haus ist groß"]', 'Das Haus ist groß', 'Haus is neuter → das.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Which article does "Zimmer" take?', '["der", "die", "das", "den"]', 'das', 1, 1),
  (l_id, 'fill_blank', 'Die Küche ___ klein.', '["ist", "sind", "bin", "bist"]', 'ist', 1, 2);

  -- Review
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('f2480c35-8462-441e-bbf9-a477f07c7c60', 'Modul 3 Wiederholung', 'Review housing vocabulary, articles, and location descriptions.', 'Review', 'review', '["Consolidate housing vocabulary","Practice article gender","Review location phrases"]', 30, 9, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'What is "die Küche"?', '["The bedroom", "The kitchen", "The bathroom", "The living room"]', 'The kitchen', 'Die Küche = kitchen.', 1, 1),
  (l_id, 'fill_gap', 'Ich wohne in ___ Haus.', '["einem", "einer", "ein", "eine"]', 'einem', 'Haus is neuter → in einem.', 1, 2);

  -- ====================================================================
  -- MODULE 4: Einkaufen und Essen (max lesson order: 3)
  -- ====================================================================

  -- Grammar: Accusative case
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('81ba0cad-eaee-496d-89a6-5d93db96b244', 'Der Akkusativ', 'Learn the accusative case for direct objects after specific verbs and prepositions.', 'Grammar', 'grammar', '["Identify direct objects","Use accusative articles (den, einen)","Use common accusative prepositions"]', 30, 4, true)
  returning id into l_id;
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Der Akkusativ', 'The accusative case marks the direct object of a sentence. Only masculine articles change in the accusative.', '[
    {"rule":"Masculine: der→den, ein→einen","note":"Ich habe den Tisch. Ich kaufe einen Tisch."},
    {"rule":"Feminine: no change (die→die, eine→eine)","note":"Ich kaufe die Blume. Ich kaufe eine Blume."},
    {"rule":"Neuter: no change (das→das, ein→ein)","note":"Ich kaufe das Brot. Ich kaufe ein Brot."},
    {"rule":"Plural: no change (die→die)","note":"Ich kaufe die Äpfel."}
  ]', '[
    {"german":"Ich kaufe den Apfel.","arabic":"أشتري التفاحة.","english":"I buy the apple."},
    {"german":"Ich habe einen Bruder.","arabic":"لدي أخ.","english":"I have a brother."},
    {"german":"Ich möchte einen Kaffee.","arabic":"أريد قهوة.","english":"I would like a coffee."}
  ]', '[
    {"mistake":"Using der after ich habe","correction":"Use den/einen for masculine objects","explanation":"Ich habe der Hund is wrong → Ich habe den Hund."},
    {"mistake":"Using accusative for all objects","correction":"Only direct objects take accusative","explanation":"Subject stays in nominative."}
  ]', 1);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich kaufe ___ (der) Apfel.', '["den", "der", "das", "die"]', 'den', 'Masculine accusative: der→den.', 1, 1),
  (l_id, 'multiple_choice', 'Which is correct: "I have a dog."?', '["Ich habe der Hund", "Ich habe den Hund", "Ich habe das Hund", "Ich habe die Hund"]', 'Ich habe den Hund', 'Hund is masculine → den/einen.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Which article changes in the accusative?', '["Feminine", "Masculine", "Neuter", "Plural"]', 'Masculine', 1, 1),
  (l_id, 'true_false', 'In the accusative, eine stays eine.', '["True", "False"]', 'True', 1, 2);

  -- Reading: Auf dem Markt
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('81ba0cad-eaee-496d-89a6-5d93db96b244', 'Auf dem Markt', 'Read a shopping dialogue and find specific information.', 'Reading', 'reading', '["Understand a simple shopping dialogue","Identify food vocabulary","Find prices and quantities"]', 25, 5, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Read: "Ich gehe zum Supermarkt. Ich kaufe Milch, Brot und Käse. Die Milch kostet 1,20 Euro. Das Brot kostet 2,50 Euro. Der Käse kostet 3 Euro. Ich bezahle 6,70 Euro." What is the most expensive item?', '["Milch", "Brot", "Käse", "Eier"]', 'Käse', 'Käse kostet 3 Euro.', 1, 1),
  (l_id, 'fill_gap', 'Total price: ___ Euro.', '["5,70", "6,70", "7,70", "4,70"]', '6,70', '1,20 + 2,50 + 3,00 = 6,70 Euro.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does the person buy?', '["Fish, bread, cheese", "Milk, bread, cheese", "Milk, eggs, bread", "Bread, butter, milk"]', 'Milk, bread, cheese', 1, 1),
  (l_id, 'fill_blank', 'Die Milch kostet 1,20 ___.', '["Euro", "Cent", "Dollar", "Pfund"]', 'Euro', 1, 2);

  -- Speaking: Im Restaurant
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('81ba0cad-eaee-496d-89a6-5d93db96b244', 'Im Restaurant', 'Practice ordering food and drinks in a restaurant.', 'Speaking', 'speaking', '["Order food and drinks","Ask for the bill","Use basic restaurant phrases"]', 25, 6, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you order a coffee?', '["Ich möchte einen Kaffee", "Ich will einen Kaffee", "Kaffee jetzt", "Geben Sie Kaffee"]', 'Ich möchte einen Kaffee', '"Ich möchte" is the polite way to order.', 1, 1),
  (l_id, 'fill_gap', 'Die ___ bitte! (Speisekarte)', '["Rechnung", "Speisekarte", "Karte", "Menü"]', 'Speisekarte', 'Die Speisekarte = the menu.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'How do you ask for the bill?', '["Die Karte, bitte", "Die Rechnung, bitte", "Das Essen, bitte", "Das Geld, bitte"]', 'Die Rechnung, bitte', 1, 1),
  (l_id, 'fill_blank', 'Ich ___ ein Wasser.', '["möchte", "möchtest", "möchten", "willst"]', 'möchte', 1, 2);

  -- Review
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('81ba0cad-eaee-496d-89a6-5d93db96b244', 'Modul 4 Wiederholung', 'Review food and shopping vocabulary, accusative case, and ordering phrases.', 'Review', 'review', '["Consolidate food vocabulary","Practice accusative articles","Review restaurant phrases"]', 30, 7, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Apfel"?', '["The pear", "The apple", "The banana", "The orange"]', 'The apple', 'Der Apfel = apple.', 1, 1),
  (l_id, 'fill_gap', 'Ich kaufe ___ (ein) Apfel.', '["einen", "ein", "eine", "einer"]', 'einen', 'Apfel is masculine → einen.', 1, 2);

  -- ====================================================================
  -- MODULE 5: Arbeit und Beruf (max lesson order: 3)
  -- ====================================================================

  -- Grammar: Regular verb conjugation (present tense)
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('18d0ee8e-2642-4e84-b9cd-2e7fc3519b9d', 'Regelmäßige Verben', 'Learn how to conjugate regular German verbs in the present tense.', 'Grammar', 'grammar', '["Conjugate regular verbs","Understand verb stem and endings","Form sentences with regular verbs"]', 30, 4, true)
  returning id into l_id;
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Regelmäßige Verben im Präsens', 'Regular verbs follow a predictable pattern: remove -en from the infinitive and add personal endings.', '[
    {"rule":"ich: stem + e (ich lerne)","note":"Easiest form - just add e"},
    {"rule":"du: stem + st (du lernst)","note":"-st ending for informal you"},
    {"rule":"er/sie/es: stem + t (er lernt)","note":"-t ending for third person"},
    {"rule":"wir: stem + en (wir lernen)","note":"Same as infinitive"},
    {"rule":"ihr: stem + t (ihr lernt)","note":"-t - same as er/sie/es"},
    {"rule":"sie/Sie: stem + en (sie lernen, Sie lernen)","note":"Same as infinitive"}
  ]', '[
    {"german":"Ich lerne Deutsch.","arabic":"أتعلم الألمانية.","english":"I learn German."},
    {"german":"Arbeitest du in Berlin?","arabic":"هل تعمل في برلين؟","english":"Do you work in Berlin?"},
    {"german":"Er wohnt in Hamburg.","arabic":"هو يسكن في هامبورغ.","english":"He lives in Hamburg."}
  ]', '[
    {"mistake":"No ending for er/sie/es","correction":"Add -t for third person","explanation":"Er lerne is wrong → Er lernt."},
    {"mistake":"Using -en for du","correction":"Use -st for du","explanation":"Du lernen is wrong → Du lernst."}
  ]', 1);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'fill_gap', 'Ich ___ (arbeiten) in München.', '["arbeite", "arbeitest", "arbeitet", "arbeiten"]', 'arbeite', 'ich = stem + e.', 1, 1),
  (l_id, 'multiple_choice', 'Du ___ (wohnen) in Berlin.', '["wohne", "wohnst", "wohnt", "wohnen"]', 'wohnst', 'du = stem + st.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What ending goes with wir?', '["-e", "-st", "-t", "-en"]', '-en', 1, 1),
  (l_id, 'fill_blank', 'Er ___ (kommen) aus Japan.', '["komme", "kommst", "kommt", "kommen"]', 'kommt', 1, 2);

  -- Reading: Berufe
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('18d0ee8e-2642-4e84-b9cd-2e7fc3519b9d', 'Beruf kennenlernen', 'Read short job descriptions and identify professions.', 'Reading', 'reading', '["Identify profession names","Understand simple job descriptions","Match people to their jobs"]', 25, 5, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Read: "Herr Müller arbeitet in einem Krankenhaus. Er hilft kranken Menschen. Er ist Arzt. Frau Schmidt arbeitet in einer Schule. Sie unterrichtet Kinder. Sie ist Lehrerin." What is Herr Müller?', '["Lehrer", "Arzt", "Ingenieur", "Verkäufer"]', 'Arzt', 'Herr Müller arbeitet in einem Krankenhaus. Er ist Arzt.', 1, 1),
  (l_id, 'true_false', 'Frau Schmidt ist Ärztin.', '["True", "False"]', 'False', 'Frau Schmidt ist Lehrerin.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Where does Frau Schmidt work?', '["Hospital", "School", "Office", "Bank"]', 'School', 1, 1),
  (l_id, 'fill_blank', 'Ein Arzt arbeitet in einem ___.', '["Büro", "Krankenhaus", "Restaurant", "Geschäft"]', 'Krankenhaus', 1, 2);

  -- Speaking: Was machst du?
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('18d0ee8e-2642-4e84-b9cd-2e7fc3519b9d', 'Was machst du?', 'Talk about your job and daily activities.', 'Speaking', 'speaking', '["Say what you do for work","Ask others about their job","Talk about daily routines"]', 25, 6, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you ask "What is your profession?"', '["Was ist deine Arbeit?", "Was machst du beruflich?", "Wie ist dein Job?", "Arbeitest du?"]', 'Was machst du beruflich?', 'Standard question about profession.', 1, 1),
  (l_id, 'fill_gap', 'Ich ___ als Ingenieur.', '["arbeite", "arbeitest", "arbeitet", "arbeiten"]', 'arbeite', 'Ich arbeite als = I work as.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "Ich bin Student" mean?', '["I am a teacher", "I am a student", "I work in an office", "I am looking for work"]', 'I am a student', 1, 1),
  (l_id, 'fill_blank', 'Was ___ du von Beruf?', '["bist", "bin", "ist", "seid"]', 'bist', 1, 2);

  -- Writing: Mein Beruf
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('18d0ee8e-2642-4e84-b9cd-2e7fc3519b9d', 'Mein Beruf', 'Write a short paragraph about your job or dream job.', 'Writing', 'writing', '["Write 3-4 sentences about your job","Use regular verb conjugation","Use correct articles"]', 25, 7, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'translation', 'Translate: "I work in an office."', '[]', 'Ich arbeite in einem Büro.', 'Büro is neuter → in einem.', 2, 1),
  (l_id, 'multiple_choice', 'Ich ___ in einer Firma.', '["arbeite", "arbeitest", "arbeitet", "arbeiten"]', 'arbeite', 'Ich arbeite = I work.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "I work as an engineer"?', '["Ich arbeite von Ingenieur", "Ich arbeite als Ingenieur", "Ich arbeite für Ingenieur", "Ich arbeite mit Ingenieur"]', 'Ich arbeite als Ingenieur', 1, 1),
  (l_id, 'fill_blank', 'Ich ___ Student.', '["bin", "bist", "ist", "sind"]', 'bin', 1, 2);

  -- Review
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('18d0ee8e-2642-4e84-b9cd-2e7fc3519b9d', 'Modul 5 Wiederholung', 'Review profession vocabulary, regular verb conjugation, and workplace phrases.', 'Review', 'review', '["Consolidate profession vocabulary","Practice regular verb conjugation","Review work-related phrases"]', 30, 8, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Ingenieur"?', '["The doctor", "The teacher", "The engineer", "The lawyer"]', 'The engineer', 'Der Ingenieur = engineer.', 1, 1),
  (l_id, 'fill_gap', 'Wir ___ (arbeiten) zusammen.', '["arbeite", "arbeitest", "arbeitet", "arbeiten"]', 'arbeiten', 'wir = stem + en.', 1, 2);

  -- ====================================================================
  -- MODULE 6: Reisen und Freizeit (max lesson order: 3)
  -- ====================================================================

  -- Grammar: Modal verbs (können, müssen)
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('d7c244c8-fda5-4828-a7eb-f8a1e7924e92', 'Modalverben: können und müssen', 'Learn how to express ability (können) and necessity (müssen) with modal verbs.', 'Grammar', 'grammar', '["Conjugate können and müssen","Use modal verbs in sentences","Use correct modal verb word order"]', 30, 4, true)
  returning id into l_id;
  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Modalverben können und müssen', 'Modal verbs change the meaning of the main verb. They take position 2, and the main verb goes to the end.', '[
    {"rule":"können = can/to be able: ich kann, du kannst, er kann, wir können, ihr könnt, sie können","note":"Vowel change: o→a in ich/du/er"},
    {"rule":"müssen = must/have to: ich muss, du musst, er muss, wir müssen, ihr müsst, sie müssen","note":"No Umlaut in ich/du/er forms"},
    {"rule":"Modal verb in position 2, main verb at the end","note":"Ich kann Deutsch sprechen. (I can speak German.)"}
  ]', '[
    {"german":"Ich kann Deutsch sprechen.","arabic":"أستطيع التحدث بالألمانية.","english":"I can speak German."},
    {"german":"Du musst die Hausaufgaben machen.","arabic":"يجب عليك أن تقوم بالواجب.","english":"You must do the homework."},
    {"german":"Wir können nach Berlin fahren.","arabic":"يمكننا الذهاب إلى برلين.","english":"We can go to Berlin."}
  ]', '[
    {"mistake":"Putting main verb in position 2","correction":"Main verb goes to the end","explanation":"Ich kann sprechen Deutsch is wrong → Ich kann Deutsch sprechen."},
    {"mistake":"Using können with infinitive zu","correction":"No zu after modal verbs","explanation":"Ich kann zu schwimmen is wrong → Ich kann schwimmen."}
  ]', 1);
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "I can swim"?', '["Ich kann schwimmen", "Ich kann zu schwimmen", "Ich schwimmen kann", "Kann ich schwimmen"]', 'Ich kann schwimmen', 'Main verb at the end, no zu.', 1, 1),
  (l_id, 'fill_gap', 'Wir ___ (müssen) lernen.', '["muss", "musst", "müssen", "müsst"]', 'müssen', 'wir müssen = we must.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Where does the main verb go with a modal verb?', '["Position 2", "Position 1", "At the end", "After the modal"]', 'At the end', 1, 1),
  (l_id, 'fill_blank', 'Ich ___ (können) gut kochen.', '["kann", "kannst", "können", "könnt"]', 'kann', 1, 2);

  -- Reading: Reisepläne
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('d7c244c8-fda5-4828-a7eb-f8a1e7924e92', 'Reisepläne', 'Read a short text about travel plans.', 'Reading', 'reading', '["Understand a simple travel text","Identify destinations and times","Answer where/when questions"]', 25, 5, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Read: "Nächste Woche fahre ich nach Österreich. Ich fahre mit dem Zug. Mein Freund wohnt in Wien. Wir besuchen den Stephansdom und gehen in ein Café. Ich freue mich sehr!" How is the person traveling?', '["Mit dem Auto", "Mit dem Zug", "Mit dem Flugzeug", "Mit dem Bus"]', 'Mit dem Zug', 'Ich fahre mit dem Zug.', 1, 1),
  (l_id, 'true_false', 'The person is going to Berlin.', '["True", "False"]', 'False', 'Nach Österreich, not Berlin.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'Where does the friend live?', '["Salzburg", "Wien", "München", "Zürich"]', 'Wien', 1, 1),
  (l_id, 'multiple_choice', 'What does "nächste Woche" mean?', '["Last week", "Next week", "This week", "Every week"]', 'Next week', 1, 2);

  -- Speaking: Freizeitaktivitäten
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('d7c244c8-fda5-4828-a7eb-f8a1e7924e92', 'Freizeitaktivitäten', 'Talk about hobbies and free time activities.', 'Speaking', 'speaking', '["Describe hobbies","Say what you like to do","Use gern and nicht gern"]', 25, 6, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "I like to read"?', '["Ich lese gern", "Ich gern lese", "Ich mag lesen", "Ich lese gut"]', 'Ich lese gern', 'gern = like to / enjoy.', 1, 1),
  (l_id, 'fill_gap', 'Ich ___ gern Fußball. (spielen)', '["spiele", "spielst", "spielt", "spielen"]', 'spiele', 'Ich spiele = I play.', 1, 2);
  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "spielen" mean?', '["To swim", "To play", "To sing", "To dance"]', 'To play', 1, 1),
  (l_id, 'multiple_choice', 'How do you say "not at all" in German?', '["nicht gern", "gar nicht", "nie", "kein"]', 'gar nicht', 1, 2);

  -- Review
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values ('d7c244c8-fda5-4828-a7eb-f8a1e7924e92', 'Modul 6 Wiederholung', 'Review travel and leisure vocabulary, modal verbs, and hobby expressions.', 'Review', 'review', '["Consolidate travel vocabulary","Practice modal verbs","Review leisure time phrases"]', 30, 7, true)
  returning id into l_id;
  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Zug"?', '["The car", "The bus", "The train", "The bike"]', 'The train', 'Der Zug = train.', 1, 1),
  (l_id, 'fill_gap', 'Ich ___ (können) gut kochen.', '["kann", "kannst", "können", "könnt"]', 'kann', 'Ich kann = I can.', 1, 2);

end $$;
