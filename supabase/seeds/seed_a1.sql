-- ============================================================================
-- SEED: A1 (Beginner) - 5 modules
-- Generated curriculum following CEFR standards
-- ============================================================================

do $$
declare
  m_id uuid;
  l_id uuid;
begin

  -- Module 2: Familie und Alltag
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('dd285317-a3c8-4fef-bdb3-b5c428f2a94a', 'A1', 'Familie und Alltag', 'Learn to talk about your family, describe your daily routine, and tell time.', '["Describe family members and relationships","Use possessive articles mein/dein","Conjugate regular verbs in present tense","Tell time and talk about daily schedules","Describe people and introduce your family"]', 2, 5.0, true)
  returning id into m_id;

  -- Lesson 2.1: Die Familie
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Die Familie', 'Learn family member vocabulary and how to talk about your relatives.', 'Family', 'vocabulary', '["Identify family members in German","Use possessive articles mein/dein/Ihr","Ask about someone''s family","Describe family relationships"]', 30, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Familie', 'العائلة', 'the family', 'die', 'die Familien', 'noun', 'Meine Familie ist groß.', 'My family is big.', 1),
  (l_id, 'der Vater', 'الأب', 'the father', 'der', 'die Väter', 'noun', 'Mein Vater heißt Thomas.', 'My father is called Thomas.', 2),
  (l_id, 'die Mutter', 'الأم', 'the mother', 'die', 'die Mütter', 'noun', 'Meine Mutter ist Ärztin.', 'My mother is a doctor.', 3),
  (l_id, 'der Bruder', 'الأخ', 'the brother', 'der', 'die Brüder', 'noun', 'Ich habe einen Bruder.', 'I have one brother.', 4),
  (l_id, 'die Schwester', 'الأخت', 'the sister', 'die', 'die Schwestern', 'noun', 'Meine Schwester studiert in Berlin.', 'My sister studies in Berlin.', 5),
  (l_id, 'der Sohn', 'الابن', 'the son', 'der', 'die Söhne', 'noun', 'Ihr Sohn ist fünf Jahre alt.', 'Her son is five years old.', 6),
  (l_id, 'die Tochter', 'الابنة', 'the daughter', 'die', 'die Töchter', 'noun', 'Unsere Tochter geht in die Schule.', 'Our daughter goes to school.', 7),
  (l_id, 'der Onkel', 'العم / الخال', 'the uncle', 'der', 'die Onkel', 'noun', 'Mein Onkel wohnt in München.', 'My uncle lives in Munich.', 8),
  (l_id, 'die Tante', 'العمة / الخالة', 'the aunt', 'die', 'die Tanten', 'noun', 'Tante Anna kommt am Wochenende.', 'Aunt Anna is coming on the weekend.', 9),
  (l_id, 'der Cousin', 'ابن العم / ابن الخال', 'the cousin (m)', 'der', 'die Cousins', 'noun', 'Mein Cousin und ich spielen Fußball.', 'My cousin and I play soccer.', 10),
  (l_id, 'die Cousine', 'ابنة العم / ابنة الخال', 'the cousin (f)', 'die', 'die Cousinen', 'noun', 'Meine Cousine ist sehr nett.', 'My cousin is very nice.', 11),
  (l_id, 'der Großvater', 'الجد', 'the grandfather', 'der', 'die Großväter', 'noun', 'Mein Großvater ist 80 Jahre alt.', 'My grandfather is 80 years old.', 12),
  (l_id, 'die Großmutter', 'الجدة', 'the grandmother', 'die', 'die Großmütter', 'noun', 'Meine Großmutter kocht gut.', 'My grandmother cooks well.', 13),
  (l_id, 'verheiratet', 'متزوج', 'married', NULL, NULL, 'adjective', 'Meine Eltern sind verheiratet.', 'My parents are married.', 14),
  (l_id, 'ledig', 'أعزب', 'single', NULL, NULL, 'adjective', 'Mein Onkel ist ledig.', 'My uncle is single.', 15);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Possessivartikel (Possessive Articles)', 'Possessive articles show ownership. In German, they change based on the gender of the owned item and who owns it. mein = my, dein = your (informal), sein = his, ihr = her, unser = our, euer = your (plural), Ihr = your (formal).', '[{"rule":"mein = my (ich)","note":"Mein Vater, meine Mutter, mein Kind"},{"rule":"dein = your (du, informal)","note":"Dein Bruder, deine Schwester"},{"rule":"sein = his (er)","note":"Sein Onkel wohnt in Berlin"},{"rule":"ihr = her (sie)","note":"Ihre Tante ist Ärztin"},{"rule":"unser = our (wir)","note":"Unsere Familie ist groß"},{"rule":"euer = your (ihr, plural)","note":"Euer Haus ist schön"},{"rule":"Ihr = your (Sie, formal)","note":"Ihr Sohn ist sehr nett"}]', '[{"german":"Mein Vater heißt Peter.","arabic":"اسم والدي بيتر.","english":"My father is called Peter."},{"german":"Deine Mutter ist nett.","arabic":"أمك لطيفة.","english":"Your mother is nice."},{"german":"Sein Bruder studiert Medizin.","arabic":"أخوه يدرس الطب.","english":"His brother studies medicine."},{"german":"Ihre Schwester wohnt in Köln.","arabic":"أختها تسكن في كولونيا.","english":"Her sister lives in Cologne."},{"german":"Unsere Großeltern sind zu Besuch.","arabic":"أجدادنا في زيارة.","english":"Our grandparents are visiting."}]', '[{"mistake":"Using mein when the owner is female","correction":"Use ihr for female owners: Ihre Schwester","explanation":"Possessive articles agree with the owner, not the owned item."},{"mistake":"Forgetting to change the ending for feminine nouns","correction":"Add -e for feminine: meine Mutter, meine Schwester","explanation":"Feminine nouns (die) use meine, deine, seine, ihre."},{"mistake":"Confusing ihr (her) and Ihr (formal your)","correction":"Ihr with capital I = formal you, ihr with lowercase = her","explanation":"Capitalization is crucial: Ihre Tochter = your daughter (formal) vs ihre Tochter = her daughter."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "my mother" in German?', '["Mein Mutter","Meine Mutter","Meiner Mutter","Meines Mutter"]', 'Meine Mutter', 'Mutter is feminine (die), so we use "meine".', 1, 1),
  (l_id, 'multiple_choice', 'What is "der Bruder" in Arabic?', '["الأخت","الأخ","الأب","الأم"]', 'الأخ', 'Bruder means brother.', 1, 2),
  (l_id, 'fill_gap', 'Complete: Meine ___ (grandmother) ist 70 Jahre alt.', '["Großmutter","Großvater","Mutter","Tante"]', 'Großmutter', 'Großmutter = grandmother.', 1, 3),
  (l_id, 'fill_gap', '___ (His) Schwester heißt Anna.', '["Seine","Sein","Seiner","Seines"]', 'Seine', 'Schwester is feminine, so "seine".', 1, 4),
  (l_id, 'translation', 'Translate to German: "Our family is big."', '[]', 'Unsere Familie ist groß.', 'Familie is feminine → unsere.', 2, 5),
  (l_id, 'matching', 'Match the possessive articles: mein, dein, sein, ihr', '["my, your (inf), his, her","his, her, my, your","your, my, her, his","her, his, your, my"]', 'my, your (inf), his, her', 'mein=my, dein=your, sein=his, ihr=her.', 1, 6);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "die Tante" mean?', '["The aunt","The uncle","The cousin","The grandmother"]', 'The aunt', 1, 1),
  (l_id, 'multiple_choice', 'Which is correct for "her brother"?', '["Ihr Bruder","Sein Bruder","Dein Bruder","Unser Bruder"]', 'Ihr Bruder', 1, 2),
  (l_id, 'true_false', '"Der Großvater" means grandfather.', '["True","False"]', 'True', 1, 3),
  (l_id, 'fill_blank', 'Meine Eltern ___ verheiratet.', '["sind","ist","bin","seid"]', 'sind', 1, 4),
  (l_id, 'multiple_choice', 'How do you say "single" (not married) in German?', '["verheiratet","ledig","geschieden","verlobt"]', 'ledig', 1, 5),
  (l_id, 'true_false', '"Unser" means "our" in German.', '["True","False"]', 'True', 1, 6),
  (l_id, 'multiple_choice', 'What is the plural of "der Bruder"?', '["die Brüder","die Bruders","die Bruder","die Brüden"]', 'die Brüder', 1, 7),
  (l_id, 'fill_blank', 'Ihre (her) ___ (daughter) ist fünf Jahre alt.', '["Tochter","Sohn","Schwester","Tante"]', 'Tochter', 1, 8);

  -- Lesson 2.2: Mein Tagesablauf
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Mein Tagesablauf', 'Describe your daily routine using regular verbs and time expressions.', 'Daily Routine', 'vocabulary', '["Describe your daily activities","Use regular verb conjugations","Tell time in German","Use time expressions like morgens, abends","Sequence events in a day"]', 30, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'aufstehen', 'يستيقظ', 'to get up', NULL, NULL, 'verb', 'Ich stehe um 7 Uhr auf.', 'I get up at 7 o''clock.', 1),
  (l_id, 'frühstücken', 'يتناول الفطور', 'to have breakfast', NULL, NULL, 'verb', 'Wir frühstücken zusammen.', 'We have breakfast together.', 2),
  (l_id, 'duschen', 'يستحم', 'to shower', NULL, NULL, 'verb', 'Ich dusche jeden Morgen.', 'I shower every morning.', 3),
  (l_id, 'anziehen', 'يرتدي', 'to get dressed', NULL, NULL, 'verb', 'Ich ziehe mich an.', 'I get dressed.', 4),
  (l_id, 'gehen', 'يذهب', 'to go', NULL, NULL, 'verb', 'Ich gehe zur Arbeit.', 'I go to work.', 5),
  (l_id, 'arbeiten', 'يعمل', 'to work', NULL, NULL, 'verb', 'Er arbeitet in einer Firma.', 'He works in a company.', 6),
  (l_id, 'essen', 'يأكل', 'to eat', NULL, NULL, 'verb', 'Wir essen um 13 Uhr zu Mittag.', 'We eat lunch at 1 PM.', 7),
  (l_id, 'trinken', 'يشرب', 'to drink', NULL, NULL, 'verb', 'Ich trinke gerne Kaffee.', 'I like to drink coffee.', 8),
  (l_id, 'lesen', 'يقرأ', 'to read', NULL, NULL, 'verb', 'Sie liest ein Buch.', 'She reads a book.', 9),
  (l_id, 'schlafen', 'ينام', 'to sleep', NULL, NULL, 'verb', 'Das Kind schläft um 20 Uhr.', 'The child sleeps at 8 PM.', 10),
  (l_id, 'fernsehen', 'يشاهد التلفاز', 'to watch TV', NULL, NULL, 'verb', 'Wir sehen abends fern.', 'We watch TV in the evening.', 11),
  (l_id, 'kochen', 'يطبخ', 'to cook', NULL, NULL, 'verb', 'Meine Mutter kocht gut.', 'My mother cooks well.', 12),
  (l_id, 'putzen', 'ينظف', 'to clean', NULL, NULL, 'verb', 'Ich putze am Samstag die Wohnung.', 'I clean the apartment on Saturday.', 13),
  (l_id, 'einkaufen', 'يتسوق', 'to shop', NULL, NULL, 'verb', 'Wir kaufen am Freitag ein.', 'We shop on Friday.', 14),
  (l_id, 'morgens', 'صباحاً', 'in the morning', NULL, NULL, 'adverb', 'Morgens stehe ich um 6 Uhr auf.', 'In the morning I get up at 6.', 15),
  (l_id, 'abends', 'مساءً', 'in the evening', NULL, NULL, 'adverb', 'Abends lese ich ein Buch.', 'In the evening I read a book.', 16),
  (l_id, 'mittags', 'ظهراً', 'at noon', NULL, NULL, 'adverb', 'Mittags esse ich zu Mittag.', 'At noon I have lunch.', 17);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Regelmäßige Verben im Präsens (Regular Verbs in Present Tense)', 'Regular verbs follow a consistent pattern in German. The infinitive ends in -en. Remove -en and add the personal ending: ich -e, du -st, er/sie/es -t, wir -en, ihr -t, sie/Sie -en.', '[{"rule":"ich: stem + e","note":"Ich arbeit-e, ich koch-e, ich lern-e"},{"rule":"du: stem + st","note":"Du arbeit-est, du koch-st, du lern-st"},{"rule":"er/sie/es: stem + t","note":"Er arbeit-et, sie koch-t, es lern-t"},{"rule":"wir: stem + en","note":"Wir arbeit-en, wir koch-en, wir lern-en"},{"rule":"ihr: stem + t","note":"Ihr arbeit-et, ihr koch-t, ihr lern-t"},{"rule":"sie/Sie: stem + en","note":"Sie arbeit-en, Sie koch-en"}]', '[{"german":"Ich arbeite in einer Bank.","arabic":"أنا أعمل في بنك.","english":"I work in a bank."},{"german":"Du kochst sehr gut.","arabic":"أنت تطبخ جيداً جداً.","english":"You cook very well."},{"german":"Er spielt Fußball.","arabic":"هو يلعب كرة القدم.","english":"He plays soccer."},{"german":"Sie lernt Deutsch.","arabic":"هي تتعلم الألمانية.","english":"She learns German."},{"german":"Wir wohnen in Berlin.","arabic":"نحن نسكن في برلين.","english":"We live in Berlin."}]', '[{"mistake":"Forgetting the -e in ich form for stems ending in t/d","correction":"ich arbeite, ich rede, not ich arbeit, ich red","explanation":"Stems ending in t, d, m, n need -e before -st and -t: du arbeitest, er arbeitet."},{"mistake":"Using infinitive instead of conjugated form","correction":"Ich arbeite, not ich arbeiten","explanation":"The conjugated verb changes based on the subject."},{"mistake":"Wrong ending for wir/sie/Sie","correction":"Wir arbeiten, sie arbeiten, Sie arbeiten (same as infinitive)","explanation":"wir, sie, and Sie all use the infinitive form."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'What is the correct form: Ich ___ (to work) in einer Firma.', '["arbeite","arbeitest","arbeitet","arbeiten"]', 'arbeite', 'ich = arbeite.', 1, 1),
  (l_id, 'multiple_choice', 'How do you say "she cooks" in German?', '["Ich koche","Du kochst","Sie kocht","Wir kochen"]', 'Sie kocht', 'sie (she) = kocht.', 1, 2),
  (l_id, 'fill_gap', 'Wir ___ (to learn) Deutsch.', '["lerne","lernst","lernt","lernen"]', 'lernen', 'wir = lernen.', 1, 3),
  (l_id, 'fill_gap', 'Er ___ (to play) Fußball.', '["spiele","spielst","spielt","spielen"]', 'spielt', 'er = spielt.', 1, 4),
  (l_id, 'translation', 'Translate to German: "I get up at 6 o''clock."', '[]', 'Ich stehe um 6 Uhr auf.', 'aufstehen is separable: "Ich stehe...auf".', 2, 5),
  (l_id, 'sentence_order', 'Order the sentence: koche / Ich / jeden Tag', '[]', 'Ich koche jeden Tag.', 'Subject + verb + time = standard word order.', 2, 6);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "aufstehen" in English?', '["To go to bed","To get up","To eat","To work"]', 'To get up', 1, 1),
  (l_id, 'multiple_choice', 'Which verb means "to shop"?', '["kochen","putzen","einkaufen","schlafen"]', 'einkaufen', 1, 2),
  (l_id, 'true_false', '"Fernsehen" means "to read".', '["True","False"]', 'False', 1, 3),
  (l_id, 'fill_blank', 'Ich ___ (to drink) Kaffee.', '["trinke","trinkst","trinkt","trinken"]', 'trinke', 1, 4),
  (l_id, 'multiple_choice', 'What time expression means "in the evening"?', '["morgens","mittags","abends","nachts"]', 'abends', 1, 5),
  (l_id, 'multiple_choice', 'How do you say "we eat" in German?', '["Ich esse","Du isst","Wir essen","Sie essen"]', 'Wir essen', 1, 6),
  (l_id, 'fill_blank', '___ (In the morning) stehe ich um 7 Uhr auf.', '["Morgens","Abends","Mittags","Nachts"]', 'Morgens', 1, 7),
  (l_id, 'true_false', '"Schlafen" means "to sleep".', '["True","False"]', 'True', 1, 8);

  -- Lesson 2.3: Die Uhrzeit
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Die Uhrzeit', 'Learn to tell time, ask for the time, and talk about schedules.', 'Telling Time', 'vocabulary', '["Ask and tell the time in German","Use official and colloquial time expressions","Use prepositions um, von, bis","Talk about opening hours and schedules"]', 25, 3, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Uhr', 'الساعة', 'clock / watch', 'die', 'die Uhren', 'noun', 'Die Uhr zeigt 10 Uhr.', 'The clock shows 10 o''clock.', 1),
  (l_id, 'die Uhrzeit', 'الوقت', 'the time', 'die', 'die Uhrzeiten', 'noun', 'Wie spät ist es?', 'What time is it?', 2),
  (l_id, 'die Stunde', 'الساعة (مدة)', 'the hour', 'die', 'die Stunden', 'noun', 'Eine Stunde hat 60 Minuten.', 'An hour has 60 minutes.', 3),
  (l_id, 'die Minute', 'الدقيقة', 'the minute', 'die', 'die Minuten', 'noun', 'Fünf Minuten später.', 'Five minutes later.', 4),
  (l_id, 'Viertel', 'ربع', 'quarter', 'das', 'die Viertel', 'noun', 'Viertel vor acht.', 'Quarter to eight.', 5),
  (l_id, 'halb', 'نصف', 'half', NULL, NULL, 'adjective', 'Halb zehn = 9:30.', 'Half past nine.', 6),
  (l_id, 'vor', 'قبل', 'to / before', NULL, NULL, 'preposition', 'Zehn vor zwölf.', 'Ten to twelve.', 7),
  (l_id, 'nach', 'بعد', 'past / after', NULL, NULL, 'preposition', 'Fünf nach drei.', 'Five past three.', 8),
  (l_id, 'spät', 'متأخر', 'late', NULL, NULL, 'adjective', 'Es ist spät.', 'It is late.', 9),
  (l_id, 'früh', 'مبكر', 'early', NULL, NULL, 'adjective', 'Ich komme früh.', 'I come early.', 10),
  (l_id, 'die Hälfte', 'النصف', 'the half', 'die', 'die Hälften', 'noun', 'Die Hälfte der Stunde.', 'Half of the hour.', 11);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Die Uhrzeit (Telling Time)', 'In German, there are two ways to tell time: the official way (used in announcements, schedules) and the colloquial way (used in everyday conversation). The official way counts hours 0-24 and minutes 0-59. The colloquial way divides the hour into halves and quarters.', '[{"rule":"Full hour: Es ist [number] Uhr.","note":"Es ist 8 Uhr. = It is 8 o''clock."},{"rule":"Official minutes: Es ist [Stunde] Uhr [Minute].","note":"Es ist 8 Uhr 15. = It is 8:15."},{"rule":"Colloquial: nach = past (minutes after)","note":"5 nach 8 = 8:05, 10 nach 8 = 8:10"},{"rule":"Colloquial: vor = to (minutes before)","note":"5 vor 8 = 7:55, 10 vor 8 = 7:50"},{"rule":"Viertel: Viertel nach / Viertel vor","note":"Viertel nach 8 = 8:15, Viertel vor 8 = 7:45"},{"rule":"Halb = half way TO the NEXT hour","note":"Halb 9 = 8:30 (halfway to 9)"},{"rule":"Ask: Wie spät ist es? or Wie viel Uhr ist es?","note":"Both mean \"What time is it?\""}]', '[{"german":"Es ist 9 Uhr.","arabic":"الساعة التاسعة.","english":"It is 9 o''clock."},{"german":"Es ist halb zehn.","arabic":"الساعة التاسعة والنصف.","english":"It is 9:30. (half to 10)"},{"german":"Es ist Viertel vor drei.","arabic":"الساعة الثالثة إلا ربع.","english":"It is 2:45. (quarter to 3)"},{"german":"Es ist fünf nach halb elf.","arabic":"الساعة العاشرة وخمسة وثلاثون دقيقة.","english":"It is 10:35."},{"german":"Um wie viel Uhr beginnt der Unterricht?","arabic":"في أي ساعة يبدأ الدرس؟","english":"What time does the lesson start?"}]', '[{"mistake":"Saying \"halb 8\" for 8:30 (it means 7:30)","correction":"Halb 8 = 7:30 (halfway to 8), not 8:30","explanation":"Halb refers to the NEXT hour, not the current one."},{"mistake":"Using \"nach\" for the second half of the hour","correction":"After 30 minutes, use \"vor\" for the next hour: 8:40 = 20 vor 9","explanation":"After half past, German uses \"vor\" pointing to the next hour."},{"mistake":"Forgetting \"Uhr\" in official time","correction":"Always say \"Es ist 14 Uhr\", not \"Es ist 14\"","explanation":"The word \"Uhr\" is required when stating the hour."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'What is 8:30 in colloquial German?', '["Halb neun","Halbe acht","Halb acht","Acht Uhr dreißig"]', 'Halb neun', 'Halb neun = 8:30 (halfway to 9).', 1, 1),
  (l_id, 'multiple_choice', 'How do you ask "What time is it?"', '["Wie geht es?","Wie spät ist es?","Wie viel?","Wo ist die Uhr?"]', 'Wie spät ist es?', 'Wie spät ist es? = What time is it?', 1, 2),
  (l_id, 'fill_gap', 'Es ist 10:15 = Viertel ___ zehn.', '["vor","nach","und","halb"]', 'nach', 'Viertel nach zehn = 10:15.', 1, 3),
  (l_id, 'fill_gap', 'Es ist 9:45 = Viertel ___ zehn.', '["vor","nach","und","halb"]', 'vor', 'Viertel vor zehn = 9:45.', 1, 4),
  (l_id, 'translation', 'Translate: "The lesson starts at 9 o''clock."', '[]', 'Der Unterricht beginnt um 9 Uhr.', 'Use "um" for specific times.', 2, 5),
  (l_id, 'matching', 'Match the times in order: 7:15, 7:30, 7:45, 8:00', '["Viertel nach 7, Halb 8, Viertel vor 8, 8 Uhr","Halb 8, Viertel nach 7, 8 Uhr, Viertel vor 8","8 Uhr, Halb 8, Viertel vor 8, Viertel nach 7","Viertel vor 8, 8 Uhr, Halb 8, Viertel nach 7"]', 'Viertel nach 7, Halb 8, Viertel vor 8, 8 Uhr', 'Match the times in order.', 1, 6);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "halb drei" mean?', '["3:30","2:30","3:00","2:00"]', '2:30', 1, 1),
  (l_id, 'multiple_choice', 'How do you say "10:40" colloquially?', '["Zehn nach halb elf","Viertel nach elf","Zehn vor elf","Halb elf"]', 'Zehn vor elf', 1, 2),
  (l_id, 'true_false', '"Viertel nach" means "quarter to".', '["True","False"]', 'False', 1, 3),
  (l_id, 'fill_blank', 'Wie ___ ist es?', '["spät","früh","viel","lang"]', 'spät', 1, 4),
  (l_id, 'multiple_choice', 'Which preposition is used for specific times?', '["um","am","im","von"]', 'um', 1, 5),
  (l_id, 'multiple_choice', 'What is 12:00 in German?', '["Halb zwölf","Zwölf Uhr","Viertel nach zwölf","Mittag"]', 'Zwölf Uhr', 1, 6);

  -- Lesson 2.4: Meine Familie
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Meine Familie', 'Read a short text about a German family and answer comprehension questions.', 'Family', 'vocabulary', '["Read and understand a simple family description","Identify family relationships in a text","Answer comprehension questions","Learn new vocabulary from context"]', 20, 4, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'zusammen', 'معاً', 'together', NULL, NULL, 'adverb', 'Wir wohnen zusammen.', 'We live together.', 1),
  (l_id, 'der Hund', 'الكلب', 'the dog', 'der', 'die Hunde', 'noun', 'Der Hund heißt Bello.', 'The dog is called Bello.', 2),
  (l_id, 'die Katze', 'القط', 'the cat', 'die', 'die Katzen', 'noun', 'Meine Katze ist schwarz.', 'My cat is black.', 3),
  (l_id, 'das Haustier', 'الحيوان الأليف', 'the pet', 'das', 'die Haustiere', 'noun', 'Hast du ein Haustier?', 'Do you have a pet?', 4),
  (l_id, 'der Beruf', 'المهنة', 'the profession', 'der', 'die Berufe', 'noun', 'Was ist dein Beruf?', 'What is your profession?', 5),
  (l_id, 'der Lehrer', 'المعلم', 'the teacher', 'der', 'die Lehrer', 'noun', 'Mein Vater ist Lehrer.', 'My father is a teacher.', 6),
  (l_id, 'die Schülerin', 'الطالبة', 'the student (f)', 'die', 'die Schülerinnen', 'noun', 'Sie ist Schülerin.', 'She is a student.', 7),
  (l_id, 'der Schüler', 'الطالب', 'the student (m)', 'der', 'die Schüler', 'noun', 'Er ist Schüler.', 'He is a student.', 8),
  (l_id, 'das Geschwister', 'الأشقاء', 'siblings', 'das', 'die Geschwister', 'noun', 'Hast du Geschwister?', 'Do you have siblings?', 9);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Der Satz: Hauptsatz (Main Clause Word Order)', 'German main clauses have Subject-Verb-Object (SVO) order, but the verb is always in the SECOND position. Time expressions often come first, followed by the verb, then the subject.', '[{"rule":"Verb is always in position 2","note":"Ich lerne Deutsch. / Heute lerne ich Deutsch."},{"rule":"Time can come first (position 1)","note":"Jeden Tag gehe ich zur Schule."},{"rule":"Subject after verb when time is first","note":"Am Wochenende besuche ich meine Familie."},{"rule":"Separable verbs: prefix goes to the end","note":"Ich stehe um 7 Uhr auf. (aufstehen)"}]', '[{"german":"Ich heiße Anna und wohne in Berlin.","arabic":"اسمي آنا وأسكن في برلين.","english":"My name is Anna and I live in Berlin."},{"german":"Mein Vater arbeitet als Lehrer.","arabic":"والدي يعمل معلماً.","english":"My father works as a teacher."},{"german":"Am Wochenende besuchen wir unsere Großeltern.","arabic":"في عطلة نهاية الأسبوع نزور أجدادنا.","english":"On the weekend we visit our grandparents."},{"german":"Jeden Morgen stehe ich um 6 Uhr auf.","arabic":"كل صباح أستيقظ في الساعة السادسة.","english":"Every morning I get up at 6 o''clock."}]', '[{"mistake":"Putting the verb at the end","correction":"Verb must be second: Heute lerne ich, not Heute ich lerne","explanation":"Verb position 2 is a fundamental German rule."},{"mistake":"Forgetting separable prefix at the end","correction":"Ich stehe um 7 Uhr auf, not Ich aufstehe um 7 Uhr","explanation":"The prefix goes to the end in present tense."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Read the text: "Hallo! Ich heiße Lisa und ich bin 25 Jahre alt. Ich wohne in München. Meine Familie ist nicht groß. Ich habe einen Bruder und eine Schwester. Mein Bruder heißt Max und ist 22. Meine Schwester heißt Emma und ist 18. Meine Mutter ist Ärztin und mein Vater ist Lehrer. Wir haben einen Hund. Er heißt Bello." What is Lisa''s brother''s name?', '["Max","Emma","Bello","Lisa"]', 'Max', 'Mein Bruder heißt Max.', 1, 1),
  (l_id, 'multiple_choice', 'How old is Lisa?', '["18","22","25","30"]', '25', 'Ich bin 25 Jahre alt.', 1, 2),
  (l_id, 'true_false', 'Lisa has two brothers.', '["True","False"]', 'False', 'She has one brother (Max) and one sister (Emma).', 1, 3),
  (l_id, 'fill_gap', 'Lisa wohnt in ___.', '["Berlin","München","Hamburg","Köln"]', 'München', 'Ich wohne in München.', 1, 4),
  (l_id, 'multiple_choice', 'What is Lisa''s mother''s profession?', '["Lehrerin","Ärztin","Schülerin","Anwältin"]', 'Ärztin', 'Meine Mutter ist Ärztin.', 1, 5),
  (l_id, 'translation', 'Translate: "We have a dog. His name is Bello."', '[]', 'Wir haben einen Hund. Er heißt Bello.', 'Hund is masculine (der).', 2, 6);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Beruf" in English?', '["The hobby","The profession","The name","The age"]', 'The profession', 1, 1),
  (l_id, 'true_false', '"Zusammen" means "together".', '["True","False"]', 'True', 1, 2),
  (l_id, 'fill_blank', 'Hast du ein ___ (pet)?', '["Haustier","Hund","Katze","Tier"]', 'Haustier', 1, 3),
  (l_id, 'multiple_choice', 'What is "der Lehrer" in Arabic?', '["الطالب","المعلم","الطبيبة","المهندس"]', 'المعلم', 1, 4),
  (l_id, 'true_false', '"Die Schülerin" means a male student.', '["True","False"]', 'False', 1, 5);

  -- Lesson 2.5: Meine Familie vorstellen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Meine Familie vorstellen', 'Practice introducing your family members in a speaking exercise.', 'Speaking', 'vocabulary', '["Introduce your family members","Describe your family in simple sentences","Answer questions about your family","Use possessive articles correctly while speaking"]', 15, 5, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'vorstellen', 'يقدم', 'to introduce', NULL, NULL, 'verb', 'Darf ich mich vorstellen?', 'May I introduce myself?', 1),
  (l_id, 'freuen', 'يفرح', 'to be glad', NULL, NULL, 'verb', 'Ich freue mich, Sie kennenzulernen.', 'Nice to meet you.', 2),
  (l_id, 'kennenlernen', 'يتعرف على', 'to get to know', NULL, NULL, 'verb', 'Ich lerne neue Leute kennen.', 'I get to know new people.', 3),
  (l_id, 'heißen', 'يسمى', 'to be called', NULL, NULL, 'verb', 'Ich heiße Anna.', 'My name is Anna.', 4),
  (l_id, 'wohnen', 'يسكن', 'to live', NULL, NULL, 'verb', 'Ich wohne in Berlin.', 'I live in Berlin.', 5),
  (l_id, 'kommen aus', 'يأتي من', 'to come from', NULL, NULL, 'verb', 'Ich komme aus Ägypten.', 'I come from Egypt.', 6),
  (l_id, 'freundlich', 'ودود', 'friendly', NULL, NULL, 'adjective', 'Meine Schwester ist freundlich.', 'My sister is friendly.', 7),
  (l_id, 'nett', 'لطيف', 'nice', NULL, NULL, 'adjective', 'Mein Bruder ist nett.', 'My brother is nice.', 8);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Sich vorstellen (Introducing Yourself)', 'When introducing yourself or your family in German, use these key phrases. The verb "sich vorstellen" is reflexive: "ich stelle mich vor". Use "Ich heiße..." for your name and "Mein/e... ist..." for family members.', '[{"rule":"Introduce yourself: Ich heiße... / Mein Name ist...","note":"Ich heiße Anna. or Mein Name ist Anna."},{"rule":"Introduce others: Das ist mein/e...","note":"Das ist mein Vater. Das ist meine Mutter."},{"rule":"Describe: [Person] ist [adjective]","note":"Meine Schwester ist nett und freundlich."},{"rule":"Saying where you live: Ich wohne in...","note":"Ich wohne in Berlin. / Wir wohnen in München."},{"rule":"Saying where you come from: Ich komme aus...","note":"Ich komme aus Deutschland / Ägypten / Marokko."}]', '[{"german":"Darf ich mich vorstellen? Ich heiße Anna.","arabic":"هل لي أن أقدم نفسي؟ اسمي آنا.","english":"May I introduce myself? My name is Anna."},{"german":"Das ist mein Vater. Er heißt Thomas.","arabic":"هذا والدي. اسمه توماس.","english":"This is my father. His name is Thomas."},{"german":"Meine Mutter ist Ärztin. Sie arbeitet in einem Krankenhaus.","arabic":"أمي طبيبة. تعمل في مستشفى.","english":"My mother is a doctor. She works in a hospital."},{"german":"Ich wohne in Köln und komme aus Marokko.","arabic":"أسكن في كولونيا وأنا من المغرب.","english":"I live in Cologne and I come from Morocco."}]', '[{"mistake":"Using \"Ich heiße\" for introducing others","correction":"Use \"Das ist...\" for others, not \"Er heißt...\" in introductions","explanation":"\"Das ist...\" is the standard way to introduce someone else."},{"mistake":"Forgetting to conjugate \"vorstellen\"","correction":"Ich stelle mich vor, not Ich vorstellen mich","explanation":"vorstellen is a separable verb: the prefix goes to the end."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you introduce yourself in German?', '["Ich heiße...","Wie geht es?","Tschüss","Danke"]', 'Ich heiße...', 'Use "Ich heiße..." or "Mein Name ist..." to introduce yourself.', 1, 1),
  (l_id, 'fill_gap', 'Darf ich mich ___ (introduce)?', '["vorstellen","kennenlernen","freuen","heißen"]', 'vorstellen', 'sich vorstellen = to introduce oneself.', 1, 2),
  (l_id, 'multiple_choice', 'What do you say when meeting someone for the first time?', '["Hallo","Tschüss","Freut mich!","Gute Nacht"]', 'Freut mich!', '"Freut mich!" = "Pleased to meet you!"', 1, 3),
  (l_id, 'fill_gap', 'Das ist ___ (my) Vater.', '["mein","meine","meiner","meines"]', 'mein', 'Vater is masculine → mein.', 1, 4),
  (l_id, 'translation', 'Translate: "I come from Egypt."', '[]', 'Ich komme aus Ägypten.', 'Use "kommen aus" for origin.', 2, 5),
  (l_id, 'multiple_choice', 'How do you say "This is my mother" in German?', '["Das ist mein Mutter","Das ist meine Mutter","Das ist meiner Mutter","Das ist meines Mutter"]', 'Das ist meine Mutter', 'Mutter is feminine → meine.', 1, 6);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "Nice to meet you" in German?', '["Guten Tag","Freut mich","Wie geht es","Auf Wiedersehen"]', 'Freut mich', 1, 1),
  (l_id, 'true_false', '"Kennenlernen" means "to introduce".', '["True","False"]', 'False', 1, 2),
  (l_id, 'fill_blank', 'Darf ich mich ___? (May I introduce myself?)', '["vorstellen","vorstellt","vorgestellt","vorstell"]', 'vorstellen', 1, 3),
  (l_id, 'multiple_choice', 'Which phrase is used for introducing someone else?', '["Ich heiße...","Das ist...","Wie heißt...","Mein Name..."]', 'Das ist...', 1, 4),
  (l_id, 'true_false', '"Ich komme aus" means "I come from".', '["True","False"]', 'True', 1, 5);

  -- Lesson 2.6: Test: Familie und Alltag
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Familie und Alltag', 'Test your knowledge of Module 2 content.', 'Test', 'test', '["Test family vocabulary","Test possessive articles","Test daily routine verbs","Test time-telling"]', 20, 6, true)
  returning id into l_id;

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "die Mutter" in English?', '["The father","The mother","The sister","The aunt"]', 'The mother', 2, 1),
  (l_id, 'multiple_choice', 'Which possessive article means "our"?', '["euer","unser","sein","ihr"]', 'unser', 2, 2),
  (l_id, 'true_false', '"Aufstehen" means "to go to bed".', '["True","False"]', 'False', 2, 3),
  (l_id, 'fill_blank', 'Complete: Es ist Viertel ___ (past) acht. (8:15)', '["nach","vor","und","halb"]', 'nach', 2, 4),
  (l_id, 'multiple_choice', 'What is 7:30 in German?', '["Halb sieben","Halb acht","Sieben Uhr dreißig","Both B and C"]', 'Both B and C', 2, 5),
  (l_id, 'true_false', 'In German, the verb is always in the second position.', '["True","False"]', 'True', 2, 6),
  (l_id, 'fill_blank', 'Mein Onkel ist ___ (single).', '["ledig","verheiratet","geschieden","verlobt"]', 'ledig', 2, 7),
  (l_id, 'multiple_choice', 'How do you say "I cook" in German?', '["Du kochst","Ich koche","Er kocht","Wir kochen"]', 'Ich koche', 2, 8),
  (l_id, 'multiple_choice', 'What is "das Haustier"?', '["The house","The pet","The animal","The farm"]', 'The pet', 2, 9),
  (l_id, 'fill_blank', 'Translate: "How much does that cost?" → Was ___ das?', '["kostet","kosten","koste","kost"]', 'kostet', 2, 10);

  -- Module 3: Wohnen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('f2480c35-8462-441e-bbf9-a477f07c7c60', 'A1', 'Wohnen', 'Learn vocabulary about homes, furniture, and describing where you live.', '["Describe your home and rooms","Name furniture and household items","Use prepositions of location","Talk about apartment hunting"]', 3, 5.0, true)
  returning id into m_id;

  -- Lesson 3.1: Mein Zuhause
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Mein Zuhause', 'Learn rooms and furniture vocabulary.', 'Home', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 30, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Haus', 'المنزل', 'house', 'das', 'die Häuser', 'noun', 'Wir wohnen in einem Haus.', 'We live in a house.', 1),
  (l_id, 'die Wohnung', 'الشقة', 'apartment', 'die', 'die Wohnungen', 'noun', 'Meine Wohnung ist klein.', 'My apartment is small.', 2),
  (l_id, 'das Zimmer', 'الغرفة', 'room', 'das', 'die Zimmer', 'noun', 'Das Zimmer ist hell.', 'The room is bright.', 3),
  (l_id, 'das Wohnzimmer', 'غرفة المعيشة', 'living room', 'das', 'die Wohnzimmer', 'noun', 'Das Wohnzimmer ist gemütlich.', 'The living room is cozy.', 4),
  (l_id, 'das Schlafzimmer', 'غرفة النوم', 'bedroom', 'das', 'die Schlafzimmer', 'noun', 'Mein Schlafzimmer ist groß.', 'My bedroom is big.', 5),
  (l_id, 'die Küche', 'المطبخ', 'kitchen', 'die', 'die Küchen', 'noun', 'Die Küche ist modern.', 'The kitchen is modern.', 6),
  (l_id, 'das Bad', 'الحمام', 'bathroom', 'das', 'die Bäder', 'noun', 'Das Bad hat eine Dusche.', 'The bathroom has a shower.', 7),
  (l_id, 'der Tisch', 'الطاولة', 'table', 'der', 'die Tische', 'noun', 'Der Tisch ist aus Holz.', 'The table is made of wood.', 8),
  (l_id, 'der Stuhl', 'الكرسي', 'chair', 'der', 'die Stühle', 'noun', 'Hier sind vier Stühle.', 'Here are four chairs.', 9),
  (l_id, 'das Bett', 'السرير', 'bed', 'das', 'die Betten', 'noun', 'Das Bett ist bequem.', 'The bed is comfortable.', 10),
  (l_id, 'der Schrank', 'الخزانة', 'wardrobe', 'der', 'die Schränke', 'noun', 'Der Schrank ist voll.', 'The wardrobe is full.', 11),
  (l_id, 'das Sofa', 'الأريكة', 'sofa', 'das', 'die Sofas', 'noun', 'Das Sofa ist rot.', 'The sofa is red.', 12),
  (l_id, 'der Herd', 'الموقد', 'stove', 'der', 'die Herde', 'noun', 'Der Herd ist elektrisch.', 'The stove is electric.', 13),
  (l_id, 'der Kühlschrank', 'الثلاجة', 'refrigerator', 'der', 'die Kühlschränke', 'noun', 'Im Kühlschrank ist Milch.', 'There is milk in the fridge.', 14),
  (l_id, 'die Waschmaschine', 'الغسالة', 'washing machine', 'die', 'die Waschmaschinen', 'noun', 'Die Waschmaschine ist im Keller.', 'The washing machine is in the basement.', 15);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Bestimmter und unbestimmter Artikel (Definite & Indefinite Articles)', 'German has three genders: masculine (der), feminine (die), neuter (das). The indefinite articles are ein (m/n) and eine (f). The choice depends on the noun''s gender.', '[{"rule":"Masculine: der / ein","note":"der Tisch, ein Tisch; der Stuhl, ein Stuhl"},{"rule":"Feminine: die / eine","note":"die Küche, eine Küche; die Wohnung, eine Wohnung"},{"rule":"Neuter: das / ein","note":"das Zimmer, ein Zimmer; das Bett, ein Bett"},{"rule":"Plural: die / (no indefinite)","note":"die Tische, die Zimmer (no \"eine\" in plural)"}]', '[{"german":"Das ist ein Tisch.","arabic":"هذه طاولة.","english":"This is a table."},{"german":"Das ist eine Küche.","arabic":"هذا مطبخ.","english":"This is a kitchen."},{"german":"Das ist ein Bett.","arabic":"هذا سرير.","english":"This is a bed."},{"german":"Die Tische sind neu.","arabic":"الطاولات جديدة.","english":"The tables are new."}]', '[{"mistake":"Using \"eine\" for masculine nouns","correction":"ein Tisch, not eine Tisch","explanation":"Masculine nouns use \"ein\" not \"eine\"."},{"mistake":"Forgetting gender changes meaning","correction":"der See (lake) vs die See (sea)","explanation":"Gender can change a word''s meaning completely."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Which article goes with "Tisch"?', '["der","die","das"]', 'der', 'Tisch is masculine.', 1, 1),
  (l_id, 'fill_gap', 'Das ist ___ (a) Wohnung.', '["ein","eine","einer"]', 'eine', 'Wohnung is feminine → eine.', 1, 2),
  (l_id, 'multiple_choice', 'What is "das Schlafzimmer"?', '["Living room","Bedroom","Kitchen","Bathroom"]', 'Bedroom', 'Schlafzimmer = sleeping room.', 1, 3),
  (l_id, 'fill_gap', 'Die ___ (kitchen) ist modern.', '["Küche","Küchen","Kücher"]', 'Küche', 'Küche = kitchen.', 1, 4),
  (l_id, 'translation', 'Translate: "The apartment is small."', '[]', 'Die Wohnung ist klein.', 'Wohnung is feminine.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "das Bad" in English?', '["The bed","The bathroom","The room","The basement"]', 'The bathroom', 1, 1),
  (l_id, 'true_false', '"Der Kühlschrank" means "refrigerator".', '["True","False"]', 'True', 1, 2),
  (l_id, 'fill_blank', 'Das ___ (living room) ist gemütlich.', '["Wohnzimmer","Schlafzimmer","Esszimmer","Badezimmer"]', 'Wohnzimmer', 1, 3),
  (l_id, 'multiple_choice', 'Which is the correct indefinite article for "Sofa"?', '["ein","eine","einer","eines"]', 'ein', 1, 4),
  (l_id, 'fill_blank', 'Der ___ (wardrobe) ist voll.', '["Schrank","Schränke","Schranke"]', 'Schrank', 1, 5);

  -- Lesson 3.2: Möbel und Haushalt
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Möbel und Haushalt', 'Learn furniture and household item vocabulary.', 'Furniture', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 30, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'die Lampe', 'المصباح', 'lamp', 'die', 'die Lampen', 'noun', 'Die Lampe ist an der Decke.', 'The lamp is on the ceiling.', 1),
  (l_id, 'der Teppich', 'السجادة', 'carpet', 'der', 'die Teppiche', 'noun', 'Der Teppich ist weich.', 'The carpet is soft.', 2),
  (l_id, 'der Spiegel', 'المرآة', 'mirror', 'der', 'die Spiegel', 'noun', 'Der Spiegel hängt an der Wand.', 'The mirror hangs on the wall.', 3),
  (l_id, 'das Bild', 'الصورة', 'picture', 'das', 'die Bilder', 'noun', 'Das Bild hängt im Wohnzimmer.', 'The picture hangs in the living room.', 4),
  (l_id, 'der Vorhang', 'الستارة', 'curtain', 'der', 'die Vorhänge', 'noun', 'Die Vorhänge sind blau.', 'The curtains are blue.', 5),
  (l_id, 'der Sessel', 'الكرسي الوثير', 'armchair', 'der', 'die Sessel', 'noun', 'Der Sessel ist bequem.', 'The armchair is comfortable.', 6),
  (l_id, 'das Regal', 'الرف', 'shelf', 'das', 'die Regale', 'noun', 'Das Regal ist aus Holz.', 'The shelf is made of wood.', 7),
  (l_id, 'der Schreibtisch', 'مكتب الكتابة', 'desk', 'der', 'die Schreibtische', 'noun', 'Der Schreibtisch steht am Fenster.', 'The desk is by the window.', 8),
  (l_id, 'der Mülleimer', 'سلة المهملات', 'trash can', 'der', 'die Mülleimer', 'noun', 'Der Mülleimer ist in der Küche.', 'The trash can is in the kitchen.', 9),
  (l_id, 'die Pflanze', 'النبات', 'plant', 'die', 'die Pflanzen', 'noun', 'Die Pflanze braucht Wasser.', 'The plant needs water.', 10),
  (l_id, 'hell', 'مشرق', 'bright', NULL, NULL, 'adjective', 'Das Zimmer ist sehr hell.', 'The room is very bright.', 11),
  (l_id, 'dunkel', 'مظلم', 'dark', NULL, NULL, 'adjective', 'Der Keller ist dunkel.', 'The basement is dark.', 12),
  (l_id, 'gemütlich', 'مريح', 'cozy', NULL, NULL, 'adjective', 'Das Wohnzimmer ist gemütlich.', 'The living room is cozy.', 13),
  (l_id, 'modern', 'حديث', 'modern', NULL, NULL, 'adjective', 'Die Küche ist modern.', 'The kitchen is modern.', 14);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Adjektive als Prädikat (Adjectives after "sein")', 'In German, when an adjective follows the verb "sein" (to be), it stays in its base form - no endings are added. This is different from when the adjective comes before a noun (attributive position).', '[{"rule":"After \"sein\": adjective stays unchanged","note":"Das Zimmer ist hell. (not helles)"},{"rule":"After \"werden\": adjective stays unchanged","note":"Es wird dunkel. (It becomes dark.)"},{"rule":"After \"bleiben\": adjective stays unchanged","note":"Die Wohnung bleibt klein. (stays small)"},{"rule":"Contrast with attributive: before noun","note":"Ein helles Zimmer (adjective gets endings before noun)"}]', '[{"german":"Das Wohnzimmer ist gemütlich.","arabic":"غرفة المعيشة مريحة.","english":"The living room is cozy."},{"german":"Die Küche ist modern.","arabic":"المطبخ حديث.","english":"The kitchen is modern."},{"german":"Der Teppich ist weich.","arabic":"السجادة ناعمة.","english":"The carpet is soft."},{"german":"Die Zimmer sind hell.","arabic":"الغرف مشرقة.","english":"The rooms are bright."}]', '[{"mistake":"Adding adjective endings after \"sein\"","correction":"Das Haus ist groß, not Das Haus ist großes","explanation":"After \"sein\", adjectives have no endings."},{"mistake":"Confusing predicate and attributive position","correction":"Before noun: ein großes Haus; after sein: Das Haus ist groß","explanation":"Only attributive adjectives (before noun) get endings."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Teppich" in English?', '["The table","The carpet","The curtain","The shelf"]', 'The carpet', 'Teppich = carpet.', 1, 1),
  (l_id, 'fill_gap', 'Das Zimmer ist ___ (bright).', '["hell","dunkel","groß","klein"]', 'hell', 'hell = bright.', 1, 2),
  (l_id, 'multiple_choice', 'Which word means "cozy"?', '["modern","gemütlich","dunkel","hell"]', 'gemütlich', 'gemütlich = cozy.', 1, 3),
  (l_id, 'fill_gap', 'Der ___ (mirror) hängt an der Wand.', '["Spiegel","Teppich","Vorhang","Sessel"]', 'Spiegel', 'Spiegel = mirror.', 1, 4),
  (l_id, 'translation', 'Translate: "The rooms are bright."', '[]', 'Die Zimmer sind hell.', 'After "sind", adjective stays unchanged: hell.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What does "der Vorhang" mean?', '["The carpet","The curtain","The mirror","The picture"]', 'The curtain', 1, 1),
  (l_id, 'true_false', '"Gemütlich" means "cozy" in English.', '["True","False"]', 'True', 1, 2),
  (l_id, 'fill_blank', 'Der ___ (desk) steht am Fenster.', '["Schreibtisch","Esstisch","Nachttisch","Couchtisch"]', 'Schreibtisch', 1, 3),
  (l_id, 'multiple_choice', 'Is "Das Haus ist groß" correct?', '["Yes, adjective after sein has no ending","No, it should be \"großes\"","No, it should be \"großer\"","No, it should be \"große\""]', 'Yes, adjective after sein has no ending', 1, 4),
  (l_id, 'fill_blank', 'Ich stelle die ___ (lamp) auf den Tisch.', '["Lampe","Lamp","Lampen","Lämpchen"]', 'Lampe', 1, 5);

  -- Lesson 3.3: Test: Wohnen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Wohnen', 'Test your knowledge of home and furniture vocabulary.', 'Test', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 15, 3, true)
  returning id into l_id;

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "die Wohnung" in English?', '["The house","The apartment","The room","The door"]', 'The apartment', 2, 1),
  (l_id, 'multiple_choice', 'Correct article for "Küche"?', '["der","die","das"]', 'die', 2, 2),
  (l_id, 'true_false', '"Der Kühlschrank" means "refrigerator".', '["True","False"]', 'True', 2, 3),
  (l_id, 'fill_blank', 'Das ___ (living room) ist gemütlich.', '["Wohnzimmer","Schlafzimmer","Esszimmer","Badezimmer"]', 'Wohnzimmer', 2, 4),
  (l_id, 'multiple_choice', 'Which adjective means "bright"?', '["dunkel","hell","groß","klein"]', 'hell', 2, 5),
  (l_id, 'true_false', 'After "sein", adjectives need special endings.', '["True","False"]', 'False', 2, 6),
  (l_id, 'fill_blank', 'Der ___ (wardrobe) ist aus Holz.', '["Schrank","Tisch","Stuhl","Sessel"]', 'Schrank', 2, 7),
  (l_id, 'multiple_choice', 'What does "gemütlich" mean?', '["Modern","Bright","Cozy","Large"]', 'Cozy', 2, 8);

  -- Module 4: Einkaufen und Essen
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('81ba0cad-eaee-496d-89a6-5d93db96b244', 'A1', 'Einkaufen und Essen', 'Learn shopping vocabulary, food names, and how to order in restaurants.', '["Name foods and drinks","Shop for groceries","Order in a restaurant","Understand prices and pay","Use \"möchten\" for polite requests"]', 4, 5.0, true)
  returning id into m_id;

  -- Lesson 4.1: Lebensmittel
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Lebensmittel', 'Learn food and grocery vocabulary.', 'Food', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 30, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Brot', 'الخبز', 'bread', 'das', 'die Brote', 'noun', 'Ich kaufe ein Brot.', 'I buy a loaf of bread.', 1),
  (l_id, 'die Milch', 'الحليب', 'milk', 'die', NULL, 'noun', 'Die Milch ist frisch.', 'The milk is fresh.', 2),
  (l_id, 'der Käse', 'الجبن', 'cheese', 'der', NULL, 'noun', 'Ich mag Käse.', 'I like cheese.', 3),
  (l_id, 'die Wurst', 'النقانق', 'sausage', 'die', 'die Würste', 'noun', 'Ich möchte eine Wurst.', 'I would like a sausage.', 4),
  (l_id, 'das Obst', 'الفاكهة', 'fruit', 'das', NULL, 'noun', 'Obst ist gesund.', 'Fruit is healthy.', 5),
  (l_id, 'das Gemüse', 'الخضروات', 'vegetables', 'das', NULL, 'noun', 'Wir kaufen Gemüse.', 'We buy vegetables.', 6),
  (l_id, 'der Apfel', 'التفاح', 'apple', 'der', 'die Äpfel', 'noun', 'Der Apfel schmeckt gut.', 'The apple tastes good.', 7),
  (l_id, 'die Banane', 'الموز', 'banana', 'die', 'die Bananen', 'noun', 'Die Banane ist gelb.', 'The banana is yellow.', 8),
  (l_id, 'das Wasser', 'الماء', 'water', 'das', NULL, 'noun', 'Ein Glas Wasser, bitte.', 'A glass of water, please.', 9),
  (l_id, 'der Saft', 'العصير', 'juice', 'der', 'die Säfte', 'noun', 'Ich trinke Apfelsaft.', 'I drink apple juice.', 10),
  (l_id, 'der Kaffee', 'القهوة', 'coffee', 'der', NULL, 'noun', 'Einen Kaffee, bitte.', 'A coffee, please.', 11),
  (l_id, 'der Tee', 'الشاي', 'tea', 'der', NULL, 'noun', 'Tee mit Zucker.', 'Tea with sugar.', 12),
  (l_id, 'das Fleisch', 'اللحم', 'meat', 'das', NULL, 'noun', 'Ich esse kein Fleisch.', 'I don''t eat meat.', 13),
  (l_id, 'der Fisch', 'السمك', 'fish', 'der', 'die Fische', 'noun', 'Der Fisch ist lecker.', 'The fish is delicious.', 14),
  (l_id, 'der Zucker', 'السكر', 'sugar', 'der', NULL, 'noun', 'Mit oder ohne Zucker?', 'With or without sugar?', 15);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Das Verb "möchten" (The Verb "would like")', '"möchten" is used for polite requests and wishes. It is the subjunctive form of "mögen". It''s one of the most useful verbs for shopping and ordering food.', '[{"rule":"ich möchte = I would like","note":"Ich möchte einen Kaffee."},{"rule":"du möchtest = you would like","note":"Möchtest du Tee?"},{"rule":"er/sie/es möchte = he/she/it would like","note":"Er möchte Wasser."},{"rule":"wir möchten = we would like","note":"Wir möchten zahlen."},{"rule":"ihr möchtet = you (pl) would like","note":"Möchtet ihr etwas essen?"},{"rule":"Sie möchten = you (formal) would like","note":"Möchten Sie ein Menü?"}]', '[{"german":"Ich möchte einen Kaffee, bitte.","arabic":"أريد قهوة من فضلك.","english":"I would like a coffee, please."},{"german":"Möchtest du Wasser?","arabic":"هل تريد ماء؟","english":"Would you like water?"},{"german":"Wir möchten zahlen.","arabic":"نريد أن ندفع.","english":"We would like to pay."},{"german":"Was möchten Sie?","arabic":"ماذا تريد؟","english":"What would you like?"}]', '[{"mistake":"Using \"ich möchte\" + infinitive without \"zu\"","correction":"Ich möchte essen, not Ich möchte zu essen","explanation":"möchten is modal-like; no \"zu\" needed."},{"mistake":"Using \"mögen\" instead of \"möchten\" for polite requests","correction":"Ich möchte..., not Ich mag...","explanation":"mögen = to like (general), möchten = would like (specific)."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you politely order a coffee?', '["Ich mag Kaffee","Ich möchte einen Kaffee","Ich trinke Kaffee","Kaffee!"]', 'Ich möchte einen Kaffee', 'Use "ich möchte" for polite requests.', 1, 1),
  (l_id, 'fill_gap', '___ (Would you like) du Tee?', '["Magst","Möchtest","Möchte","Mag"]', 'Möchtest', 'du = möchtest.', 1, 2),
  (l_id, 'multiple_choice', 'What is "der Saft" in English?', '["Salt","Juice","Soup","Sugar"]', 'Juice', 'Saft = juice.', 1, 3),
  (l_id, 'translation', 'Translate: "I would like water, please."', '[]', 'Ich möchte Wasser, bitte.', 'Wasser is neuter (das) → no article change.', 2, 4),
  (l_id, 'fill_gap', 'Das ___ (fruit) ist gesund.', '["Obst","Gemüse","Fleisch","Brot"]', 'Obst', 'Obst = fruit.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "die Milch" in English?', '["Milk","Meat","Bread","Butter"]', 'Milk', 1, 1),
  (l_id, 'true_false', '"Möchten" is used for polite requests.', '["True","False"]', 'True', 1, 2),
  (l_id, 'fill_blank', 'Ich möchte einen ___ (coffee).', '["Kaffee","Tee","Saft","Wasser"]', 'Kaffee', 1, 3),
  (l_id, 'multiple_choice', 'How do you say "We would like to pay"?', '["Ich möchte zahlen","Wir möchten zahlen","Sie möchten zahlen","Möchten Sie zahlen"]', 'Wir möchten zahlen', 1, 4),
  (l_id, 'fill_blank', 'Das ___ (vegetables) ist frisch.', '["Gemüse","Obst","Fleisch","Brot"]', 'Gemüse', 1, 5);

  -- Lesson 4.2: Im Restaurant
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Im Restaurant', 'Learn how to order food and interact in a restaurant.', 'Restaurant', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 30, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Restaurant', 'المطعم', 'restaurant', 'das', 'die Restaurants', 'noun', 'Das Restaurant ist um die Ecke.', 'The restaurant is around the corner.', 1),
  (l_id, 'die Speisekarte', 'قائمة الطعام', 'menu', 'die', 'die Speisekarten', 'noun', 'Die Speisekarte, bitte.', 'The menu, please.', 2),
  (l_id, 'der Kellner', 'النادل', 'waiter', 'der', 'die Kellner', 'noun', 'Der Kellner bringt das Essen.', 'The waiter brings the food.', 3),
  (l_id, 'die Kellnerin', 'النادلة', 'waitress', 'die', 'die Kellnerinnen', 'noun', 'Die Kellnerin ist freundlich.', 'The waitress is friendly.', 4),
  (l_id, 'die Vorspeise', 'المقبلات', 'starter / appetizer', 'die', 'die Vorspeisen', 'noun', 'Als Vorspeise nehme ich einen Salat.', 'As a starter I''ll have a salad.', 5),
  (l_id, 'die Hauptspeise', 'الطبق الرئيسي', 'main course', 'die', 'die Hauptspeisen', 'noun', 'Die Hauptspeise ist Schnitzel.', 'The main course is schnitzel.', 6),
  (l_id, 'der Nachtisch', 'الحلوى', 'dessert', 'der', 'die Nachtische', 'noun', 'Zum Nachtisch möchte ich Kuchen.', 'For dessert I would like cake.', 7),
  (l_id, 'das Getränk', 'المشروب', 'drink', 'das', 'die Getränke', 'noun', 'Was für Getränke haben Sie?', 'What drinks do you have?', 8),
  (l_id, 'die Rechnung', 'الفاتورة', 'the bill', 'die', 'die Rechnungen', 'noun', 'Die Rechnung, bitte.', 'The bill, please.', 9),
  (l_id, 'das Trinkgeld', 'البقشيش', 'tip', 'das', NULL, 'noun', 'Das Trinkgeld ist im Preis nicht enthalten.', 'The tip is not included in the price.', 10),
  (l_id, 'bestellen', 'يطلب', 'to order', NULL, NULL, 'verb', 'Ich möchte bestellen.', 'I would like to order.', 11),
  (l_id, 'bezahlen', 'يدفع', 'to pay', NULL, NULL, 'verb', 'Ich möchte bezahlen.', 'I would like to pay.', 12),
  (l_id, 'lecker', 'لذيذ', 'delicious', NULL, NULL, 'adjective', 'Das Essen ist lecker.', 'The food is delicious.', 13);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Höfliche Fragen mit "möchten" und "können" (Polite Questions)', 'In German restaurants and shops, use "möchten" (would like) and "können" (can) for polite questions. "Könnten" (could) is even more polite.', '[{"rule":"Ich möchte + noun (I would like... item)","note":"Ich möchte einen Salat."},{"rule":"Ich möchte + infinitive (I would like to... action)","note":"Ich möchte bestellen / bezahlen."},{"rule":"Kann ich + infinitive? (Can I...?)","note":"Kann ich die Speisekarte sehen?"},{"rule":"Hätten Sie + noun? (Would you have...?)","note":"Hätten Sie einen Tisch für zwei?"},{"rule":"Question word + möchten?","note":"Was möchten Sie trinken?"}]', '[{"german":"Ich möchte einen Tisch für zwei Personen, bitte.","arabic":"أريد طاولة لشخصين من فضلك.","english":"I would like a table for two, please."},{"german":"Kann ich die Speisekarte sehen?","arabic":"هل يمكنني رؤية قائمة الطعام؟","english":"Can I see the menu?"},{"german":"Was möchten Sie trinken?","arabic":"ماذا تريد أن تشرب؟","english":"What would you like to drink?"},{"german":"Ich möchte zahlen. Die Rechnung, bitte.","arabic":"أريد أن أدفع. الفاتورة من فضلك.","english":"I would like to pay. The bill, please."}]', '[{"mistake":"Using \"Ich will\" instead of \"Ich möchte\"","correction":"Ich möchte einen Kaffee, not Ich will einen Kaffee","explanation":"\"wollen\" is stronger/more demanding; \"möchten\" is polite."},{"mistake":"Forgetting \"bitte\" in requests","correction":"Always add \"bitte\" at the end of requests","explanation":"\"bitte\" (please) is essential for politeness in German."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you ask for the menu?', '["Ich möchte die Speisekarte","Wo ist das Essen?","Die Rechnung, bitte","Tschüss"]', 'Ich möchte die Speisekarte', 'Use "Ich möchte..." to ask for the menu.', 1, 1),
  (l_id, 'fill_gap', 'Kann ich die ___ (menu) sehen?', '["Speisekarte","Rechnung","Küche","Karte"]', 'Speisekarte', 'Speisekarte = menu.', 1, 2),
  (l_id, 'multiple_choice', 'What do you say to get the bill?', '["Die Speisekarte, bitte","Die Rechnung, bitte","Das Essen, bitte","Das Trinkgeld, bitte"]', 'Die Rechnung, bitte', 'Rechnung = bill.', 1, 3),
  (l_id, 'fill_gap', 'Das Essen ist ___ (delicious).', '["lecker","salzig","süß","sauer"]', 'lecker', 'lecker = delicious.', 1, 4),
  (l_id, 'translation', 'Translate: "A table for two, please."', '[]', 'Einen Tisch für zwei, bitte.', 'Use "für" (for) + number + Personen/people.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Kellner" in English?', '["The cook","The waiter","The bill","The menu"]', 'The waiter', 1, 1),
  (l_id, 'true_false', '"Die Rechnung" means "the bill".', '["True","False"]', 'True', 1, 2),
  (l_id, 'fill_blank', 'Ich möchte ___ (to pay).', '["bezahlen","bestellen","kochen","essen"]', 'bezahlen', 1, 3),
  (l_id, 'multiple_choice', 'Which is the polite way to order?', '["Ich will essen","Ich möchte essen","Ich esse","Ich aß"]', 'Ich möchte essen', 1, 4),
  (l_id, 'fill_blank', '___ (delicious) ist das Essen!', '["Lecker","Salzig","Süß","Bitter"]', 'Lecker', 1, 5);

  -- Lesson 4.3: Test: Einkaufen und Essen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Einkaufen und Essen', 'Test your knowledge of food and restaurant vocabulary.', 'Test', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 15, 3, true)
  returning id into l_id;

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "das Brot" in English?', '["Bread","Butter","Cheese","Meat"]', 'Bread', 2, 1),
  (l_id, 'true_false', '"Möchten" is the polite form of "wollen".', '["True","False"]', 'True', 2, 2),
  (l_id, 'fill_blank', 'Ich möchte ___ (to order).', '["bestellen","bezahlen","bringen","kochen"]', 'bestellen', 2, 3),
  (l_id, 'multiple_choice', 'What is "die Speisekarte"?', '["The bill","The menu","The kitchen","The table"]', 'The menu', 2, 4),
  (l_id, 'true_false', '"Lecker" means "salty".', '["True","False"]', 'False', 2, 5),
  (l_id, 'fill_blank', 'Die ___ (bill), bitte.', '["Rechnung","Karte","Speise","Küche"]', 'Rechnung', 2, 6),
  (l_id, 'multiple_choice', 'Which article is correct for "Milch"?', '["der","die","das"]', 'die', 2, 7),
  (l_id, 'fill_blank', 'Das ___ (vegetables) ist frisch.', '["Gemüse","Fleisch","Brot","Obst"]', 'Gemüse', 2, 8);

  -- Module 5: Arbeit und Beruf
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('18d0ee8e-2642-4e84-b9cd-2e7fc3519b9d', 'A1', 'Arbeit und Beruf', 'Learn vocabulary for jobs, workplaces, and basic professional communication.', '["Name common professions","Talk about your job","Describe workplace activities","Use numbers for phone and email","Schedule appointments"]', 5, 5.0, true)
  returning id into m_id;

  -- Lesson 5.1: Berufe
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Berufe', 'Learn job titles and workplace vocabulary.', 'Professions', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 30, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Arzt', 'الطبيب', 'doctor', 'der', 'die Ärzte', 'noun', 'Der Arzt hilft den Patienten.', 'The doctor helps the patients.', 1),
  (l_id, 'die Ärztin', 'الطبيبة', 'doctor (f)', 'die', 'die Ärztinnen', 'noun', 'Meine Mutter ist Ärztin.', 'My mother is a doctor.', 2),
  (l_id, 'der Lehrer', 'المعلم', 'teacher', 'der', 'die Lehrer', 'noun', 'Der Lehrer erklärt die Grammatik.', 'The teacher explains the grammar.', 3),
  (l_id, 'der Ingenieur', 'المهندس', 'engineer', 'der', 'die Ingenieure', 'noun', 'Er ist Ingenieur bei BMW.', 'He is an engineer at BMW.', 4),
  (l_id, 'der Verkäufer', 'البائع', 'salesperson', 'der', 'die Verkäufer', 'noun', 'Der Verkäufer ist freundlich.', 'The salesperson is friendly.', 5),
  (l_id, 'der Student', 'الطالب', 'student', 'der', 'die Studenten', 'noun', 'Ich bin Student.', 'I am a student.', 6),
  (l_id, 'der Polizist', 'شرطي', 'police officer', 'der', 'die Polizisten', 'noun', 'Der Polizist regelt den Verkehr.', 'The police officer directs traffic.', 7),
  (l_id, 'der Koch', 'الطاهي', 'cook', 'der', 'die Köche', 'noun', 'Der Koch bereitet das Essen zu.', 'The cook prepares the food.', 8),
  (l_id, 'der Fahrer', 'السائق', 'driver', 'der', 'die Fahrer', 'noun', 'Er ist Busfahrer.', 'He is a bus driver.', 9),
  (l_id, 'die Firma', 'الشركة', 'company', 'die', 'die Firmen', 'noun', 'Die Firma ist in Berlin.', 'The company is in Berlin.', 10),
  (l_id, 'das Büro', 'المكتب', 'office', 'das', 'die Büros', 'noun', 'Das Büro ist im dritten Stock.', 'The office is on the third floor.', 11),
  (l_id, 'die Arbeit', 'العمل', 'work', 'die', NULL, 'noun', 'Ich gehe zur Arbeit.', 'I go to work.', 12),
  (l_id, 'der Termin', 'الموعد', 'appointment', 'der', 'die Termine', 'noun', 'Ich habe einen Termin um 10 Uhr.', 'I have an appointment at 10.', 13);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Das Verb "sein" (Irregular: to be)', '"sein" is the most important irregular verb in German. It changes completely in each person: ich bin, du bist, er/sie/es ist, wir sind, ihr seid, sie/Sie sind.', '[{"rule":"ich bin = I am","note":"Ich bin Student."},{"rule":"du bist = you are (informal)","note":"Du bist Lehrerin."},{"rule":"er/sie/es ist = he/she/it is","note":"Er ist Arzt."},{"rule":"wir sind = we are","note":"Wir sind Ingenieure."},{"rule":"ihr seid = you (pl) are","note":"Ihr seid Verkäufer."},{"rule":"sie/Sie sind = they/you (formal) are","note":"Sie sind Polizist."}]', '[{"german":"Ich bin Student.","arabic":"أنا طالب.","english":"I am a student."},{"german":"Du bist Ärztin.","arabic":"أنت طبيبة.","english":"You are a doctor."},{"german":"Er ist Ingenieur.","arabic":"هو مهندس.","english":"He is an engineer."},{"german":"Wir sind in der Firma.","arabic":"نحن في الشركة.","english":"We are at the company."},{"german":"Sind Sie Herr Müller?","arabic":"هل أنت السيد مولر؟","english":"Are you Mr. Müller?"}]', '[{"mistake":"Using \"sein\" instead of conjugated form","correction":"Ich bin, not Ich sein","explanation":"\"sein\" must be conjugated for each person."},{"mistake":"Confusing \"ihr seid\" with \"sie sind\"","correction":"ihr seid = you (pl) are, sie sind = they are","explanation":"ihr (pl informal) takes \"seid\", sie (they) takes \"sind\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Correct: Ich ___ Student.', '["bin","bist","ist","sind"]', 'bin', 'ich = bin.', 1, 1),
  (l_id, 'fill_gap', 'Er ___ Ingenieur.', '["bin","bist","ist","sind"]', 'ist', 'er = ist.', 1, 2),
  (l_id, 'multiple_choice', 'What is "der Arzt" in Arabic?', '["المهندس","المعلم","الطبيب","الطالب"]', 'الطبيب', 'Arzt = doctor.', 1, 3),
  (l_id, 'fill_gap', 'Wir ___ in der Firma.', '["bin","bist","ist","sind"]', 'sind', 'wir = sind.', 1, 4),
  (l_id, 'translation', 'Translate: "What is your profession?"', '[]', 'Was ist Ihr Beruf?', 'Use "Ihr" (formal) or "dein" (informal).', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Lehrer" in English?', '["The doctor","The teacher","The engineer","The student"]', 'The teacher', 1, 1),
  (l_id, 'true_false', '"Die Ärztin" is a female doctor.', '["True","False"]', 'True', 1, 2),
  (l_id, 'fill_blank', 'Ich ___ einen Termin um 10 Uhr.', '["habe","hast","hat","haben"]', 'habe', 1, 3),
  (l_id, 'multiple_choice', 'Correct form of "sein" for "wir"?', '["bin","bist","ist","sind"]', 'sind', 1, 4),
  (l_id, 'fill_blank', '___ (Are you, formal) Sie Herr Müller?', '["Bist","Ist","Seid","Sind"]', 'Sind', 1, 5);

  -- Lesson 5.2: Im Büro
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Im Büro', 'Learn office vocabulary and basic workplace communication.', 'Office', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 30, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Kollege', 'الزميل', 'colleague', 'der', 'die Kollegen', 'noun', 'Mein Kollege heißt Peter.', 'My colleague is called Peter.', 1),
  (l_id, 'die Kollegin', 'الزميلة', 'colleague (f)', 'die', 'die Kolleginnen', 'noun', 'Die Kollegin ist sehr nett.', 'The colleague is very nice.', 2),
  (l_id, 'der Chef', 'المدير', 'boss', 'der', 'die Chefs', 'noun', 'Der Chef ist heute nicht da.', 'The boss is not here today.', 3),
  (l_id, 'die Besprechung', 'الاجتماع', 'meeting', 'die', 'die Besprechungen', 'noun', 'Die Besprechung ist um 14 Uhr.', 'The meeting is at 2 PM.', 4),
  (l_id, 'die Pause', 'الاستراحة', 'break', 'die', 'die Pausen', 'noun', 'Wir machen eine Pause.', 'We take a break.', 5),
  (l_id, 'die Mittagspause', 'استراحة الغداء', 'lunch break', 'die', 'die Mittagspausen', 'noun', 'Die Mittagspause ist von 12 bis 13 Uhr.', 'The lunch break is from 12 to 1 PM.', 6),
  (l_id, 'der Computer', 'الحاسوب', 'computer', 'der', 'die Computer', 'noun', 'Der Computer ist neu.', 'The computer is new.', 7),
  (l_id, 'das Telefon', 'الهاتف', 'telephone', 'das', 'die Telefone', 'noun', 'Das Telefon klingelt.', 'The telephone is ringing.', 8),
  (l_id, 'die E-Mail', 'البريد الإلكتروني', 'email', 'die', 'die E-Mails', 'noun', 'Ich schreibe eine E-Mail.', 'I write an email.', 9),
  (l_id, 'die Aufgabe', 'المهمة', 'task', 'die', 'die Aufgaben', 'noun', 'Ich habe viele Aufgaben.', 'I have many tasks.', 10),
  (l_id, 'anrufen', 'يتصل', 'to call', NULL, NULL, 'verb', 'Ich rufe den Kunden an.', 'I call the customer.', 11),
  (l_id, 'die Gehaltserhöhung', 'زيادة الراتب', 'salary increase', 'die', 'die Gehaltserhöhungen', 'noun', 'Er bekommt eine Gehaltserhöhung.', 'He gets a salary increase.', 12);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Das Verb "haben" (Irregular: to have)', '"haben" is an important irregular verb in German. It is used for possession and also as a helping verb for the perfect tense: ich habe, du hast, er/sie/es hat, wir haben, ihr habt, sie/Sie haben.', '[{"rule":"ich habe = I have","note":"Ich habe einen Termin."},{"rule":"du hast = you have (informal)","note":"Du hast eine Aufgabe."},{"rule":"er/sie/es hat = he/she/it has","note":"Er hat einen Computer."},{"rule":"wir haben = we have","note":"Wir haben eine Besprechung."},{"rule":"ihr habt = you (pl) have","note":"Ihr habt viele Aufgaben."},{"rule":"sie/Sie haben = they/you (formal) have","note":"Sie haben eine Frage."}]', '[{"german":"Ich habe einen Termin um 10 Uhr.","arabic":"لدي موعد في الساعة العاشرة.","english":"I have an appointment at 10."},{"german":"Hast du einen Computer?","arabic":"هل لديك حاسوب؟","english":"Do you have a computer?"},{"german":"Er hat eine neue Arbeit.","arabic":"لديه عمل جديد.","english":"He has a new job."},{"german":"Wir haben heute eine Besprechung.","arabic":"لدينا اجتماع اليوم.","english":"We have a meeting today."}]', '[{"mistake":"Using \"haben\" instead of \"hat\" for er/sie/es","correction":"Er hat, not Er haben","explanation":"er/sie/es takes \"hat\" (irregular)."},{"mistake":"Confusing \"du hast\" with \"er hat\"","correction":"du hast (you have), er hat (he has)","explanation":"du takes -st ending but \"haben\" changes stem to \"ha-\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'Correct: Ich ___ einen Termin.', '["habe","hast","hat","haben"]', 'habe', 'ich = habe.', 1, 1),
  (l_id, 'fill_gap', 'Er ___ einen Computer.', '["habe","hast","hat","haben"]', 'hat', 'er = hat.', 1, 2),
  (l_id, 'multiple_choice', 'What is "die Besprechung" in English?', '["The break","The meeting","The task","The office"]', 'The meeting', 'Besprechung = meeting.', 1, 3),
  (l_id, 'fill_gap', 'Wir ___ eine Pause.', '["habe","hast","hat","haben"]', 'haben', 'wir = haben.', 1, 4),
  (l_id, 'translation', 'Translate: "I have an appointment at 2 PM."', '[]', 'Ich habe einen Termin um 14 Uhr.', 'Use "um" for specific times.', 2, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Kollege" in English?', '["The boss","The colleague","The customer","The secretary"]', 'The colleague', 1, 1),
  (l_id, 'true_false', '"Die Besprechung" means "the meeting".', '["True","False"]', 'True', 1, 2),
  (l_id, 'fill_blank', 'Ich ___ (have) einen Computer.', '["habe","hast","hat","haben"]', 'habe', 1, 3),
  (l_id, 'multiple_choice', 'What is "die Aufgabe"?', '["The office","The task","The break","The meeting"]', 'The task', 1, 4),
  (l_id, 'fill_blank', 'Der Chef ist heute nicht ___ (here).', '["da","hier","dort","weg"]', 'da', 1, 5);

  -- Lesson 5.3: Test: Arbeit und Beruf
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Arbeit und Beruf', 'Test your knowledge of professions and workplace vocabulary.', 'Test', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 15, 3, true)
  returning id into l_id;

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Ingenieur" in English?', '["The teacher","The doctor","The engineer","The student"]', 'The engineer', 2, 1),
  (l_id, 'true_false', '"Die Ärztin" is masculine.', '["True","False"]', 'False', 2, 2),
  (l_id, 'fill_blank', 'Ich ___ (am) Student.', '["bin","bist","ist","sind"]', 'bin', 2, 3),
  (l_id, 'multiple_choice', 'Correct "sein" form for "sie" (they)?', '["bin","bist","ist","sind"]', 'sind', 2, 4),
  (l_id, 'true_false', '"Haben" is a regular verb.', '["True","False"]', 'False', 2, 5),
  (l_id, 'fill_blank', 'Wir ___ einen Termin um 10 Uhr.', '["habe","hast","hat","haben"]', 'haben', 2, 6),
  (l_id, 'multiple_choice', 'What is "die Firma"?', '["The office","The company","The factory","The school"]', 'The company', 2, 7),
  (l_id, 'fill_blank', 'Die ___ (meeting) ist um 14 Uhr.', '["Besprechung","Pause","Arbeit","Aufgabe"]', 'Besprechung', 2, 8);

  -- Module 6: Reisen und Freizeit
  insert into public.course_modules (id, level_id, title, description, objectives, order_index, estimated_hours, is_published)
  values ('d7c244c8-fda5-4828-a7eb-f8a1e7924e92', 'A1', 'Reisen und Freizeit', 'Learn travel vocabulary, transportation, and leisure activities.', '["Book accommodations and transportation","Ask for and give directions","Talk about hobbies and free time","Use the verb \"fahren\" and direction words"]', 6, 5.0, true)
  returning id into m_id;

  -- Lesson 6.1: Reisen
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Reisen', 'Learn travel and transportation vocabulary.', 'Travel', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 30, 1, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'der Zug', 'القطار', 'train', 'der', 'die Züge', 'noun', 'Der Zug kommt um 14 Uhr.', 'The train arrives at 2 PM.', 1),
  (l_id, 'der Bahnhof', 'محطة القطار', 'train station', 'der', 'die Bahnhöfe', 'noun', 'Der Bahnhof ist groß.', 'The train station is big.', 2),
  (l_id, 'das Flugzeug', 'الطائرة', 'airplane', 'das', 'die Flugzeuge', 'noun', 'Das Flugzeug fliegt nach Berlin.', 'The airplane flies to Berlin.', 3),
  (l_id, 'der Flughafen', 'المطار', 'airport', 'der', 'die Flughäfen', 'noun', 'Der Flughafen ist weit weg.', 'The airport is far away.', 4),
  (l_id, 'das Ticket', 'التذكرة', 'ticket', 'das', 'die Tickets', 'noun', 'Ein Ticket nach München, bitte.', 'A ticket to Munich, please.', 5),
  (l_id, 'der Bus', 'الحافلة', 'bus', 'der', 'die Busse', 'noun', 'Der Bus fährt um 8 Uhr ab.', 'The bus departs at 8.', 6),
  (l_id, 'das Hotel', 'الفندق', 'hotel', 'das', 'die Hotels', 'noun', 'Das Hotel hat ein Restaurant.', 'The hotel has a restaurant.', 7),
  (l_id, 'das Zimmer', 'الغرفة', 'room', 'das', 'die Zimmer', 'noun', 'Ich möchte ein Zimmer reservieren.', 'I would like to reserve a room.', 8),
  (l_id, 'der Pass', 'جواز السفر', 'passport', 'der', 'die Pässe', 'noun', 'Ihr Pass, bitte.', 'Your passport, please.', 9),
  (l_id, 'der Koffer', 'الحقيبة', 'suitcase', 'der', 'die Koffer', 'noun', 'Mein Koffer ist schwer.', 'My suitcase is heavy.', 10),
  (l_id, 'die Reise', 'الرحلة', 'trip', 'die', 'die Reisen', 'noun', 'Die Reise war schön.', 'The trip was nice.', 11),
  (l_id, 'die Ferien', 'العطلة', 'vacation', 'die', NULL, 'noun', 'Wir fahren in den Ferien nach Spanien.', 'We go to Spain on vacation.', 12),
  (l_id, 'das Hobby', 'الهواية', 'hobby', 'das', 'die Hobbys', 'noun', 'Mein Hobby ist Lesen.', 'My hobby is reading.', 13),
  (l_id, 'schwimmen', 'يسبح', 'to swim', NULL, NULL, 'verb', 'Ich schwimme im See.', 'I swim in the lake.', 14),
  (l_id, 'wandern', 'يتنزه', 'to hike', NULL, NULL, 'verb', 'Wir wandern im Gebirge.', 'We hike in the mountains.', 15),
  (l_id, 'Fahrrad fahren', 'يركب الدراجة', 'to ride a bike', NULL, NULL, 'verb', 'Ich fahre gern Fahrrad.', 'I like to ride a bike.', 16);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'Trennbare Verben (Separable Prefix Verbs)', 'Many German verbs have prefixes that separate in the present tense. The prefix goes to the end of the sentence. Common prefixes: auf-, ab-, ein-, aus-, mit-, nach-, vor-, zu-.', '[{"rule":"Prefix goes to the end in main clause","note":"Ich stehe um 7 Uhr auf. (aufstehen)"},{"rule":"Prefix stays attached in infinitive","note":"Ich möchte aufstehen."},{"rule":"Common prefix: auf- = up","note":"aufstehen, aufmachen, aufräumen"},{"rule":"Common prefix: ein- = in","note":"einkaufen, einladen, einschlafen"},{"rule":"Common prefix: aus- = out","note":"ausgehen, aussteigen, auspacken"},{"rule":"Common prefix: mit- = with","note":"mitkommen, mitnehmen, mitbringen"}]', '[{"german":"Ich stehe jeden Morgen um 6 Uhr auf.","arabic":"أستيقظ كل صباح في السادسة.","english":"I get up every morning at 6."},{"german":"Wir kaufen am Samstag ein.","arabic":"نحن نتسوق يوم السبت.","english":"We shop on Saturday."},{"german":"Kommst du mit?","arabic":"هل ستأتي مع؟","english":"Are you coming along?"},{"german":"Ich lade dich zur Party ein.","arabic":"أدعوك إلى الحفلة.","english":"I invite you to the party."}]', '[{"mistake":"Keeping prefix attached in main clause","correction":"Ich stehe auf, not Ich aufstehe","explanation":"In main clauses, the prefix separates."},{"mistake":"Putting prefix at the wrong position","correction":"Prefix goes to the very end of the sentence","explanation":"The prefix must be the last element."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'What does "aufstehen" become in "Ich ___ um 7 Uhr ___"?', '["stehe...auf","auf...stehe","steh...auf","aufstehe"]', 'stehe...auf', 'aufstehen separates: ich stehe...auf.', 1, 1),
  (l_id, 'fill_gap', 'Wir kaufen morgen ___ (ein/einkaufen).', '["ein","einkaufen","kauft ein","kaufen ein"]', 'ein', 'einkaufen → wir kaufen...ein.', 1, 2),
  (l_id, 'multiple_choice', 'What is "der Bahnhof"?', '["Airport","Train station","Bus stop","Hotel"]', 'Train station', 'Bahnhof = train station.', 1, 3),
  (l_id, 'translation', 'Translate: "A ticket to Berlin, please."', '[]', 'Ein Ticket nach Berlin, bitte.', 'Use "nach" for cities without article.', 2, 4),
  (l_id, 'fill_gap', 'Ich möchte ein Zimmer ___ (reservieren/reserve).', '["reservieren","reserviere","reserviert"]', 'reservieren', 'möchten + infinitive stays together.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Flughafen" in English?', '["Train station","Airport","Bus station","Harbor"]', 'Airport', 1, 1),
  (l_id, 'true_false', '"Mitkommen" means "to come along".', '["True","False"]', 'True', 1, 2),
  (l_id, 'fill_blank', 'Ich fahre gern ___ (bike).', '["Fahrrad","Auto","Bus","Zug"]', 'Fahrrad', 1, 3),
  (l_id, 'multiple_choice', 'What happens to separable prefixes in main clauses?', '["They stay attached","They go to the end","They disappear","They double"]', 'They go to the end', 1, 4),
  (l_id, 'fill_blank', 'Das Hotel ___ (has) ein Restaurant.', '["hat","haben","hast","habt"]', 'hat', 1, 5);

  -- Lesson 6.2: Hobbys und Freizeit
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Hobbys und Freizeit', 'Learn vocabulary for hobbies, sports, and free time activities.', 'Hobbies', 'vocabulary', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 30, 2, true)
  returning id into l_id;

  insert into public.lesson_vocabulary (lesson_id, german_word, arabic_translation, english_translation, article, plural, part_of_speech, example_sentence, example_translation, order_index) values
  (l_id, 'das Fußball', 'كرة القدم', 'soccer', 'der', NULL, 'noun', 'Fußball ist mein Lieblingssport.', 'Soccer is my favorite sport.', 1),
  (l_id, 'das Tennis', 'التنس', 'tennis', 'das', NULL, 'noun', 'Ich spiele gern Tennis.', 'I like to play tennis.', 2),
  (l_id, 'das Lesen', 'القراءة', 'reading', 'das', NULL, 'noun', 'Lesen ist mein Hobby.', 'Reading is my hobby.', 3),
  (l_id, 'die Musik', 'الموسيقى', 'music', 'die', NULL, 'noun', 'Ich höre gern Musik.', 'I like to listen to music.', 4),
  (l_id, 'der Film', 'الفيلم', 'movie', 'der', 'die Filme', 'noun', 'Der Film ist spannend.', 'The movie is exciting.', 5),
  (l_id, 'das Konzert', 'الحفلة الموسيقية', 'concert', 'das', 'die Konzerte', 'noun', 'Wir gehen ins Konzert.', 'We go to a concert.', 6),
  (l_id, 'das Museum', 'المتحف', 'museum', 'das', 'die Museen', 'noun', 'Das Museum ist am Sonntag geschlossen.', 'The museum is closed on Sunday.', 7),
  (l_id, 'der Park', 'الحديقة', 'park', 'der', 'die Parks', 'noun', 'Wir gehen in den Park.', 'We go to the park.', 8),
  (l_id, 'das Kino', 'السينما', 'cinema', 'das', 'die Kinos', 'noun', 'Lass uns ins Kino gehen!', 'Let''s go to the cinema!', 9),
  (l_id, 'tanzen', 'يرقص', 'to dance', NULL, NULL, 'verb', 'Sie tanzt gern.', 'She likes to dance.', 10),
  (l_id, 'singen', 'يغني', 'to sing', NULL, NULL, 'verb', 'Er singt im Chor.', 'He sings in the choir.', 11),
  (l_id, 'malen', 'يرسم', 'to paint', NULL, NULL, 'verb', 'Ich male gern Bilder.', 'I like to paint pictures.', 12),
  (l_id, 'reisen', 'يسافر', 'to travel', NULL, NULL, 'verb', 'Wir reisen gern.', 'We like to travel.', 13),
  (l_id, 'spielen', 'يلعب', 'to play', NULL, NULL, 'verb', 'Die Kinder spielen im Park.', 'The children play in the park.', 14);

  insert into public.lesson_grammar (lesson_id, title, explanation, rules, examples, common_mistakes, order_index) values
  (l_id, 'gern / gerne + Verb (Liking to do something)', 'Use "gern" (or "gerne") after a verb to say you like doing something. "Ich spiele gern Fußball" = "I like to play soccer." For dislikes, use "nicht gern".', '[{"rule":"Verb + gern = like to do something","note":"Ich spiele gern Tennis. Sie singt gern."},{"rule":"Verb + nicht gern = don''t like to do","note":"Ich tanze nicht gern."},{"rule":"No comma between verb and \"gern\"","note":"Wir reisen gern. (not: Wir reisen, gern)"},{"rule":"\"gern\" and \"gerne\" are the same","note":"Both forms are interchangeable."},{"rule":"For nouns: Ich habe gern + noun","note":"Ich habe gern Musik."}]', '[{"german":"Ich spiele gern Fußball.","arabic":"أحب لعب كرة القدم.","english":"I like to play soccer."},{"german":"Sie liest gern Bücher.","arabic":"هي تحب قراءة الكتب.","english":"She likes to read books."},{"german":"Wir reisen gern im Sommer.","arabic":"نحن نحب السفر في الصيف.","english":"We like to travel in summer."},{"german":"Er hört nicht gern Rockmusik.","arabic":"هو لا يحب الاستماع لموسيقى الروك.","english":"He doesn''t like to listen to rock music."}]', '[{"mistake":"Putting \"gern\" before the verb","correction":"Ich spiele gern, not Ich gern spiele","explanation":"\"gern\" follows the verb, not precedes it."},{"mistake":"Using \"gern haben\" instead of \"gern\" + verb","correction":"Ich lese gern, not Ich habe gern lesen","explanation":"\"gern haben\" means \"to be fond of (someone)\"."}]', 1);

  insert into public.lesson_exercises (lesson_id, exercise_type, question, options, correct_answer, explanation, points, order_index) values
  (l_id, 'multiple_choice', 'How do you say "I like to play soccer"?', '["Ich spiele gern Fußball","Ich gern spiele Fußball","Ich habe gern Fußball","Ich mag Fußball spielen"]', 'Ich spiele gern Fußball', 'Verb + gern = like to do.', 1, 1),
  (l_id, 'fill_gap', 'Sie ___ (reads) gern Bücher.', '["liest","lesen","lest","lese"]', 'liest', 'sie = liest (irregular).', 1, 2),
  (l_id, 'multiple_choice', 'What is "das Kino" in Arabic?', '["المتحف","السينما","الحديقة","المسرح"]', 'السينما', 'Kino = cinema.', 1, 3),
  (l_id, 'translation', 'Translate: "We like to travel in summer."', '[]', 'Wir reisen gern im Sommer.', 'im Sommer = in summer.', 2, 4),
  (l_id, 'fill_gap', 'Er spielt ___ (tennis).', '["Tennis","Fußball","Basketball","Handball"]', 'Tennis', 'Tennis = tennis.', 1, 5);

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Film" in English?', '["The music","The movie","The book","The game"]', 'The movie', 1, 1),
  (l_id, 'true_false', '"Gern" comes before the verb.', '["True","False"]', 'False', 1, 2),
  (l_id, 'fill_blank', 'Ich spiele ___ (soccer) gern.', '["Fußball","Tennis","Handball","Basketball"]', 'Fußball', 1, 3),
  (l_id, 'multiple_choice', 'What does "reisen" mean?', '["To read","To travel","To sing","To paint"]', 'To travel', 1, 4),
  (l_id, 'fill_blank', 'Sie ___ (sings) gern im Chor.', '["singt","singst","singen","singe"]', 'singt', 1, 5);

  -- Lesson 6.3: Test: Reisen und Freizeit
  insert into public.course_lessons (module_id, title, description, topic, lesson_type, objectives, duration_minutes, order_index, is_published)
  values (m_id, 'Test: Reisen und Freizeit', 'Test your knowledge of travel and hobby vocabulary.', 'Test', 'test', '["Learn key vocabulary","Practice grammar structures","Build comprehension skills","Apply in context","Review and reinforce"]', 15, 3, true)
  returning id into l_id;

  insert into public.lesson_test_questions (lesson_id, question_type, question, options, correct_answer, points, order_index) values
  (l_id, 'multiple_choice', 'What is "der Zug" in English?', '["The bus","The train","The car","The plane"]', 'The train', 2, 1),
  (l_id, 'true_false', '"Der Flughafen" means "train station".', '["True","False"]', 'False', 2, 2),
  (l_id, 'fill_blank', 'Ein ___ (ticket) nach Berlin, bitte.', '["Ticket","Pass","Koffer","Zimmer"]', 'Ticket', 2, 3),
  (l_id, 'multiple_choice', 'What does separable prefix "auf-" mean in English?', '["Down","Up","In","Out"]', 'Up', 2, 4),
  (l_id, 'true_false', '"Gern" is placed after the verb.', '["True","False"]', 'True', 2, 5),
  (l_id, 'fill_blank', 'Ich ___ (play) gern Tennis.', '["spiele","spielst","spielt","spielen"]', 'spiele', 2, 6),
  (l_id, 'multiple_choice', 'What is "das Hobby" in Arabic?', '["الهواية","العمل","الموسيقى","الرياضة"]', 'الهواية', 2, 7),
  (l_id, 'fill_blank', 'Wir reisen gern ___ (in) Sommer.', '["im","am","um","in den"]', 'im', 2, 8);

end $$;
